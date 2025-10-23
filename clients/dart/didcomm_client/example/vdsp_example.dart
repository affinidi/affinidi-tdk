import 'dart:convert';

import 'package:affinidi_tdk_didcomm_client/src/clients/vdsp_holder_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/clients/vdsp_verifier_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/common/feature_discovery_helper.dart';
import 'package:affinidi_tdk_didcomm_client/src/models/constants/feature_type.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

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
        id: Uri.parse('claimId:ee3882a6b3058195'),
        issuer: Issuer.uri(issuerSigner.did),
        type: {'VerifiableCredential', 'Email'},
        issuanceDate: DateTime.now().toUtc(),
        credentialSubject: [
          CredentialSubject.fromJson({'email': 'user@test.com'}),
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

  const verifierDsql = {
    'credentials': [
      {
        'id': 'example_ldp_vc',
        'format': 'ldp_vc',
        'claims': [
          {
            'path': ['credentialSubject', 'email']
          },
        ]
      }
    ]
  };

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
        throw UnsupportedError(
          'Unsupported features: ${jsonEncode(unsupportedFeatureDisclosures)}',
        );
      }

      await verifierClient.queryHolderData(
        holderDid: holderDid,
        query: verifierDsql,
        operation: 'registerAgent',
        // TODO: uncomment when Dart SSI is fixed
        // proofContext: VdspQueryDataProofContext(
        //   challenge: const Uuid().v4(),
        //   domain: 'test.verifier.com',
        // ),
      );
    },
    onDataResponse: (
      message,
      presentationAndCredentialsValid,
      verifiablePresentation,
    ) async {
      prettyPrint(
        'Verifier received Data Response Message',
        object: message,
      );

      prettyPrint(
        'VP and VCs are valid',
        object: presentationAndCredentialsValid,
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

      // is trusted verifier
      // if (message.from == verifierDid) {
      await holderClient.disclose(
        queryMessage: message,
      );
      // }
    },
    onDataRequest: (message) async {
      prettyPrint(
        'Holder received Data Request Message',
        object: message,
      );

      final credentialsToShare = await holderClient.filterVerifiableCredentials(
        requestMessage: message,
        verifiableCredentials: holderVerifiableCredentials,
      );

      await holderClient.shareData(
        requestMessage: message,
        verifiableCredentials: credentialsToShare,
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
    },
  );

  await ConnectionPool.instance.startConnections();
}
