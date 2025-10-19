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
import 'test_utils.dart';

Future<void> main() async {
  late String holderEmail;

  late String verifierDomain;
  late String verifierChallenge;

  late MockMediator mockMediator;

  late DidManager verifierDidManager;
  late DidManager holderDidManager;

  late DidSigner holderSigner;

  late List<LdVcDataModelV1> holderVerifiableCredentials;
  late DcqlCredentialQuery verifierDcql;

  group('VDSP Holder and Verifier Clients Unit Tests', () {
    for (final keyType in [
      KeyType.ed25519,
      KeyType.p256,
      KeyType.p384,
      // KeyType.secp256k1, TODO: decide if it is necessary
      // KeyType.p521, not supported by ecdsa
    ]) {
      group(keyType.name, () {
        for (final didMethod in [
          'did:key',
          // 'did:peer',
        ]) {
          group(didMethod, () {
            setUp(() async {
              holderEmail = '${const Uuid().v4()}@test.com';

              verifierChallenge = const Uuid().v4();
              verifierDomain = 'test.verifier.com';

              mockMediator = await MockMediator.init(
                keyType: keyType,
              );

              final issuerDidManager = await createDidManager(
                didMethod: didMethod,
                keyType: keyType,
              );

              final issuerDidDocument = await issuerDidManager.getDidDocument();

              final issuerSigner = await issuerDidManager.getSigner(
                issuerDidDocument.assertionMethod.first.id,
              );

              verifierDidManager = await createDidManager(
                didMethod: didMethod,
                keyType: keyType,
              );

              await mockMediator.addClientForDidManager(verifierDidManager);

              holderDidManager = await createDidManager(
                didMethod: didMethod,
                keyType: keyType,
              );

              await mockMediator.addClientForDidManager(holderDidManager);

              holderSigner = await holderDidManager.getSigner(
                holderDidManager.assertionMethod.first,
              );

              holderVerifiableCredentials = [
                await generateEmailLdVcV1(
                  holderDid: holderSigner.did,
                  holderEmail: holderEmail,
                  issuerSigner: issuerSigner,
                ),
              ];

              verifierDcql = createDataQuery(
                format: CredentialFormat.ldpVc,
                path: ['credentialSubject', 'email'],
              );
            });

            final proofSuits = keyType == KeyType.ed25519
                ? [
                    DataIntegrityProofSuite.eddsa_jcs_2022,
                    // DataIntegrityProofSuite.eddsa_rdfc_2022,
                  ]
                : [
                    DataIntegrityProofSuite.ecdsa_jcs_2019,
                    // DataIntegrityProofSuite.ecdsa_rdfc_2019,
                  ];

            for (final verifiablePresentationProofSuite in proofSuits) {
              group(verifiablePresentationProofSuite.value, () {
                test('VDSP works correctly', () async {
                  final testCompleter = Completer<PlainTextMessage>();

                  final verifierClient = VdspVerifierClient(
                    didManager: verifierDidManager,
                    mediatorClient: mockMediator.clients[verifierDidManager]!,
                  );

                  await verifierClient.queryHolderFeatures(
                    holderDid: (await holderDidManager.getDidDocument()).id,
                    featureQueries:
                        FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
                      FeatureDiscoveryHelper.vdspHolderDisclosures,
                    ),
                  );

                  verifierClient.listenForIncomingMessages(
                    onDiscloseMessage: (message) async {
                      final holderDid = message.from!;
                      final body = DiscloseBody.fromJson(message.body!);

                      final unsupportedFeatureDisclosures =
                          FeatureDiscoveryHelper.getUnsupportedFeatures(
                        expectedFeatureDisclosures:
                            FeatureDiscoveryHelper.vdspHolderDisclosures,
                        actualFeatureDisclosures: body.disclosures,
                      );

                      if (unsupportedFeatureDisclosures.isNotEmpty) {
                        await verifierClient.mediatorClient.packAndSendMessage(
                          createProblemReportMessage(
                            message: message,
                          ),
                        );

                        return;
                      }

                      await verifierClient.queryHolderData(
                        holderDid: holderDid,
                        dcqlQuery: verifierDcql,
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
                      required VerificationResult
                          presentationVerificationResult,
                      required List<VerificationResult>
                          credentialVerificationResults,
                    }) async {
                      final result = presentationAndCredentialsAreValid &&
                          verifiablePresentation?.proof.first.challenge ==
                              verifierChallenge &&
                          verifiablePresentation!.proof.first.domain?.first ==
                              verifierDomain;

                      await verifierClient.sendDataProcessingResult(
                        holderDid: message.from!,
                        result: {
                          'success': result,
                          'email': verifiablePresentation?.verifiableCredential
                              .first.credentialSubject.first['email'],
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
                    featureDisclosures:
                        FeatureDiscoveryHelper.vdspHolderDisclosures,
                  );

                  holderClient.listenForIncomingMessages(
                    onFeatureQuery: (message) async {
                      final disclosures = holderClient.getDisclosures(
                        queryMessage: message,
                      );

                      await holderClient.disclose(
                        queryMessage: message,
                        disclosures: disclosures,
                      );
                    },
                    onDataRequest: (message) async {
                      final queryResult =
                          await holderClient.filterVerifiableCredentials(
                        requestMessage: message,
                        verifiableCredentials: holderVerifiableCredentials,
                      );

                      if (queryResult.dcqlResult?.fulfilled == false) {
                        await holderClient.mediatorClient.packAndSendMessage(
                          createProblemReportMessage(
                            message: message,
                          ),
                        );

                        return;
                      }

                      await holderClient.shareData(
                        requestMessage: message,
                        verifiableCredentials:
                            queryResult.verifiableCredentials,
                        verifiablePresentationSigner: holderSigner,
                        verifiablePresentationProofSuite:
                            verifiablePresentationProofSuite,
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
                  final actualResult =
                      actual.body?['result'] as Map<String, dynamic>?;

                  expect(actual, isA<VdspDataProcessingResultMessage>());
                  expect(actualResult?['email'], holderEmail);
                  expect(actualResult?['success'], isTrue);
                });
              });
            }
          });
        }
      });
    }
  });
}
