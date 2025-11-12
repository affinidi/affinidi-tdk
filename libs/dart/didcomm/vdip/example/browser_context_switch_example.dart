import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:affinidi_tdk_vdip/affinidi_tdk_vdip.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../../../../tests/integration/dart/test/test_config.dart';

// Run commands below in your terminal to generate keys for Alice and Bob:
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

// Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
// Copy its DID Document URL into example/mediator/mediator_did.txt.

Future<void> main() async {
  // 1. Holder queries Issuer features
  // 2. Issuer replies with features it supports
  // 3. Issuer sends Switch Context message to Holder with a nonce
  // 4. Holder builds a browser context URL with the nonce
  // 5. Holder simulates opening the URL (in a real scenario, this would trigger browser-based verification)
  // 6. Holder sends Request to Issue Credential with the nonce in metadata
  // 7. Issuer validates the nonce and issues the credential
  // 8. Holder receives the credential

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

  final issuerKeyStore = InMemoryKeyStore();
  final issuerWallet = PersistentWallet(issuerKeyStore);

  final issuerDidManager = DidKeyManager(
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

  final issuerSigner = await issuerDidManager.getSigner(
    issuerDidManager.assertionMethod.first,
  );

  final issuerClient = await VdipIssuer.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: issuerDidManager,
    featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: issuerDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  // holder

  final holderKeyStore = InMemoryKeyStore();
  final holderWallet = PersistentWallet(holderKeyStore);

  final holderDidManager = DidKeyManager(
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

  final holderSigner = await holderDidManager.getSigner(
    holderDidManager.assertionMethod.first,
  );

  await Future.wait([
    config.configureAcl(
      mediatorDidDocument: mediatorDidDocument,
      didManager: issuerDidManager,
      theirDids: [holderSigner.did],
    ),
    config.configureAcl(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
      theirDids: [issuerSigner.did],
    ),
  ]);

  final vdipHolderClient = await VdipHolder.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: holderDidManager,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  String? contextNonce;

  vdipHolderClient.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Holder received Feature Disclose Message',
        object: message,
      );

      // Features are disclosed, now waiting for Switch Context message

      await vdipHolderClient.requestCredential(
        issuerDid: issuerSigner.did,
        options: RequestCredentialsOptions(
          proposalId: 'proposal_id_from_oob',
          credentialMeta: CredentialMeta(
            data: {
              'email': 'test@example.com',
              'nonce': contextNonce,
            },
          ),
        ),
      );
    },
    onSwitchContext: (message) async {
      prettyPrint(
        'Holder received Switch Context Message',
        object: message,
      );

      final issuerUrl = await vdipHolderClient.buildBrowserContextUrl(
        switchContextMessage: message,
      );

      prettyPrint(
        'Issuer URL built successfully (VDIP spec step 5)',
        object: issuerUrl,
      );

      // Store the nonce for later use
      contextNonce = message.switchContext.nonce;

      prettyPrint(
        'Simulating browser context switch with nonce',
        object: {'nonce': contextNonce},
      );

      // In a real scenario, this URL would be opened in a browser
      // and the user would complete verification (e.g., KYC, identity proofing)
      // For this example, we simulate the completion of that process

      // After browser context verification is complete, request credential
    },
    onCredentialsIssuanceResponse: (message) async {
      prettyPrint(
        'Holder received Credentials Issuance Response Message',
        object: message,
      );

      await Future<void>.delayed(const Duration(seconds: 2));
      await ConnectionPool.instance.stopConnections();
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
  );

  issuerClient.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Issuer received Feature Query Message',
        object: message,
      );

      await issuerClient.disclose(
        queryMessage: message,
      );
    },
    onRequestToIssueCredential: ({
      required message,
      holderDidFromAssertion,
      isAssertionValid,
    }) async {
      prettyPrint(
        'Issuer received Request to Issue Credential Message',
        object: message,
      );

      /// Decide if holder need to switch context to issue verifiable credential
      await issuerClient.sendSwitchContext(
        holderDid: message.from!,
        baseIssuerUrl: Uri.parse('https://issuer.example.com'),
        nonce: const Uuid().v4(),
        threadId: message.threadId ?? message.id,
      );

      final vdipRequestIssuanceMessageBody =
          VdipRequestIssuanceMessageBody.fromJson(
        message.body!,
      );

      final email = vdipRequestIssuanceMessageBody
          .credentialMeta?.data?['email'] as String?;

      final nonce = vdipRequestIssuanceMessageBody
          .credentialMeta?.data?['nonce'] as String?;

      if (email == null) {
        throw ArgumentError.notNull('body.credentialMeta.data.email');
      }

      if (nonce == null) {
        throw ArgumentError.notNull('body.credentialMeta.data.nonce');
      }

      if (message.from == null) {
        throw ArgumentError.notNull('from');
      }

      // In a real scenario, validate the nonce against the one sent in Switch Context
      // and verify that browser verification was completed successfully

      prettyPrint(
        'Issuer validating nonce from browser context',
        object: {'nonce': nonce},
      );

      // if multiple credential formats are supported, check which one is requested
      // vdipRequestIssuanceMessageBody.credentialFormat
      // we will proceed with W3C Verifiable Credentials Data Model 1.0

      final unsignedCredential = VcDataModelV1(
        context: [
          dmV1ContextUrl,
          'https://d2oeuqaac90cm.cloudfront.net/TTestMusicSubscriptionV1R0.jsonld',
        ],
        credentialSchema: [
          CredentialSchema(
            id: Uri.parse(
              'https://d2oeuqaac90cm.cloudfront.net/TTestMusicSubscriptionV1R0.json',
            ),
            type: 'JsonSchemaValidator2018',
          ),
        ],
        id: Uri.parse(const Uuid().v4()),
        issuer: Issuer.uri(issuerSigner.did),
        type: {'VerifiableCredential', 'TestMusicSubscription'},
        issuanceDate: DateTime.now().toUtc(),
        credentialSubject: [
          CredentialSubject.fromJson({
            'id': message.from!, // holder DID
            'email': email,
            'subscriptionType':
                'premium', // upgraded subscription after verification
            'verified': true, // indicates browser verification was completed
          }),
        ],
      );

      final suite = LdVcDm1Suite();

      final issuedCredential = await suite.issue(
        unsignedData: unsignedCredential,
        proofGenerator: DataIntegrityEcdsaJcsGenerator(
          signer: issuerSigner,
        ),
      );

      await issuerClient.sendIssuedCredentials(
        holderDid: message.from!,
        verifiableCredential: issuedCredential,
      );
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
  );

  await vdipHolderClient.queryIssuerFeatures(
    issuerDid: issuerSigner.did,
    featureQueries: [
      ...FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
        FeatureDiscoveryHelper.vdipIssuerDisclosures,
      ),
      Query(
        featureType: FeatureType.operation.value,
        match: 'registerAgent',
      ),
    ],
  );

  await ConnectionPool.instance.startConnections();
}
