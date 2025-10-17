import 'dart:async';

import 'package:affinidi_tdk_didcomm_client/didcomm_client.dart'
    hide CredentialFormat;
import 'package:affinidi_tdk_didcomm_client/src/common/feature_discovery_helper.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'mock_mediator.dart';

Future<void> main() async {
  group('VDSP holder and verifier clients Integration Tests', () {
    late String holderEmail;

    late String verifierDomain;
    late String verifierChallenge;

    late MockMediator mockMediator;

    late DidKeyManager verifierDidManager;
    late DidKeyManager holderDidManager;

    late DidSigner holderSigner;

    late List<LdVcDataModelV1> holderVerifiableCredentials;
    late DcqlCredentialQuery verifierDcql;

    setUp(() async {
      holderEmail = '${const Uuid().v4()}@test.com';

      verifierChallenge = const Uuid().v4();
      verifierDomain = 'test.verifier.com';

      mockMediator = await MockMediator.init(
        keyType: KeyType.p256,
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

      verifierDidManager = DidKeyManager(
        wallet: verifierWallet,
        store: InMemoryDidStore(),
      );

      final verifierKeyId = 'verifier-key-1';

      await verifierWallet.generateKey(
        keyId: verifierKeyId,
        keyType: KeyType.p256,
      );

      await verifierDidManager.addVerificationMethod(verifierKeyId);
      await mockMediator.addClientForDidManager(verifierDidManager);

      final holderKeyStore = InMemoryKeyStore();
      final holderWallet = PersistentWallet(holderKeyStore);

      holderDidManager = DidKeyManager(
        wallet: holderWallet,
        store: InMemoryDidStore(),
      );

      final holderKeyId = 'holder-key-1';

      await holderWallet.generateKey(
        keyId: holderKeyId,
        keyType: KeyType.p256,
      );

      await holderDidManager.addVerificationMethod(holderKeyId);
      await mockMediator.addClientForDidManager(holderDidManager);

      holderSigner = await holderDidManager.getSigner(
        holderDidManager.assertionMethod.first,
      );

      holderVerifiableCredentials = await Future.wait(
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
                'email': holderEmail,
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

      verifierDcql = DcqlCredentialQuery(
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
    });

    test('VDSP works correctly', () async {
      final testCompleter = Completer<PlainTextMessage>();

      final verifierClient = VdspVerifierClient(
        didManager: verifierDidManager,
        mediatorClient: mockMediator.clients[verifierDidManager]!,
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
          if (message.from == null) {
            throw ArgumentError.notNull('from');
          }

          final result = presentationAndCredentialsAreValid &&
              verifiablePresentation?.proof.first.challenge ==
                  verifierChallenge &&
              verifiablePresentation!.proof.first.domain?.first ==
                  verifierDomain;

          await verifierClient.sendDataProcessingResult(
            holderDid: message.from!,
            result: {
              'success': result,
              'email': verifiablePresentation
                  ?.verifiableCredential.first.credentialSubject.first['email'],
            },
          );
        },
        onProblemReport: (message) async {
          testCompleter.complete(message);
          await mockMediator.stopConnections();
        },
      );

      final holderClient = VdspHolderClient(
        didManager: holderDidManager,
        mediatorClient: mockMediator.clients[holderDidManager]!,
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

          await holderClient.shareData(
            requestMessage: message,
            verifiableCredentials: queryResult.verifiableCredentials,
            verifiablePresentationSigner: holderSigner,
            verifiablePresentationProofSuite:
                DataIntegrityProofSuite.ecdsa_jcs_2019,
          );
        },
        onDataProcessingResult: (message) async {
          testCompleter.complete(message);
          await mockMediator.stopConnections();
        },
        onProblemReport: (message) async {
          testCompleter.complete(message);
          await mockMediator.stopConnections();
        },
      );

      await mockMediator.startConnections();

      final actual = await testCompleter.future;
      final actualResult = actual.body?['result'] as Map<String, dynamic>?;

      expect(
        actual,
        isA<VdspDataProcessingResultMessage>(),
      );

      expect(
        actualResult?['email'],
        holderEmail,
      );

      expect(
        actualResult?['success'],
        isTrue,
      );
    });
  });
}
