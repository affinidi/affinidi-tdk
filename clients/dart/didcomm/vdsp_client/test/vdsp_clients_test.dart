import 'dart:async';
import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart'
    hide CredentialFormat;
import 'package:affinidi_tdk_vdsp_didcomm_client/vdsp_didcomm_client.dart';
import 'package:dcql/dcql.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'mock_mediator.dart';
import 'test_utils.dart';

Future<void> main() async {
  const holderEmail = 'user@test.com';
  const verifierDomain = 'test.verifier.com';
  const verifierChallenge = 'c823f1a6-3af6-4cb7-b06a-e1122eb274be';
  const comment = 'Requesting email credential';
  const operation = 'apply-for-service';

  late MockMediator mockMediator;

  late DidManager verifierDidManager;
  late DidManager holderDidManager;

  late DidSigner holderSigner;

  late List<LdVcDataModelV1> holderVerifiableCredentials;
  late DcqlCredentialQuery verifierDcql;

  late DidDocument verifierDidDocument;
  late DidDocument holderDidDocument;

  setUp(() async {
    verifierDidManager = await createDidManager(
      didMethod: 'did:key',
      keyType: KeyType.p256,
    );

    holderDidManager = await createDidManager(
      didMethod: 'did:key',
      keyType: KeyType.p256,
    );

    mockMediator = await MockMediator.init(
      keyType: KeyType.p256,
    );

    await mockMediator.addClientForDidManager(verifierDidManager);
    await mockMediator.addClientForDidManager(holderDidManager);

    verifierDidDocument = await verifierDidManager.getDidDocument();
    holderDidDocument = await holderDidManager.getDidDocument();

    holderSigner = await holderDidManager.getSigner(
      holderDidManager.authentication.first,
    );

    final issuerDidManager = await createDidManager(
      didMethod: 'did:key',
      keyType: KeyType.p256,
    );

    final issuerDidDocument = await issuerDidManager.getDidDocument();

    final issuerSigner = await issuerDidManager.getSigner(
      issuerDidDocument.assertionMethod.first.id,
    );

    holderVerifiableCredentials = [
      await generateEmailLdVcV1(
        holderDid: holderSigner.did,
        holderEmail: holderEmail,
        issuerSigner: issuerSigner,
      ),
    ];
  });

  group('VDSP Holder and Verifier Clients Unit Tests', () {
    for (final keyType in [
      KeyType.ed25519,
      KeyType.p256,
      KeyType.p384,
      // KeyType.secp256k1,
      // KeyType.p521, not supported by ecdsa
    ]) {
      group(keyType.name, () {
        for (final didMethod in [
          'did:key',
          'did:peer',
        ]) {
          group(didMethod, () {
            setUp(() async {
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
                for (final verifiablePresentationDataModel in [
                  VerifiableCredentialsDataModel.v1,
                  VerifiableCredentialsDataModel.v2,
                ]) {
                  group('data model ${verifiablePresentationDataModel.name}',
                      () {
                    test('VDSP works correctly', () async {
                      final testCompleter = Completer<PlainTextMessage>();

                      final verifierClient = VdspVerifierClient(
                        didManager: verifierDidManager,
                        mediatorClient:
                            mockMediator.clients[verifierDidManager]!,
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
                            testCompleter.completeError(
                              Exception(
                                'Holder disclosed unsupported features: $unsupportedFeatureDisclosures',
                              ),
                            );

                            return;
                          }

                          await verifierClient.queryHolderData(
                            holderDid: holderDid,
                            dcqlQuery: verifierDcql,
                            comment: comment,
                            operation: operation,
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
                              verifiablePresentation!
                                      .proof.first.domain?.first ==
                                  verifierDomain;

                          final body = VdspDataResponseBody.fromJson(
                            message.body!,
                          );

                          if (body.comment != comment) {
                            testCompleter.completeError(Exception(
                              'Comment does not match',
                            ));

                            return;
                          }

                          await verifierClient.sendDataProcessingResult(
                            holderDid: message.from!,
                            operation: body.operation,
                            result: {
                              'success': result,
                              'email': verifiablePresentation
                                  ?.verifiableCredential
                                  .first
                                  .credentialSubject
                                  .first['email'],
                            },
                          );
                        },
                        onProblemReport: (message) async {
                          testCompleter.completeError(message);
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
                            testCompleter.completeError(Exception(
                              'Holder cannot fulfill the data request',
                            ));

                            return;
                          }

                          final body = VdspQueryDataBody.fromJson(
                            message.body!,
                          );

                          await holderClient.shareData(
                            verifiablePresentationDataModel:
                                verifiablePresentationDataModel,
                            requestMessage: message,
                            verifiableCredentials:
                                queryResult.verifiableCredentials,
                            verifiablePresentationSigner: holderSigner,
                            verifiablePresentationProofSuite:
                                verifiablePresentationProofSuite,
                            comment: body.comment,
                            operation: body.operation,
                          );
                        },
                        onDataProcessingResult: (message) async {
                          final body = VdspDataProcessingResultBody.fromJson(
                            message.body!,
                          );

                          if (body.operation != operation) {
                            testCompleter.completeError(
                              Exception(
                                'Operation does not match',
                              ),
                            );

                            return;
                          }

                          testCompleter.complete(message);
                          await mockMediator.stopConnections();
                        },
                        onProblemReport: (message) async {
                          testCompleter.complete(message);
                          await mockMediator.stopConnections();
                        },
                      );

                      await mockMediator.startConnections();

                      await verifierClient.queryHolderFeatures(
                        holderDid: (await holderDidManager.getDidDocument()).id,
                        featureQueries: FeatureDiscoveryHelper
                            .getFeatureQueriesByDisclosures(
                          FeatureDiscoveryHelper.vdspHolderDisclosures,
                        ),
                      );

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
  });

  group('VDSP Verifier Client Unit Tests', () {
    test('Should accept Problem Report', () async {
      final completer = Completer<PlainTextMessage>();
      final messageId = const Uuid().v4();

      final encryptedMessage = await createdEncryptedProblemReportMessage(
        receiverDidManager: verifierDidManager,
        senderDidManager: holderDidManager,
        parentThreadId: messageId,
      );

      final sut = VdspVerifierClient(
        didManager: verifierDidManager,
        mediatorClient: mockMediator.clients[verifierDidManager]!,
      );

      sut.listenForIncomingMessages(
        onDataResponse: emptyOnDataResponseCallback,
        onProblemReport: completer.complete,
        onError: completer.completeError,
      );

      mockMediator.responseControllers[verifierDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await completer.future;

      expect(actual, isA<ProblemReportMessage>());
      expect(actual.parentThreadId, messageId);
    });

    test('Should fail if from header is missing', () async {
      final completer = Completer<Object>();

      // Simulate an invalid message format
      final encryptedMessage = await createdEncryptedDataResponseMessage(
        verifierDidManager: verifierDidManager,
        holderDidManager: holderDidManager,
        from: null, // simulate missing 'from' header
      );

      final sut = VdspVerifierClient(
        didManager: verifierDidManager,
        mediatorClient: mockMediator.clients[verifierDidManager]!,
      );

      sut.listenForIncomingMessages(
        onDataResponse: emptyOnDataResponseCallback,
        onError: (Object error) {
          completer.complete(error);
        },
      );

      mockMediator.responseControllers[verifierDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await completer.future;

      expect(actual, isA<ArgumentError>());
      expect(
        actual.toString(),
        contains('from header in a Plain Text Message does not match'),
      );
    });

    test('Should fail if body header is missing', () async {
      final completer = Completer<Object>();

      final encryptedMessage = await createdEncryptedDataResponseMessage(
        verifierDidManager: verifierDidManager,
        holderDidManager: holderDidManager,
        from: holderDidDocument.id,
        body: null, // simulate missing 'body' header
      );

      final sut = VdspVerifierClient(
        didManager: verifierDidManager,
        mediatorClient: mockMediator.clients[verifierDidManager]!,
      );

      sut.listenForIncomingMessages(
        onDataResponse: emptyOnDataResponseCallback,
        onError: (Object error) {
          completer.complete(error);
        },
      );

      mockMediator.responseControllers[verifierDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await completer.future;

      expect(actual, isA<ArgumentError>());
      expect(
        actual.toString(),
        contains('(responseMessage.body): Must not be null'),
      );
    });

    test('Should detect invalid VP', () async {
      final completer = Completer<bool>();

      final vp = await createVerifiablePresentation(
        didManager: holderDidManager,
        verifiableCredentials: holderVerifiableCredentials,
      );

      final invalidVp = vp.toJson();
      // ignore: avoid_dynamic_calls
      invalidVp['proof']['challenge'] =
          'invalid-challenge'; // simulate invalid vp

      final encryptedMessage = await createdEncryptedDataResponseMessage(
        verifierDidManager: verifierDidManager,
        holderDidManager: holderDidManager,
        from: holderDidDocument.id,
        body: VdspDataResponseBody(
          responseFormat: 'application/json',
          dataResponse: invalidVp,
        ).toJson(),
      );

      final sut = VdspVerifierClient(
        didManager: verifierDidManager,
        mediatorClient: mockMediator.clients[verifierDidManager]!,
      );

      sut.listenForIncomingMessages(
        onDataResponse: ({
          required VdspDataResponseMessage message,
          required bool presentationAndCredentialsAreValid,
          VerifiablePresentation? verifiablePresentation,
          required VerificationResult presentationVerificationResult,
          required List<VerificationResult> credentialVerificationResults,
        }) {
          completer.complete(presentationAndCredentialsAreValid);
        },
        onProblemReport: completer.completeError,
        onError: completer.completeError,
      );

      mockMediator.responseControllers[verifierDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await completer.future;
      expect(actual, isFalse);
    });

    test('Should detect invalid VC', () async {
      final completer = Completer<bool>();

      final invalidVc = holderVerifiableCredentials.first.toJson();
      // ignore: avoid_dynamic_calls
      invalidVc['credentialSubject']['email'] = 'invalid-email';

      final vp = await createVerifiablePresentation(
        didManager: holderDidManager,
        verifiableCredentials: [
          UniversalParser.parse(jsonEncode(invalidVc)),
        ],
      );

      final encryptedMessage = await createdEncryptedDataResponseMessage(
        verifierDidManager: verifierDidManager,
        holderDidManager: holderDidManager,
        from: holderDidDocument.id,
        body: VdspDataResponseBody(
          responseFormat: 'application/json',
          dataResponse: vp.toJson(),
        ).toJson(),
      );

      final sut = VdspVerifierClient(
        didManager: verifierDidManager,
        mediatorClient: mockMediator.clients[verifierDidManager]!,
      );

      sut.listenForIncomingMessages(
        onDataResponse: ({
          required VdspDataResponseMessage message,
          required bool presentationAndCredentialsAreValid,
          VerifiablePresentation? verifiablePresentation,
          required VerificationResult presentationVerificationResult,
          required List<VerificationResult> credentialVerificationResults,
        }) {
          completer.complete(presentationAndCredentialsAreValid);
        },
        onProblemReport: completer.completeError,
        onError: completer.completeError,
      );

      mockMediator.responseControllers[verifierDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await completer.future;
      expect(actual, isFalse);
    });
  });

  group('VDSP Holder Client Unit Tests', () {
    test('Should accept Problem Report', () async {
      final completer = Completer<PlainTextMessage>();
      final messageId = const Uuid().v4();

      final sut = VdspHolderClient(
        didManager: holderDidManager,
        mediatorClient: mockMediator.clients[holderDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdspHolderDisclosures,
      );

      sut.listenForIncomingMessages(
        onDataRequest: emptyOnDataRequestCallback,
        onProblemReport: (message) async {
          completer.complete(message);
          await mockMediator.stopConnections();
        },
        onError: completer.completeError,
      );

      final encryptedMessage = await createdEncryptedProblemReportMessage(
        receiverDidManager: holderDidManager,
        senderDidManager: verifierDidManager,
        parentThreadId: messageId,
      );

      mockMediator.responseControllers[holderDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await completer.future;

      expect(actual, isA<ProblemReportMessage>());
      expect(actual.parentThreadId, messageId);
    });
  });
}
