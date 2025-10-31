import 'dart:async';

import 'package:affinidi_tdk_mediator_didcomm_client/mediator_didcomm_client.dart';
import 'package:affinidi_tdk_vdip_didcomm_client/vdip_didcomm_client.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'test_config.dart';

Future<void> main() async {
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'vdip_client',
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

      final issuerKeyStore = InMemoryKeyStore();
      final issuerWallet = PersistentWallet(issuerKeyStore);

      issuerDidManager = DidKeyManager(
        wallet: issuerWallet,
        store: InMemoryDidStore(),
      );

      final issuerKeyId = 'issuer-key-1';

      final issuerPrivateKeyBytes = await extractPrivateKeyBytes(
        config.alicePrivateKeyPath,
      );

      await issuerKeyStore.set(
        issuerKeyId,
        StoredKey(
          keyType: KeyType.p256,
          privateKeyBytes: issuerPrivateKeyBytes,
        ),
      );

      await issuerDidManager.addVerificationMethod(issuerKeyId);

      issuerSigner = await issuerDidManager.getSigner(
        issuerDidManager.assertionMethod.first,
      );

      final holderKeyStore = InMemoryKeyStore();
      final holderWallet = PersistentWallet(holderKeyStore);

      holderDidManager = DidKeyManager(
        wallet: holderWallet,
        store: InMemoryDidStore(),
      );

      final holderKeyId = 'holder-key-1';

      final holderPrivateKeyBytes = await extractPrivateKeyBytes(
        config.bobPrivateKeyPath,
      );

      await holderKeyStore.set(
        holderKeyId,
        StoredKey(
          keyType: KeyType.p256,
          privateKeyBytes: holderPrivateKeyBytes,
        ),
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
    });

    test('VDIP works correctly', () async {
      final testCompleter = Completer<PlainTextMessage>();

      final issuerClient = await VdipIssuerClient.init(
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

      issuerClient.listenForIncomingMessages(
        onFeatureQuery: (message) async {
          await issuerClient.disclose(queryMessage: message);
        },
        onRequestToIssueCredential: ({
          required PlainTextMessage message,
          bool? isAssertionValid,
          String? holderDidFromAssertion,
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
          await issuerClient.sendIssuedCredentials(
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

      final holderClient = await VdipHolderClient.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: holderDidManager,
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: holderDidManager,
        ),
      );

      holderClient.listenForIncomingMessages(
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
      await holderClient.queryIssuerFeatures(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
          FeatureDiscoveryHelper.vdipIssuerDisclosures,
        ),
      );

      // Small delay to let feature query complete
      await Future.delayed(const Duration(milliseconds: 500));

      // Request credential issuance
      await holderClient.requestCredential(
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

      final issuerClient = await VdipIssuerClient.init(
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

      issuerClient.listenForIncomingMessages(
        onFeatureQuery: (message) async {
          await issuerClient.disclose(queryMessage: message);
        },
        onRequestToIssueCredential: ({
          required PlainTextMessage message,
          bool? isAssertionValid,
          String? holderDidFromAssertion,
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
          await issuerClient.sendIssuedCredentials(
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

      final holderClient = await VdipHolderClient.init(
        mediatorDidDocument: mediatorDidDocument,
        didManager: holderDidManager,
        clientOptions: const AffinidiClientOptions(),
        authorizationProvider: await AffinidiAuthorizationProvider.init(
          mediatorDidDocument: mediatorDidDocument,
          didManager: holderDidManager,
        ),
      );

      holderClient.listenForIncomingMessages(
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
      await holderClient.queryIssuerFeatures(
        issuerDid: (await issuerDidManager.getDidDocument()).id,
        featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
          FeatureDiscoveryHelper.vdipIssuerDisclosures,
        ),
      );

      // Small delay to let feature query complete
      await Future.delayed(const Duration(milliseconds: 500));

      // Request credential issuance with holder-bound assertion
      await holderClient.requestCredentialForHolder(
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
  });
}
