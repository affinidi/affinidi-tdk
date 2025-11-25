import 'dart:async';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:affinidi_tdk_vdip/affinidi_tdk_vdip.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'test_config.dart';

Future<void> main() async {
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'vdip',
  );

  final mediatorDid = await readDid(
    config.mediatorDidPath,
  );

  final mediatorDidDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(
    mediatorDid,
  );

  group('VDIP Holder and Issuer Clients Integration Tests', () {
    late String holderEmail;
    late String proposalId;

    late DidKeyManager issuerDidManager;
    late DidKeyManager holderDidManager;

    late DidSigner issuerSigner;
    late DidSigner holderSigner;

    setUp(() async {
      holderEmail = '${const Uuid().v4()}@test.com';
      proposalId = const Uuid().v4();

      issuerDidManager = DidKeyManager(
        wallet: PersistentWallet(InMemoryKeyStore()),
        store: InMemoryDidStore(),
      );

      final issuerKeyId = 'issuer-key-1';

      issuerDidManager.wallet.generateKey(
        keyId: issuerKeyId,
        keyType: KeyType.p256,
      );

      await issuerDidManager.addVerificationMethod(issuerKeyId);

      issuerSigner = await issuerDidManager.getSigner(
        issuerDidManager.assertionMethod.first,
      );

      final holderWallet = PersistentWallet(InMemoryKeyStore());

      holderDidManager = DidKeyManager(
        wallet: holderWallet,
        store: InMemoryDidStore(),
      );

      final holderKeyId = 'holder-key-1';
      holderWallet.generateKey(
        keyId: holderKeyId,
        keyType: KeyType.p256,
      );

      await holderDidManager.addVerificationMethod(holderKeyId);

      holderSigner = await holderDidManager.getSigner(
        holderDidManager.assertionMethod.first,
      );

      await config.configureAcl(
        mediatorDidDocument: mediatorDidDocument,
        didManager: issuerDidManager,
        theirDids: [holderSigner.did],
      );
      await config.configureAcl(
        mediatorDidDocument: mediatorDidDocument,
        didManager: holderDidManager,
        theirDids: [issuerSigner.did],
      );
    });

    test('VDIP works correctly', () async {
      final testCompleter = Completer<PlainTextMessage>();

      final vdspIssuer = await VdipIssuer.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: issuerDidManager,
        featureDisclosures: [
          ...FeatureDiscoveryHelper.vdipIssuerDisclosures,
          Disclosure(
            featureType: FeatureType.credentialFormat.value,
            id: CredentialFormat.w3cV1.value,
          ),
        ],
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: issuerDidManager,
        ),
      );

      vdspIssuer.listenForIncomingMessages(
        onFeatureQuery: (message) async {
          await vdspIssuer.disclose(queryMessage: message);
        },
        onRequestToIssueCredential: ({
          required PlainTextMessage message,
          bool? isAssertionValid,
          String? holderDidFromAssertion,
          String? challenge,
        }) async {
          if (message.from == null) {
            throw ArgumentError.notNull('from');
          }

          final holderDid = message.from!;

          // Create the credential to issue
          final credentialToIssue = VcDataModelV1(
            context: [
              dmV1ContextUrl,
              'https://schema.affinidi.io/TEmailV1R0.jsonld'
            ],
            credentialSchema: [
              CredentialSchema(
                id: Uri.parse('https://schema.affinidi.io/TEmailV1R0.json'),
                type: 'JsonSchemaValidator2018',
              ),
            ],
            id: Uri.parse(const Uuid().v4()),
            issuer: Issuer.uri(issuerSigner.did),
            type: {'VerifiableCredential', 'Email'},
            issuanceDate: DateTime.now().toUtc(),
            credentialSubject: [
              CredentialSubject.fromJson({
                'id': holderDid,
                'email': holderEmail,
              }),
            ],
          );

          // Sign the credential
          final suite = LdVcDm1Suite();
          final issuedCredential = await suite.issue(
            unsignedData: credentialToIssue,
            proofGenerator: DataIntegrityEcdsaJcsGenerator(
              signer: issuerSigner,
            ),
          );

          // Send the issued credential to the holder
          await vdspIssuer.sendIssuedCredentials(
            holderDid: holderDid,
            verifiableCredential: issuedCredential,
            comment: 'Your email credential',
          );
        },
        onProblemReport: (message) async {
          testCompleter.complete(message);
          await ConnectionPool.instance.stopConnections();
        },
      );

      final vdipHolder = await VdipHolder.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: holderDidManager,
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: holderDidManager,
        ),
      );

      vdipHolder.listenForIncomingMessages(
        onCredentialsIssuanceResponse: (message) async {
          testCompleter.complete(message);
          await ConnectionPool.instance.stopConnections();
        },
        onProblemReport: (message) async {
          testCompleter.complete(message);
          await ConnectionPool.instance.stopConnections();
        },
      );

      await ConnectionPool.instance.startConnections();

      // Query issuer features first
      await vdipHolder.queryIssuerFeatures(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
          FeatureDiscoveryHelper.vdipIssuerDisclosures,
        ),
      );

      // Small delay to let feature query complete
      await Future.delayed(const Duration(milliseconds: 500));

      // Request credential issuance
      await vdipHolder.requestCredential(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        options: RequestCredentialsOptions(
          proposalId: proposalId,
          credentialFormat: CredentialFormat.w3cV1,
          credentialMeta: CredentialMeta(
            data: {
              'email': holderEmail,
            },
          ),
        ),
      );

      final actual = await testCompleter.future;

      expect(
        actual,
        isA<VdipIssuedCredentialMessage>(),
      );

      final issuedCredentialMessage = actual as VdipIssuedCredentialMessage;
      final credentialBody =
          VdipIssuedCredentialBody.fromJson(issuedCredentialMessage.body!);

      expect(
        credentialBody.credential,
        isNotNull,
      );

      // Verify the credential structure
      final credential = UniversalParser.parse(credentialBody.credential);

      expect(
        credential.credentialSubject.first['email'],
        holderEmail,
      );

      // Check the issuer DID
      expect(
        credential.issuer.id.toString(),
        contains(issuerSigner.did),
      );
    });

    test('VDIP works correctly with holder-bound assertion', () async {
      final testCompleter = Completer<PlainTextMessage>();

      final vdipIssuer = await VdipIssuer.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: issuerDidManager,
        featureDisclosures: [
          ...FeatureDiscoveryHelper.vdipIssuerDisclosures,
          Disclosure(
            featureType: FeatureType.credentialFormat.value,
            id: CredentialFormat.w3cV1.value,
          ),
        ],
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: issuerDidManager,
        ),
      );

      vdipIssuer.listenForIncomingMessages(
        onFeatureQuery: (message) async {
          await vdipIssuer.disclose(queryMessage: message);
        },
        onRequestToIssueCredential: ({
          required PlainTextMessage message,
          bool? isAssertionValid,
          String? holderDidFromAssertion,
          String? challenge,
        }) async {
          if (message.from == null) {
            throw ArgumentError.notNull('from');
          }

          // Verify the assertion is valid
          expect(isAssertionValid, isTrue);
          expect(holderDidFromAssertion, holderSigner.did);

          final holderDid = holderDidFromAssertion!;

          // Create the credential to issue
          final credentialToIssue = VcDataModelV1(
            context: [
              dmV1ContextUrl,
              'https://schema.affinidi.io/TEmailV1R0.jsonld'
            ],
            credentialSchema: [
              CredentialSchema(
                id: Uri.parse('https://schema.affinidi.io/TEmailV1R0.json'),
                type: 'JsonSchemaValidator2018',
              ),
            ],
            id: Uri.parse(const Uuid().v4()),
            issuer: Issuer.uri(issuerSigner.did),
            type: {'VerifiableCredential', 'Email'},
            issuanceDate: DateTime.now().toUtc(),
            credentialSubject: [
              CredentialSubject.fromJson({
                'id': holderDid,
                'email': holderEmail,
              }),
            ],
          );

          // Sign the credential
          final suite = LdVcDm1Suite();
          final issuedCredential = await suite.issue(
            unsignedData: credentialToIssue,
            proofGenerator: DataIntegrityEcdsaJcsGenerator(
              signer: issuerSigner,
            ),
          );

          // Send the issued credential to the holder
          await vdipIssuer.sendIssuedCredentials(
            holderDid: holderDid,
            verifiableCredential: issuedCredential,
            comment: 'Your email credential with holder-bound assertion',
          );
        },
        onProblemReport: (message) async {
          testCompleter.complete(message);
          await ConnectionPool.instance.stopConnections();
        },
      );

      final vdipHolder = await VdipHolder.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: holderDidManager,
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: holderDidManager,
        ),
      );

      vdipHolder.listenForIncomingMessages(
        onCredentialsIssuanceResponse: (message) async {
          testCompleter.complete(message);
          await ConnectionPool.instance.stopConnections();
        },
        onProblemReport: (message) async {
          testCompleter.complete(message);
          await ConnectionPool.instance.stopConnections();
        },
      );

      await ConnectionPool.instance.startConnections();

      // Query issuer features first
      await vdipHolder.queryIssuerFeatures(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
          FeatureDiscoveryHelper.vdipIssuerDisclosures,
        ),
      );

      // Small delay to let feature query complete
      await Future.delayed(const Duration(milliseconds: 500));

      // Request credential issuance with holder-bound assertion
      await vdipHolder.requestCredentialForHolder(
        holderSigner.did,
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        assertionSigner: holderSigner,
        options: RequestCredentialsOptions(
          proposalId: proposalId,
          credentialFormat: CredentialFormat.w3cV1,
          credentialMeta: CredentialMeta(
            data: {
              'email': holderEmail,
            },
          ),
        ),
      );

      final actual = await testCompleter.future;

      expect(
        actual,
        isA<VdipIssuedCredentialMessage>(),
      );

      final issuedCredentialMessage = actual as VdipIssuedCredentialMessage;
      final credentialBody =
          VdipIssuedCredentialBody.fromJson(issuedCredentialMessage.body!);

      expect(
        credentialBody.credential,
        isNotNull,
      );

      // Verify the credential structure
      final credential = UniversalParser.parse(credentialBody.credential);

      expect(
        credential.credentialSubject.first['email'],
        holderEmail,
      );

      // Check the issuer DID
      expect(
        credential.issuer.id.toString(),
        contains(issuerSigner.did),
      );

      expect(
        credential.credentialSubject.first['id'].toString(),
        holderSigner.did,
      );
    });

    test('VDIP challenge validation works correctly', () async {
      final testCompleter = Completer<String?>();
      final expectedChallenge = const Uuid().v4();

      final vdipIssuer = await VdipIssuer.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: issuerDidManager,
        featureDisclosures: [
          ...FeatureDiscoveryHelper.vdipIssuerDisclosures,
          Disclosure(
            featureType: FeatureType.credentialFormat.value,
            id: CredentialFormat.w3cV1.value,
          ),
        ],
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: issuerDidManager,
        ),
      );

      vdipIssuer.listenForIncomingMessages(
        onFeatureQuery: (message) async {
          await vdipIssuer.disclose(queryMessage: message);
        },
        onRequestToIssueCredential: ({
          required PlainTextMessage message,
          bool? isAssertionValid,
          String? holderDidFromAssertion,
          String? challenge,
        }) async {
          // Complete with the received challenge
          testCompleter.complete(challenge);
          await ConnectionPool.instance.stopConnections();
        },
        onProblemReport: (message) async {
          testCompleter.completeError(message);
          await ConnectionPool.instance.stopConnections();
        },
      );

      final vdipHolder = await VdipHolder.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: holderDidManager,
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: holderDidManager,
        ),
      );

      await ConnectionPool.instance.startConnections();

      // Query issuer features first
      await vdipHolder.queryIssuerFeatures(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
          FeatureDiscoveryHelper.vdipIssuerDisclosures,
        ),
      );

      // Small delay to let feature query complete
      await Future.delayed(const Duration(milliseconds: 500));

      // Request credential with challenge
      await vdipHolder.requestCredential(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        options: RequestCredentialsOptions(
          proposalId: proposalId,
          challenge: expectedChallenge,
          credentialFormat: CredentialFormat.w3cV1,
        ),
      );

      final receivedChallenge = await testCompleter.future;

      // Verify the challenge was properly transmitted
      expect(receivedChallenge, isNotNull);
      expect(receivedChallenge, equals(expectedChallenge));
    });

    test(
        'VDIP challenge validation with holder-bound assertion works correctly',
        () async {
      final testCompleter = Completer<Map<String, dynamic>>();
      final expectedChallenge = const Uuid().v4();

      final vdipIssuer = await VdipIssuer.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: issuerDidManager,
        featureDisclosures: [
          ...FeatureDiscoveryHelper.vdipIssuerDisclosures,
          Disclosure(
            featureType: FeatureType.credentialFormat.value,
            id: CredentialFormat.w3cV1.value,
          ),
        ],
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: issuerDidManager,
        ),
      );

      vdipIssuer.listenForIncomingMessages(
        onFeatureQuery: (message) async {
          await vdipIssuer.disclose(queryMessage: message);
        },
        onRequestToIssueCredential: ({
          required PlainTextMessage message,
          bool? isAssertionValid,
          String? holderDidFromAssertion,
          String? challenge,
        }) async {
          // Complete with both challenge and assertion validation result
          testCompleter.complete({
            'challenge': challenge,
            'isAssertionValid': isAssertionValid,
            'holderDidFromAssertion': holderDidFromAssertion,
          });
          await ConnectionPool.instance.stopConnections();
        },
        onProblemReport: (message) async {
          testCompleter.completeError(message);
          await ConnectionPool.instance.stopConnections();
        },
      );

      final vdipHolder = await VdipHolder.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: holderDidManager,
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: holderDidManager,
        ),
      );

      await ConnectionPool.instance.startConnections();

      // Query issuer features first
      await vdipHolder.queryIssuerFeatures(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
          FeatureDiscoveryHelper.vdipIssuerDisclosures,
        ),
      );

      // Small delay to let feature query complete
      await Future.delayed(const Duration(milliseconds: 500));

      // Request credential with both challenge and assertion
      await vdipHolder.requestCredentialForHolder(
        holderSigner.did,
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        assertionSigner: holderSigner,
        options: RequestCredentialsOptions(
          proposalId: proposalId,
          challenge: expectedChallenge,
          credentialFormat: CredentialFormat.w3cV1,
        ),
      );

      final result = await testCompleter.future;

      // Verify both challenge and assertion were validated
      expect(result['challenge'], equals(expectedChallenge));
      expect(result['isAssertionValid'], isTrue);
      expect(result['holderDidFromAssertion'], equals(holderSigner.did));
    });

    test('VDIP rejects request with mismatched holder DID and assertion signer',
        () async {
      final vdipHolder = await VdipHolder.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: holderDidManager,
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: holderDidManager,
        ),
      );

      // Create a different DID manager to simulate a mismatched signer
      final differentDidManager = DidKeyManager(
        wallet: PersistentWallet(InMemoryKeyStore()),
        store: InMemoryDidStore(),
      );

      final differentKeyId = 'different-key-1';
      differentDidManager.wallet.generateKey(
        keyId: differentKeyId,
        keyType: KeyType.p256,
      );
      await differentDidManager.addVerificationMethod(differentKeyId);
      final differentSigner = await differentDidManager.getSigner(
        differentDidManager.assertionMethod.first,
      );

      final issuerDid = (await issuerDidManager.getDidDocument()).id;

      // Attempt to request credential with mismatched holderDid and assertionSigner
      // This should throw an ArgumentError
      expect(
        () async => await vdipHolder.requestCredentialForHolder(
          holderSigner.did, // Requesting for holderSigner.did
          issuerDid: issuerDid,
          assertionSigner: differentSigner, // But signing with differentSigner
          options: RequestCredentialsOptions(
            proposalId: proposalId,
            credentialFormat: CredentialFormat.w3cV1,
          ),
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('VDIP assertion contains correct claims', () async {
      final testCompleter = Completer<Map<String, dynamic>>();

      final vdipIssuer = await VdipIssuer.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: issuerDidManager,
        featureDisclosures: [
          ...FeatureDiscoveryHelper.vdipIssuerDisclosures,
          Disclosure(
            featureType: FeatureType.credentialFormat.value,
            id: CredentialFormat.w3cV1.value,
          ),
        ],
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: issuerDidManager,
        ),
      );

      vdipIssuer.listenForIncomingMessages(
        onFeatureQuery: (message) async {
          await vdipIssuer.disclose(queryMessage: message);
        },
        onRequestToIssueCredential: ({
          required PlainTextMessage message,
          bool? isAssertionValid,
          String? holderDidFromAssertion,
          String? challenge,
        }) async {
          // Extract and decode the assertion to verify its claims
          final body = VdipRequestIssuanceMessageBody.fromJson(message.body!);

          if (body.assertion != null) {
            final holderDidDocument =
                await UniversalDIDResolver.defaultResolver.resolveDid(
              holderSigner.did,
            );

            final decodedAssertion = JwtHelper.decodeAndVerify(
              serializedJwt: body.assertion!,
              holderDidDocument: holderDidDocument,
            );

            testCompleter.complete({
              'payload': decodedAssertion.payload,
              'isAssertionValid': isAssertionValid,
              'holderDidFromAssertion': holderDidFromAssertion,
            });
          } else {
            testCompleter.completeError('No assertion found');
          }

          await ConnectionPool.instance.stopConnections();
        },
        onProblemReport: (message) async {
          testCompleter.completeError(message);
          await ConnectionPool.instance.stopConnections();
        },
      );

      final vdipHolder = await VdipHolder.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: holderDidManager,
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: holderDidManager,
        ),
      );

      await ConnectionPool.instance.startConnections();

      // Query issuer features first
      await vdipHolder.queryIssuerFeatures(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
          FeatureDiscoveryHelper.vdipIssuerDisclosures,
        ),
      );

      // Small delay to let feature query complete
      await Future.delayed(const Duration(milliseconds: 500));

      // Request credential with holder-bound assertion
      await vdipHolder.requestCredentialForHolder(
        holderSigner.did,
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        assertionSigner: holderSigner,
        options: RequestCredentialsOptions(
          proposalId: proposalId,
          credentialFormat: CredentialFormat.w3cV1,
        ),
      );

      final result = await testCompleter.future;
      final payload = result['payload'] as Map<String, dynamic>;

      // Verify assertion claims
      expect(result['isAssertionValid'], isTrue);
      expect(result['holderDidFromAssertion'], equals(holderSigner.did));

      // Verify JWT payload contains expected fields
      expect(payload['sub'], equals(holderSigner.did)); // Subject is holder DID
      expect(payload['iss'], equals(holderSigner.did)); // Issuer is holder DID
      expect(
          payload['aud'],
          equals((await issuerDidManager.getDidDocument())
              .id)); // Audience is issuer DID
      expect(payload['proposalId'], equals(proposalId)); // Proposal ID matches
      expect(payload['jti'], isNotNull); // Has unique JWT ID
      expect(payload['iat'], isNotNull); // Has issued at time
      expect(payload['exp'], isNotNull); // Has expiration time

      // Verify expiration is in the future
      final exp = payload['exp'] as int;
      final now = (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();
      expect(exp, greaterThan(now));
    });
  });
}
