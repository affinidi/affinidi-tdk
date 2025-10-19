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
  group('VDSP Holder and Verifier Clients Unit Tests', () {
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

    for (final verifiablePresentationProofSuite in [
      DataIntegrityProofSuite.ecdsa_jcs_2019,
      // DataIntegrityProofSuite.eddsa_jcs_2022,
      // DataIntegrityProofSuite.ecdsa_rdfc_2019,
      // DataIntegrityProofSuite.eddsa_rdfc_2022
    ]) {
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
              required VerificationResult presentationVerificationResult,
              required List<VerificationResult> credentialVerificationResults,
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
                  'email': verifiablePresentation?.verifiableCredential.first
                      .credentialSubject.first['email'],
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
            featureDisclosures: FeatureDiscoveryHelper.vdspHolderDisclosures,
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
                verifiableCredentials: queryResult.verifiableCredentials,
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
          final actualResult = actual.body?['result'] as Map<String, dynamic>?;

          expect(actual, isA<VdspDataProcessingResultMessage>());
          expect(actualResult?['email'], holderEmail);
          expect(actualResult?['success'], isTrue);
        });
      });
    }
  });
}
