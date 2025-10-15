import 'package:affinidi_tdk_didcomm_client/src/clients/vdsp_holder_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/clients/vdsp_verifier_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/common/feature_discovery_helper.dart';
import 'package:affinidi_tdk_didcomm_client/src/messages/vdsp/vdsp_data_response_message.dart';
import 'package:affinidi_tdk_didcomm_client/src/models/constants/feature_type.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

Future<void> main() async {
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'didcomm_client',
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
    didManager: verifierDidManager,
  );

  final featureQueries = [
    ...FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
      FeatureDiscoveryHelper.defaultFeatureDisclosuresOfHolder,
    ),
    Query(
      featureType: FeatureType.operation.value,
      match: 'registerAgent',
    ),
  ];

  await verifierClient.queryHolderFeatures(
    holderDid: (await holderDidManager.getDidDocument()).id,
    featureQueries: featureQueries,
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
        ...FeatureDiscoveryHelper.defaultFeatureDisclosuresOfHolder,
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
          message: ProblemReportMessage(
            id: const Uuid().v4(),
            to: [message.from!],
            from: verifierClient.mediatorClient.signer.did,
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
        // TODO: uncomment when Dart SSI is fixed
        // proofContext: VdspQueryDataProofContext(
        //   challenge: const Uuid().v4(),
        //   domain: 'test.verifier.com',
        // ),
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

      await verifierClient.sendDataProcessingResult(
        holderDid: message.from!,
        result: {'success': true},
      );
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );

      ConnectionPool.instance.stopConnections();
    },
  );

  // holder

  final holderClient = await VdspHolderClient.init(
    didManager: holderDidManager,
    featureDisclosures: [
      ...FeatureDiscoveryHelper.defaultFeatureDisclosuresOfHolder,
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
          message: ProblemReportMessage(
            id: const Uuid().v4(),
            to: [message.from!],
            from: holderClient.signer.did,
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
      );
    },
    onDataProcessingResult: (message) async {
      prettyPrint(
        'Holder received Data Processing Result Message',
        object: message,
      );

      await ConnectionPool.instance.stopConnections();
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );

      ConnectionPool.instance.stopConnections();
    },
  );

  await ConnectionPool.instance.startConnections();
}
