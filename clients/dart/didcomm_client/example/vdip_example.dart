import 'dart:convert';

import 'package:affinidi_tdk_didcomm_client/didcomm_client.dart'
    hide CredentialFormat;
import 'package:affinidi_tdk_didcomm_client/src/clients/vdip_holder_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/clients/vdip_issuer_client.dart';
import 'package:affinidi_tdk_didcomm_client/src/common/feature_discovery_helper.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

// Run commands below in your terminal to generate keys for Alice and Bob:
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem
// openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

// Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
// Copy its DID Document URL into example/mediator/mediator_did.txt.

Future<void> main() async {
  // 1. Holder queries Issuer features
  // 2. Issuer replies with features it supports
  // 3. Holder requests MusicStreaming VC from Issuer
  // 4. Issuer starts VDSP flow
  //  4.1. Issuer queries Holder features
  //  4.2. Holder replies with features it supports
  //  4.3. Issuer requests email VC from Holder
  //  4.4. Holder shares email VC with Issuer
  // 5. Issuer issues MusicStreaming VC and sends it to Holder
  // 6. Holder receives MusicStreaming VC

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'didcomm_client',
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

  final verifierDsql = DcqlCredentialQuery(
    credentials: [
      DcqlCredential(
        id: const Uuid().v4(),
        format: CredentialFormat.ldpVc,
        claims: [
          DcqlClaim(
            path: ['credentialSubject', 'email'],
          ),
        ],
      ),
    ],
  );

  // holder
  final vdipHolderClient = await VdipHolderClient.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: holderDidManager,
    featureDisclosures: FeatureDiscoveryHelper.vdspHolderDisclosures,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  final vdspHolderClient = await VdspHolderClient.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: holderDidManager,
    featureDisclosures: [
      ...FeatureDiscoveryHelper.vdspHolderDisclosures,
      Disclosure(
        featureType: FeatureType.operation.value,
        id: 'registerAgent',
      ),
    ],
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
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

  vdipHolderClient.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      await vdipHolderClient.requestCredentials(
        forDid: holderSigner.did,
        fromDid: issuerSigner.did,
        params: RequestCredentialsParams.byProposalIdFor(
          proposalId: 'proposal_id_from_oob',
          holderDid: holderSigner.did,
          didSigner: holderSigner,
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

  vdspHolderClient.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      final disclosures = vdspHolderClient.getDisclosures(
        queryMessage: message,
      );

      await vdspHolderClient.disclose(
        queryMessage: message,
        disclosures: disclosures,
      );
    },
    onDataRequest: (message) async {
      prettyPrint(
        'Holder received Data Request Message',
        object: message,
      );

      final queryResult = await vdspHolderClient.filterVerifiableCredentials(
        requestMessage: message,
        verifiableCredentials: holderVerifiableCredentials,
      );

      await vdspHolderClient.shareData(
        requestMessage: message,
        verifiableCredentials: queryResult.verifiableCredentials,
        verifiablePresentationSigner: holderSigner,
        verifiablePresentationProofSuite:
            DataIntegrityProofSuite.ecdsa_jcs_2019,
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
    mediatorDidDocument: mediatorDidDocument,
    didManager: issuerDidManager,
    featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: issuerDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  final vdspIssuerClient = await VdspVerifierClient.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: issuerDidManager,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: issuerDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  issuerVdipClient.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Issuer received Feature Query Message',
        object: message,
      );

      await issuerVdipClient.disclose(
        queryMessage: message,
      );
    },
    onRequestToIssueCredentials: (message) async {
      prettyPrint(
        'Issuer received Request to Issue Credentials Message',
        object: message,
      );

      await vdspIssuerClient.queryHolderFeatures(
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
        throw UnsupportedError(
          'Unsupported features: ${jsonEncode(unsupportedFeatureDisclosures)}',
        );
      }

      await vdspIssuerClient.queryHolderData(
        holderDid: holderDid,
        dcqlQuery: verifierDsql,
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
