import 'dart:convert';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart'
    hide CredentialFormat;
import 'package:affinidi_tdk_vdip/affinidi_tdk_vdip.dart';
import 'package:affinidi_tdk_vdsp/affinidi_tdk_vdsp.dart';
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../../../../tests/integration/dart/test/test_config.dart';

Future<void> main() async {
  // 1. Holder queries Issuer features
  // 2. Issuer replies with features it supports
  // 3. Holder requests MusicStreaming VC from Issuer
  // 4. Verifier starts VDSP flow
  //    4.1. Verifier queries Holder features
  //    4.2. Holder replies with features it supports
  //    4.3. Verifier requests email VC from Holder
  //    4.4. Holder shares email VC with Verifier
  // 5. Issuer issues MusicStreaming VC and sends it to Holder
  //    - email is taken from shared email VC
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

  await config.configureAcl(
    mediatorDidDocument: mediatorDidDocument,
    didManager: issuerDidManager,
    theirDids: [holderSigner.did],
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
  final vdipHolder = await VdipHolder.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: holderDidManager,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  final vdspHolder = await VdspHolder.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: holderDidManager,
    featureDisclosures: FeatureDiscoveryHelper.vdspHolderDisclosures,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: holderDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
  );

  await vdipHolder.queryIssuerFeatures(
    issuerDid: issuerSigner.did,
    featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
      FeatureDiscoveryHelper.vdipIssuerDisclosures,
    ),
  );

  vdipHolder.listenForIncomingMessages(
    onDiscloseMessage: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      await vdipHolder.requestCredential(
        issuerDid: issuerSigner.did,
        options: const RequestCredentialsOptions(
          proposalId: 'proposal_id_from_oob',
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

  vdspHolder.listenForIncomingMessages(
    onFeatureQuery: (message) async {
      prettyPrint(
        'Holder received Feature Query Message',
        object: message,
      );

      final disclosures = vdspHolder.getDisclosures(
        queryMessage: message,
      );

      await vdspHolder.disclose(
        queryMessage: message,
        disclosures: disclosures,
      );
    },
    onDataRequest: (message) async {
      prettyPrint(
        'Holder received Data Request Message',
        object: message,
      );

      final queryResult = await vdspHolder.filterVerifiableCredentials(
        requestMessage: message,
        verifiableCredentials: holderVerifiableCredentials,
      );

      await vdspHolder.shareData(
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
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
  );

  // verifier

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

  final vdspIssuer = await VdspVerifier.init(
    mediatorDidDocument: mediatorDidDocument,
    didManager: issuerDidManager,
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: issuerDidManager,
    ),
    clientOptions: const AffinidiClientOptions(),
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
        'Issuer received Request to Issue Credentials Message',
        object: message,
      );

      await vdspIssuer.queryHolderFeatures(
        holderDid: (await holderDidManager.getDidDocument()).id,
        featureQueries: FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
          FeatureDiscoveryHelper.vdspHolderDisclosures,
        ),
      );
    },
    onProblemReport: (message) {
      prettyPrint(
        'A problem has occurred',
        object: message,
      );
    },
  );

  vdspIssuer.listenForIncomingMessages(
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

      final expectedFeatures = FeatureDiscoveryHelper.vdspHolderDisclosures;

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

      await vdspIssuer.queryHolderData(
        holderDid: holderDid,
        dcqlQuery: verifierDsql,
        proofContext: VdspQueryDataProofContext(
          challenge: const Uuid().v4(),
          domain: 'test.verifier.com',
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

      if (presentationAndCredentialsAreValid != true) {
        await vdipIssuer.mediatorClient.packAndSendMessage(
          ProblemReportMessage(
            id: const Uuid().v4(),
            to: [message.from!],
            parentThreadId: message.threadId ?? message.id,
            body: ProblemReportBody(
              code: ProblemCode(
                sorter: SorterType.warning,
                scope: Scope(scope: ScopeType.message),
                descriptors: [
                  'vdip',
                  'invalid-presentation-or-credentials',
                ],
              ),
            ),
          ),
        );

        return;
      }

      final email = verifiablePresentation!.verifiableCredential.first
          .credentialSubject.first['email'] as String?;

      if (email == null) {
        await vdipIssuer.mediatorClient.packAndSendMessage(
          ProblemReportMessage(
            id: const Uuid().v4(),
            to: [message.from!],
            parentThreadId: message.threadId ?? message.id,
            body: ProblemReportBody(
              code: ProblemCode(
                sorter: SorterType.warning,
                scope: Scope(scope: ScopeType.message),
                descriptors: [
                  'vdip',
                  'missing-email-claim',
                ],
              ),
            ),
          ),
        );

        return;
      }

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
