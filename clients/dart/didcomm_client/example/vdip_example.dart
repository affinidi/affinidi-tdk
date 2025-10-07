import 'dart:convert';

import 'package:affinidi_tdk_didcomm_client/src/clients/vdip_holder_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/clients/vdip_issuer_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/clients/vdsp_holder_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/clients/vdsp_verifier_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/common/feature_discovery_helper.dart';
import 'package:affinidi_tdk_didcomm_client/src/models/constants/feature_type.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

Future<void> main() async {
  // 1. Holder queries Issuer features
  // 2. Issuer replies with features it supports
  // 3. Holder requests MusicStreaming VC from Issuer
  // 4. Verifier starts VDSP flow
  //  4.1. Verifier queries Holder features
  //  4.2. Holder replies with features it supports
  //  4.3. Verifier requests email VC from Holder
  //  4.4. Holder shares email VC with Verifier
  // 5. Issuer issues MusicStreaming VC and sends it to Holder
  // 6. Holder receives MusicStreaming VC

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'didcomm_client',
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

  final featureQueries = [
    // TODO: add vdip features
    ...FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
      FeatureDiscoveryHelper.defaultFeatureDisclosuresOfHolder,
    ),
    Query(
      featureType: FeatureType.operation.value,
      match: 'registerAgent',
    ),
  ];

  // holder
  final vdipHolderClient = await VdipHolderClient.init(
    didManager: holderDidManager,
  );

  final vdspHolderClient = await VdspHolderClient.init(
    didManager: holderDidManager,
    featureDisclosures: [
      ...FeatureDiscoveryHelper.defaultFeatureDisclosuresOfHolder,
      Disclosure(
        featureType: FeatureType.operation.value,
        id: 'registerAgent',
      ),
    ],
  );

  await vdipHolderClient.queryIssuerFeatures(
    issuerDid: issuerSigner.did,
    featureQueries: featureQueries,
  );

  vdipHolderClient.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      await vdipHolderClient.requestCredentials(
        issuerDid: issuerSigner.did,
        credentialFormat: '',
        credentialTypes: [],
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

  vdspHolderClient.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      await vdspHolderClient.disclose(
        queryMessage: message,
      );
    },
    onDataRequest: (message) async {
      prettyPrint(
        'Holder received Data Request Message',
        object: message,
      );

      final credentialsToShare =
          await vdspHolderClient.filterVerifiableCredentials(
        requestMessage: message,
        verifiableCredentials: holderVerifiableCredentials,
      );

      await vdspHolderClient.shareData(
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

  // verifier

  final issuerVdipClient = await VdipIssuerClient.init(
    didManager: issuerDidManager,
  );

  final vdspIssuerClient = await VdspVerifierClient.init(
    didManager: issuerDidManager,
  );

  issuerVdipClient.listenForIncomingMessages(
    onFeatureQuery: (message) {
      prettyPrint(
        'Issuer received Feature Query Message',
        object: message,
      );
    },
    onRequestToIssueCredentials: (message) async {
      prettyPrint(
        'Issuer received Request to Issue Credentials Message',
        object: message,
      );

      await vdspIssuerClient.queryHolderFeatures(
        holderDid: (await holderDidManager.getDidDocument()).id,
        featureQueries: featureQueries,
      );
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
  );

  vdspIssuerClient.listenForIncomingMessages(
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

      await vdspIssuerClient.queryHolderData(
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

      final issuedCredentials = <ParsedVerifiableCredential>[];

      await issuerVdipClient.sendIssuedCredentials(
        holderDid: message.from!,
        verifiableCredentials: issuedCredentials,
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
