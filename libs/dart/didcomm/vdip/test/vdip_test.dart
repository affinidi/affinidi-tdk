import 'dart:async';

import 'package:affinidi_tdk_mediator_didcomm_client/affinidi_tdk_mediator_didcomm_client.dart';
import 'package:affinidi_tdk_vdip/affinidi_tdk_vdip.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'test_utils.dart';

Future<void> main() async {
  const holderEmail = 'user@test.com';
  final proposalId = const Uuid().v4();
  const comment = 'Requesting email credential issuance';

  late MockMediator mockMediator;

  late DidManager issuerDidManager;
  late DidManager holderDidManager;

  late DidSigner issuerSigner;
  late DidSigner holderSigner;

  late DidDocument issuerDidDocument;
  late DidDocument holderDidDocument;

  setUp(() async {
    issuerDidManager = await createDidManager(
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

    await mockMediator.addClientForDidManager(issuerDidManager);
    await mockMediator.addClientForDidManager(holderDidManager);

    issuerDidDocument = await issuerDidManager.getDidDocument();
    holderDidDocument = await holderDidManager.getDidDocument();

    issuerSigner = await issuerDidManager.getSigner(
      issuerDidDocument.assertionMethod.first.id,
    );

    holderSigner = await holderDidManager.getSigner(
      holderDidManager.authentication.first,
    );
  });

  group('VDIP Holder and Issuer Clients Unit Tests', () {
    for (final keyType in [
      KeyType.ed25519,
      KeyType.p256,
      KeyType.p384,
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

              issuerDidManager = await createDidManager(
                didMethod: didMethod,
                keyType: keyType,
              );

              await mockMediator.addClientForDidManager(issuerDidManager);

              holderDidManager = await createDidManager(
                didMethod: didMethod,
                keyType: keyType,
              );

              await mockMediator.addClientForDidManager(holderDidManager);

              issuerDidDocument = await issuerDidManager.getDidDocument();
              holderDidDocument = await holderDidManager.getDidDocument();

              issuerSigner = await issuerDidManager.getSigner(
                issuerDidManager.assertionMethod.first,
              );

              holderSigner = await holderDidManager.getSigner(
                holderDidManager.authentication.first,
              );
            });

            test('VDIP credential issuance works correctly', () async {
              final testCompleter = Completer<PlainTextMessage>();

              final vdipIssuer = VdipIssuer(
                didManager: issuerDidManager,
                mediatorClient: mockMediator.clients[issuerDidManager]!,
                featureDisclosures:
                    FeatureDiscoveryHelper.vdipIssuerDisclosures,
              );

              vdipIssuer.listenForIncomingMessages(
                onFeatureQuery: (message) async {
                  await vdipIssuer.disclose(
                    queryMessage: message,
                  );
                },
                onRequestToIssueCredential: ({
                  required message,
                  isAssertionValid,
                  holderDidFromAssertion,
                }) async {
                  final holderDid = message.from!;
                  final body = VdipRequestIssuanceMessageBody.fromJson(
                    message.body!,
                  );

                  if (body.proposalId != proposalId) {
                    testCompleter.completeError(
                      Exception('Proposal ID does not match'),
                    );
                    return;
                  }

                  // Issue credential
                  final credential = await generateEmailLdVcV1(
                    holderDid: holderDid,
                    holderEmail: holderEmail,
                    issuerSigner: issuerSigner,
                  );

                  await vdipIssuer.sendIssuedCredentials(
                    holderDid: holderDid,
                    verifiableCredential: credential,
                    comment: comment,
                  );
                },
                onProblemReport: (message) async {
                  testCompleter.completeError(message);
                  await mockMediator.stopConnections();
                },
              );

              final vdipHolder = VdipHolder(
                didManager: holderDidManager,
                mediatorClient: mockMediator.clients[holderDidManager]!,
              );

              vdipHolder.listenForIncomingMessages(
                onFeatureQuery: (message) async {
                  // Holder responds to feature query if needed
                },
                onCredentialsIssuanceResponse: (message) async {
                  final body = VdipIssuedCredentialBody.fromJson(
                    message.body!,
                  );

                  if (body.comment != comment) {
                    testCompleter.completeError(
                      Exception('Comment does not match'),
                    );
                    return;
                  }

                  testCompleter.complete(message);
                  await mockMediator.stopConnections();
                },
                onProblemReport: (message) async {
                  testCompleter.completeError(message);
                  await mockMediator.stopConnections();
                },
              );

              await mockMediator.startConnections();

              // Start the flow: Holder queries issuer features
              await vdipHolder.queryIssuerFeatures(
                issuerDid: issuerDidDocument.id,
                featureQueries:
                    FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
                  FeatureDiscoveryHelper.vdipIssuerDisclosures,
                ),
              );

              // Wait a bit for feature discovery
              await Future<void>.delayed(const Duration(milliseconds: 100));

              // Holder requests credential
              await vdipHolder.requestCredential(
                issuerDid: issuerDidDocument.id,
                options: RequestCredentialsOptions(
                  proposalId: proposalId,
                  credentialFormat: CredentialFormat.w3cV1,
                  comment: comment,
                ),
              );

              final actual = await testCompleter.future;

              expect(actual, isA<VdipIssuedCredentialMessage>());

              final actualBody = VdipIssuedCredentialBody.fromJson(
                actual.body!,
              );
              expect(actualBody.comment, comment);
              expect(actualBody.credentialFormat, CredentialFormat.w3cV1);
            });

            test('VDIP holder-bound credential issuance works correctly',
                () async {
              final testCompleter = Completer<PlainTextMessage>();

              final vdipIssuer = VdipIssuer(
                didManager: issuerDidManager,
                mediatorClient: mockMediator.clients[issuerDidManager]!,
                featureDisclosures:
                    FeatureDiscoveryHelper.vdipIssuerDisclosures,
              );

              vdipIssuer.listenForIncomingMessages(
                onRequestToIssueCredential: ({
                  required message,
                  isAssertionValid,
                  holderDidFromAssertion,
                }) async {
                  if (isAssertionValid == null || !isAssertionValid) {
                    testCompleter.completeError(
                      Exception('Assertion is not valid'),
                    );
                    return;
                  }

                  if (holderDidFromAssertion == null) {
                    testCompleter.completeError(
                      Exception('Holder DID from assertion is missing'),
                    );
                    return;
                  }

                  final body = VdipRequestIssuanceMessageBody.fromJson(
                    message.body!,
                  );

                  if (body.holderDid != holderDidFromAssertion) {
                    testCompleter.completeError(
                      Exception('Holder DID does not match assertion'),
                    );
                    return;
                  }

                  // Issue credential for the specific holder
                  final credential = await generateEmailLdVcV1(
                    holderDid: holderDidFromAssertion,
                    holderEmail: holderEmail,
                    issuerSigner: issuerSigner,
                  );

                  await vdipIssuer.sendIssuedCredentials(
                    holderDid: message.from!,
                    verifiableCredential: credential,
                    comment: comment,
                  );
                },
                onProblemReport: (message) async {
                  testCompleter.completeError(message);
                  await mockMediator.stopConnections();
                },
              );

              final vdipHolder = VdipHolder(
                didManager: holderDidManager,
                mediatorClient: mockMediator.clients[holderDidManager]!,
              );

              vdipHolder.listenForIncomingMessages(
                onCredentialsIssuanceResponse: (message) async {
                  testCompleter.complete(message);
                  await mockMediator.stopConnections();
                },
                onProblemReport: (message) async {
                  testCompleter.completeError(message);
                  await mockMediator.stopConnections();
                },
              );

              await mockMediator.startConnections();

              // Holder requests credential for specific holder DID with assertion
              await vdipHolder.requestCredentialForHolder(
                holderSigner.did,
                issuerDid: issuerDidDocument.id,
                assertionSigner: holderSigner,
                options: RequestCredentialsOptions(
                  proposalId: proposalId,
                  credentialFormat: CredentialFormat.w3cV1,
                  comment: comment,
                ),
              );

              final actual = await testCompleter.future;

              expect(actual, isA<VdipIssuedCredentialMessage>());

              final actualBody = VdipIssuedCredentialBody.fromJson(
                actual.body!,
              );
              expect(actualBody.comment, comment);
            });
          });
        }
      });
    }
  });

  group('VDIP Issuer Client Unit Tests', () {
    test('Should accept Problem Report', () async {
      final completer = Completer<PlainTextMessage>();
      final messageId = const Uuid().v4();

      final encryptedMessage = await createdEncryptedProblemReportMessage(
        receiverDidManager: issuerDidManager,
        senderDidManager: holderDidManager,
        parentThreadId: messageId,
      );

      final sut = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );

      sut.listenForIncomingMessages(
        onRequestToIssueCredential: emptyOnRequestIssuanceCallback,
        onProblemReport: completer.complete,
        onError: completer.completeError,
      );

      mockMediator.responseControllers[issuerDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await completer.future;

      expect(actual, isA<ProblemReportMessage>());
      expect(actual.parentThreadId, messageId);
    });
  });

  group('VDIP Holder Client Unit Tests', () {
    test('Should accept Problem Report', () async {
      final completer = Completer<PlainTextMessage>();
      final messageId = const Uuid().v4();

      final sut = VdipHolder(
        didManager: holderDidManager,
        mediatorClient: mockMediator.clients[holderDidManager]!,
      );

      sut.listenForIncomingMessages(
        onCredentialsIssuanceResponse: (message) {},
        onProblemReport: (message) async {
          completer.complete(message);
          await mockMediator.stopConnections();
        },
        onError: completer.completeError,
      );

      final encryptedMessage = await createdEncryptedProblemReportMessage(
        receiverDidManager: holderDidManager,
        senderDidManager: issuerDidManager,
        parentThreadId: messageId,
      );

      mockMediator.responseControllers[holderDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await completer.future;

      expect(actual, isA<ProblemReportMessage>());
      expect(actual.parentThreadId, messageId);
    });

    test('Should receive issued credential', () async {
      final completer = Completer<PlainTextMessage>();

      final credential = await generateEmailLdVcV1(
        holderDid: holderDidDocument.id,
        holderEmail: holderEmail,
        issuerSigner: issuerSigner,
      );

      final credentialBody = VdipIssuedCredentialBody.w3cV1(
        credential: credential,
        comment: comment,
      );

      final encryptedMessage = await createdEncryptedIssuedCredentialMessage(
        issuerDidManager: issuerDidManager,
        holderDidManager: holderDidManager,
        from: issuerDidDocument.id,
        body: credentialBody.toJson(),
      );

      final sut = VdipHolder(
        didManager: holderDidManager,
        mediatorClient: mockMediator.clients[holderDidManager]!,
      );

      sut.listenForIncomingMessages(
        onCredentialsIssuanceResponse: completer.complete,
        onError: completer.completeError,
      );

      mockMediator.responseControllers[holderDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await completer.future;

      expect(actual, isA<VdipIssuedCredentialMessage>());

      final actualBody = VdipIssuedCredentialBody.fromJson(actual.body!);
      final credentialSerialized = actualBody.credential;
      final verifiableCredential = VcDataModelV1.fromJson(credentialSerialized);
      expect(actualBody.comment, comment);
      expect(verifiableCredential.id, credential.id);
      expect(actualBody.credentialFormat, CredentialFormat.w3cV1);
    });
  });
}
