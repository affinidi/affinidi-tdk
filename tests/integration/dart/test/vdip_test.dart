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
      final expectedChallenge = const Uuid().v4();

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
          AssertionValidationResult? assertionValidationResult,
          String? holderDidFromAssertion,
          String? challenge,
        }) async {
          if (message.from == null) {
            throw ArgumentError.notNull('from');
          }

          // Verify challenge was properly transmitted
          expect(challenge, isNotNull);
          expect(challenge, equals(expectedChallenge));

          // Verify assertion validation is null for non-holder-bound requests
          expect(assertionValidationResult, isNull);
          expect(holderDidFromAssertion, isNull);

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

      // Request credential issuance with challenge
      await vdipHolder.requestCredential(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        options: RequestCredentialsOptions(
          proposalId: proposalId,
          challenge: expectedChallenge,
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
          AssertionValidationResult? assertionValidationResult,
          String? holderDidFromAssertion,
          String? challenge,
        }) async {
          if (message.from == null) {
            throw ArgumentError.notNull('from');
          }

          // Verify the assertion is valid
          expect(assertionValidationResult?.isValid, isTrue);
          expect(holderDidFromAssertion, holderSigner.did);

          // Verify challenge was properly transmitted with assertion
          expect(challenge, isNotNull);
          expect(challenge, equals(expectedChallenge));

          // Verify that holderDid in message body matches holderDidFromAssertion
          final body = VdipRequestIssuanceMessageBody.fromJson(message.body!);
          expect(body.holderDid, equals(holderDidFromAssertion));

          // Verify assertion JWT claims
          if (body.assertion != null) {
            final holderDidDocument =
                await UniversalDIDResolver.defaultResolver.resolveDid(
              holderSigner.did,
            );

            final decodedAssertion = JwtHelper.decodeAndVerify(
              serializedJwt: body.assertion!,
              holderDidDocument: holderDidDocument,
            );

            final payload = decodedAssertion.payload;

            // Verify JWT payload contains expected fields
            expect(payload['sub'],
                equals(holderSigner.did)); // Subject is holder DID
            expect(payload['iss'],
                equals(holderSigner.did)); // Issuer is holder DID
            expect(
                payload['aud'],
                equals((await issuerDidManager.getDidDocument())
                    .id)); // Audience is issuer DID
            expect(payload['proposalId'],
                equals(proposalId)); // Proposal ID matches
            expect(payload['jti'], isNotNull); // Has unique JWT ID
            expect(payload['iat'], isNotNull); // Has issued at time
            expect(payload['exp'], isNotNull); // Has expiration time

            // Verify expiration is in the future
            final exp = payload['exp'] as int;
            final now =
                (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();
            expect(exp, greaterThan(now));
          }

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

      // Verify that requesting with mismatched holder DID and assertion signer throws
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

      expect(
        () async => await vdipHolder.requestCredentialForHolder(
          holderSigner.did, // Requesting for holderSigner.did
          issuerDid: (await issuerDidManager.getDidDocument()).id,
          assertionSigner: differentSigner, // But signing with differentSigner
          options: RequestCredentialsOptions(
            proposalId: proposalId,
            credentialFormat: CredentialFormat.w3cV1,
          ),
        ),
        throwsA(isA<ArgumentError>()),
      );

      // Request credential issuance with holder-bound assertion and challenge
      await vdipHolder.requestCredentialForHolder(
        holderSigner.did,
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        assertionSigner: holderSigner,
        options: RequestCredentialsOptions(
          proposalId: proposalId,
          challenge: expectedChallenge,
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
  });
}
