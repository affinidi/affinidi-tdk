import 'package:affinidi_tdk_mediator_didcomm_client/affinidi_tdk_mediator_didcomm_client.dart';
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
  // 1. Holder users the same DID for messaging and VCs
  // 2. Holder queries Issuer features
  // 3. Issuer replies with features it supports
  // 4. Holder requests MusicStreaming VC from Issuer
  //    - email is set in the message metadata
  // 5. Issuer issues MusicStreaming VC and sends it to Holder.
  //    - email is taken from the message metadata, which was priorly set by Holder
  //    - DID is taken from the "from" field of the request message
  // 6. Holder receives MusicStreaming VC

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

  final vdipIssuer = await VdipIssuer.init(
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

  final vdipHolder = await VdipHolder.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: holderDidManager,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  await vdipHolder.queryIssuerFeatures(
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

  vdipHolder.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      // TODO: verify disclosed features
      // TODO: add mapping from header to propousalId

      await vdipHolder.requestCredential(
        issuerDid: issuerSigner.did,
        options: RequestCredentialsOptions(
          proposalId: 'proposal_id_from_oob',
          credentialMeta: CredentialMeta(data: {'email': 'test@example.com'}),
        ),
      );
    },
    onCredentialsIssuanceResponse: (message) async {
      prettyPrint(
        'Holder received Credentials Issuance Response Message',
        object: message,
      );

      await ConnectionPool.instance.stopConnections();
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
  );

  vdipIssuer.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Issuer received Feature Query Message',
        object: message,
      );

      await vdipIssuer.disclose(
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

      final vdipRequestIssuanceMessageBody =
          VdipRequestIssuanceMessageBody.fromJson(
        message.body!,
      );

      final email = vdipRequestIssuanceMessageBody
          .credentialMeta?.data?['email'] as String?;

      if (email == null) {
        throw ArgumentError.notNull('body.credentialMeta.data.email');
      }

      if (message.from == null) {
        throw ArgumentError.notNull('from');
      }

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
            'subscriptionType': 'basic',
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

      await vdipIssuer.sendIssuedCredentials(
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

  await ConnectionPool.instance.startConnections();
}
