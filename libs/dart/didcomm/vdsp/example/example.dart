import 'package:affinidi_tdk_mediator_didcomm_client/mediator_didcomm_client.dart'
    hide CredentialFormat;
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';
import 'package:vdsp/vdsp.dart';

import '../../../../../tests/integration/dart/test/test_config.dart';

// Run commands below in your terminal to generate keys for Alice and Bob:
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

// Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
// Copy its DID Document URL into example/mediator/mediator_did.txt.

Future<void> main() async {
  final verifierChallenge = const Uuid().v4();
  final verifierDomain = 'test.verifier.com';

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'vdsp',
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

  final issuerKeyPair = await issuerWallet.generateKey();

  final issuerDidManager = DidKeyManager(
    wallet: issuerWallet,
    store: InMemoryDidStore(),
  );

  await issuerDidManager.addVerificationMethod(issuerKeyPair.id);

  final issuerDidDocument = await issuerDidManager.getDidDocument();
  final issuerSigner = await issuerDidManager.getSigner(
    issuerDidDocument.assertionMethod.first.id,
  );

  final verifierKeyStore = InMemoryKeyStore();
  final verifierWallet = PersistentWallet(verifierKeyStore);

  final verifierDidManager = DidKeyManager(
    wallet: verifierWallet,
    store: InMemoryDidStore(),
  );

  final verifierKeyId = 'verifier-key-1';

  final verifierPrivateKeyBytes = await extractPrivateKeyBytes(
    config.alicePrivateKeyPath,
  );

  await verifierKeyStore.set(
    verifierKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: verifierPrivateKeyBytes,
    ),
  );

  await verifierDidManager.addVerificationMethod(verifierKeyId);

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
      didManager: verifierDidManager,
      theirDids: [holderSigner.did],
    ),
    config.configureAcl(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
      theirDids: [(await issuerDidManager.getDidDocument()).id],
    ),
  ]);

  final holderVerifiableCredentials = await Future.wait(
    [
      VcDataModelV1(
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
            'id': holderSigner.did,
            'email': 'user@test.com',
          }),
        ],
      ),
    ].map(
      (unsignedCredential) async {
        final suite = LdVcDm1Suite();
        final issuedCredential = await suite.issue(
          unsignedData: unsignedCredential,
          proofGenerator: DataIntegrityEcdsaJcsGenerator(
            signer: issuerSigner,
          ),
        );

        return issuedCredential;
      },
    ),
  );

  final verifierDcql = DcqlCredentialQuery(
    credentials: [
      DcqlCredential(
        id: const Uuid().v4(),
        format: CredentialFormat.ldpVc,
        claims: [
          DcqlClaim(
            path: [
              'credentialSubject',
              'email',
            ],
          ),
        ],
      ),
    ],
  );

  // verifier

  final verifierClient = await VdspVerifierClient.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: verifierDidManager,
    clientOptions: const AffinidiClientOptions(),
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: verifierDidManager,
    ),
  );

  await verifierClient.queryHolderFeatures(
    holderDid: (await holderDidManager.getDidDocument()).id,
    featureQueries: [
      ...FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
        FeatureDiscoveryHelper.vdspHolderDisclosures,
      ),
      Query(
        featureType: FeatureType.operation.value,
        match: 'registerAgent',
      ),
    ],
  );

  verifierClient.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Verifier received Disclose Message',
        object: message,
      );

      if (message.from == null) {
        throw ArgumentError.notNull('from');
      }

      if (message.body == null) {
        throw ArgumentError.notNull('body');
      }

      final holderDid = message.from!;
      final body = DiscloseBody.fromJson(message.body!);

      final expectedFeatures = [
        ...FeatureDiscoveryHelper.vdspHolderDisclosures,
        Disclosure(
          featureType: FeatureType.operation.value,
          id: 'registerAgent',
        ),
      ];

      final unsupportedFeatureDisclosures =
          FeatureDiscoveryHelper.getUnsupportedFeatures(
        expectedFeatureDisclosures: expectedFeatures,
        actualFeatureDisclosures: body.disclosures,
      );

      if (unsupportedFeatureDisclosures.isNotEmpty) {
        await verifierClient.mediatorClient.packAndSendMessage(
          ProblemReportMessage(
            id: const Uuid().v4(),
            to: [message.from!],
            parentThreadId: message.threadId ?? message.id,
            body: ProblemReportBody(
              code: ProblemCode(
                sorter: SorterType.warning,
                scope: Scope(scope: ScopeType.message),
                descriptors: [
                  'vdsp',
                  'features-not-supported',
                ],
              ),
            ),
          ),
        );

        return;
      }

      await verifierClient.queryHolderData(
        holderDid: holderDid,
        dcqlQuery: verifierDcql,
        operation: 'registerAgent',
        proofContext: VdspQueryDataProofContext(
          challenge: verifierChallenge,
          domain: verifierDomain,
        ),
      );
    },
    onDataResponse: ({
      required VdspDataResponseMessage message,
      required bool presentationAndCredentialsAreValid,
      VerifiablePresentation? verifiablePresentation,
      required VerificationResult presentationVerificationResult,
      required List<VerificationResult> credentialVerificationResults,
    }) async {
      prettyPrint(
        'Verifier received Data Response Message',
        object: message,
      );

      prettyPrint(
        'VP and VCs are valid',
        object: presentationAndCredentialsAreValid,
      );

      prettyPrint(
        'Verifiable Presentation',
        object: verifiablePresentation,
      );

      if (message.from == null) {
        throw ArgumentError.notNull('from');
      }

      // domain and challenge check to prevent replay attacks
      final result = presentationAndCredentialsAreValid &&
          verifiablePresentation?.proof.first.challenge == verifierChallenge &&
          verifiablePresentation!.proof.first.domain?.first == verifierDomain;

      await verifierClient.sendDataProcessingResult(
        holderDid: message.from!,
        result: {'success': result},
      );
    },
    onProblemReport: (message) async {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );

      await ConnectionPool.instance.stopConnections();
    },
  );

  // holder

  final holderClient = await VdspHolderClient.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: holderDidManager,
    clientOptions: const AffinidiClientOptions(),
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
    ),
    featureDisclosures: [
      ...FeatureDiscoveryHelper.vdspHolderDisclosures,
      Disclosure(
        featureType: FeatureType.operation.value,
        id: 'registerAgent',
      ),
    ],
  );

  holderClient.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      // here you can check if this is a trusted verifier
      // e.g. by checking the `message.from` value

      final disclosures = holderClient.getDisclosures(
        queryMessage: message,
      );

      // here you can check if those are the right disclosures to share

      await holderClient.disclose(
        queryMessage: message,
        disclosures: disclosures,
      );
    },
    onDataRequest: (message) async {
      prettyPrint(
        'Holder received Data Request Message',
        object: message,
      );

      final queryResult = await holderClient.filterVerifiableCredentials(
        requestMessage: message,
        verifiableCredentials: holderVerifiableCredentials,
      );

      if (queryResult.dcqlResult?.fulfilled == false) {
        if (message.from == null) {
          throw ArgumentError.notNull('message.from');
        }

        await holderClient.mediatorClient.packAndSendMessage(
          ProblemReportMessage(
            id: const Uuid().v4(),
            to: [message.from!],
            parentThreadId: message.threadId ?? message.id,
            body: ProblemReportBody(
              code: ProblemCode(
                sorter: SorterType.warning,
                scope: Scope(scope: ScopeType.message),
                descriptors: [
                  'vdsp',
                  'data-not-found',
                ],
              ),
            ),
          ),
        );

        return;
      }

      // the app can decide which credentials to share
      // e.g. based on the operation requested
      // here we share all the filtered credentials

      await holderClient.shareData(
        requestMessage: message,
        verifiableCredentials: queryResult.verifiableCredentials,
        verifiablePresentationSigner: holderSigner,
        verifiablePresentationProofSuite: DataIntegrityProofSuite.ecdsaJcs2019,
      );
    },
    onDataProcessingResult: (message) async {
      prettyPrint(
        'Holder received Data Processing Result Message',
        object: message,
      );

      await ConnectionPool.instance.stopConnections();
    },
    onProblemReport: (message) async {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );

      await ConnectionPool.instance.stopConnections();
    },
  );

  await ConnectionPool.instance.startConnections();
}
