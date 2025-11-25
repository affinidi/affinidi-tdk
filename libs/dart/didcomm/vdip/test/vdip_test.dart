import 'dart:async';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
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

              final credential = await generateEmailLdVcV1(
                holderDid: holderDidDocument.id,
                holderEmail: holderEmail,
                issuerSigner: issuerSigner,
              );

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
                  challenge,
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

              final credentialSerialized = actualBody.credential;
              final verifiableCredential =
                  VcDataModelV1.fromJson(credentialSerialized);

              expect(actualBody.comment, comment);
              expect(verifiableCredential.id, credential.id);
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
                  challenge,
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

            test('VDIP challenge validation works correctly', () async {
              final testCompleter = Completer<String?>();
              final expectedChallenge = const Uuid().v4();

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
                  challenge,
                }) async {
                  // Complete with the received challenge
                  testCompleter.complete(challenge);
                  await mockMediator.stopConnections();
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

              await mockMediator.startConnections();

              // Holder requests credential with challenge
              await vdipHolder.requestCredential(
                issuerDid: issuerDidDocument.id,
                options: RequestCredentialsOptions(
                  proposalId: proposalId,
                  challenge: expectedChallenge,
                  credentialFormat: CredentialFormat.w3cV1,
                ),
              );

              final receivedChallenge = await testCompleter.future;

              // Verify the challenge was properly transmitted
              expect(receivedChallenge, isNotNull);
              expect(receivedChallenge, equals(expectedChallenge));
              // TODO: add chellange expectation in general test above
            });

            test('VDIP invalid holderDID should be invalid', () async {
              final testCompleter = Completer<bool>();

              // Create a different holder DID manager for mismatch
              final differentHolderDidManager = await createDidManager(
                didMethod: didMethod,
                keyType: keyType,
              );
              final differentHolderDidDocument =
                  await differentHolderDidManager.getDidDocument();

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
                  challenge,
                }) async {
                  testCompleter.complete(isAssertionValid ?? false);
                  await mockMediator.stopConnections();
                },
                onProblemReport: (message) async {
                  testCompleter.completeError(message);
                  await mockMediator.stopConnections();
                },
              );

              await mockMediator.startConnections();

              // Create assertion with holder's DID but claim it's for a different DID
              final issueTime =
                  (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();
              final payload = {
                'proposalId': proposalId,
                'iss': holderSigner.did,
                'sub': holderSigner.did,
                'aud': issuerDidDocument.id,
                'jti': const Uuid().v4(),
                'exp': issueTime + 300,
                'iat': issueTime,
              };
              final signedAssertion = await JwtHelper.createAndSignJwt(
                payload,
                DidSignerAdapter(holderSigner),
              );

              // Send the request claiming to be a different holder DID
              final requestIssuanceMessage = VdipRequestIssuanceMessage(
                id: const Uuid().v4(),
                to: [issuerDidDocument.id],
                body: VdipRequestIssuanceMessageBody(
                  assertion: signedAssertion,
                  proposalId: proposalId,
                  holderDid: differentHolderDidDocument
                      .id, // Different DID than the one in assertion
                  credentialFormat: CredentialFormat.w3cV1.toString(),
                  jsonWebSignatureAlgorithm:
                      JsonWebSignatureAlgorithm.es256.toString(),
                  comment: comment,
                ),
              );

              await mockMediator.clients[holderDidManager]!
                  .packAndSendMessage(requestIssuanceMessage);

              final isValid = await testCompleter.future;

              expect(isValid, isFalse);
            });

            test('VDIP invalid issuerDID (aud) should be invalid', () async {
              final testCompleter = Completer<bool>();

              // Create a different issuer DID for mismatch
              final differentIssuerDidManager = await createDidManager(
                didMethod: didMethod,
                keyType: keyType,
              );
              final differentIssuerDidDocument =
                  await differentIssuerDidManager.getDidDocument();

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
                  challenge,
                }) async {
                  testCompleter.complete(isAssertionValid ?? false);
                  await mockMediator.stopConnections();
                },
                onProblemReport: (message) async {
                  testCompleter.completeError(message);
                  await mockMediator.stopConnections();
                },
              );

              await mockMediator.startConnections();

              // Create assertion with a different issuer DID in the audience
              final issueTime =
                  (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();
              final payload = {
                'proposalId': proposalId,
                'iss': holderSigner.did,
                'sub': holderSigner.did,
                'aud': differentIssuerDidDocument
                    .id, // Different issuer DID than the actual issuer
                'jti': const Uuid().v4(),
                'exp': issueTime + 300,
                'iat': issueTime,
              };
              final signedAssertion = await JwtHelper.createAndSignJwt(
                payload,
                DidSignerAdapter(holderSigner),
              );

              // Send the request to the actual issuer
              final requestIssuanceMessage = VdipRequestIssuanceMessage(
                id: const Uuid().v4(),
                to: [issuerDidDocument.id],
                body: VdipRequestIssuanceMessageBody(
                  assertion: signedAssertion,
                  proposalId: proposalId,
                  holderDid: holderSigner.did,
                  credentialFormat: CredentialFormat.w3cV1.toString(),
                  jsonWebSignatureAlgorithm:
                      JsonWebSignatureAlgorithm.es256.toString(),
                  comment: comment,
                ),
              );

              await mockMediator.clients[holderDidManager]!
                  .packAndSendMessage(requestIssuanceMessage);

              final isValid = await testCompleter.future;

              expect(isValid, isFalse);
            });

            test('VDIP challenge validation works correctly', () async {
              final testCompleter = Completer<String?>();
              final expectedChallenge = const Uuid().v4();

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
                  challenge,
                }) async {
                  // Complete with the received challenge
                  testCompleter.complete(challenge);
                  await mockMediator.stopConnections();
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

              await mockMediator.startConnections();

              // Holder requests credential with challenge
              await vdipHolder.requestCredential(
                issuerDid: issuerDidDocument.id,
                options: RequestCredentialsOptions(
                  proposalId: proposalId,
                  challenge: expectedChallenge,
                  credentialFormat: CredentialFormat.w3cV1,
                ),
              );

              final receivedChallenge = await testCompleter.future;

              // Verify the challenge was properly transmitted
              expect(receivedChallenge, isNotNull);
              expect(receivedChallenge, equals(expectedChallenge));
            });

            test('VDIP switch context flow works correctly', () async {
              final testCompleter = Completer<VdipSwitchContextMessage>();
              final baseIssuerUrl = Uri.parse('https://issuer.example.com');
              final nonce = const Uuid().v4();
              String? receivedThreadId;

              final issuerClient = VdipIssuer(
                didManager: issuerDidManager,
                mediatorClient: mockMediator.clients[issuerDidManager]!,
                featureDisclosures:
                    FeatureDiscoveryHelper.vdipIssuerDisclosures,
              );

              issuerClient.listenForIncomingMessages(
                onFeatureQuery: (message) async {
                  await issuerClient.disclose(
                    queryMessage: message,
                  );

                  // After feature disclosure, send switch context
                  await issuerClient.sendSwitchContext(
                    holderDid: holderDidDocument.id,
                    baseIssuerUrl: baseIssuerUrl,
                    nonce: nonce,
                    threadId: message.threadId ?? message.id,
                  );
                },
                onRequestToIssueCredential: emptyOnRequestIssuanceCallback,
                onProblemReport: (message) async {
                  testCompleter.completeError(message);
                  await mockMediator.stopConnections();
                },
              );

              final holderClient = VdipHolder(
                didManager: holderDidManager,
                mediatorClient: mockMediator.clients[holderDidManager]!,
              );

              holderClient.listenForIncomingMessages(
                onCredentialsIssuanceResponse: (message) {
                  // Not expecting credential issuance in this test
                },
                onSwitchContext: (message) async {
                  receivedThreadId = message.threadId;
                  testCompleter.complete(message);
                  await mockMediator.stopConnections();
                },
                onProblemReport: (message) async {
                  testCompleter.completeError(message);
                  await mockMediator.stopConnections();
                },
              );

              await mockMediator.startConnections();

              // Holder queries issuer features
              await holderClient.queryIssuerFeatures(
                issuerDid: issuerDidDocument.id,
                featureQueries:
                    FeatureDiscoveryHelper.getFeatureQueriesByDisclosures(
                  FeatureDiscoveryHelper.vdipIssuerDisclosures,
                ),
              );

              final actual = await testCompleter.future;

              expect(actual, isA<VdipSwitchContextMessage>());
              // Note: actual.from will be set by mediator client during packing
              expect(actual.to, contains(holderDidDocument.id));
              expect(receivedThreadId, isNotNull);

              final actualBody = actual.switchContext;
              expect(actualBody.baseIssuerUrl, baseIssuerUrl.toString());
              expect(actualBody.nonce, nonce);
              // TODO: verify jwt claims
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

    test('Should fail if expired assertion', () async {
      final testCompleter = Completer<bool>();

      final sut = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );

      sut.listenForIncomingMessages(
        onRequestToIssueCredential: ({
          required message,
          isAssertionValid,
          holderDidFromAssertion,
          challenge,
        }) async {
          testCompleter.complete(
              isAssertionValid == false && holderDidFromAssertion == null);
        },
        onProblemReport: (message) async {
          testCompleter.completeError(message);
        },
      );

      final issueTime =
          (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();

      final payload = {
        'proposalId': proposalId,
        'iss': holderSigner.did,
        'sub': holderSigner.did,
        'aud': issuerDidDocument.id,
        'jti': const Uuid().v4(),
        'exp': issueTime - 5 * 60, // Expired 5 minutes ago
        'iat': issueTime,
      };

      final signedAssertion = await JwtHelper.createAndSignJwt(
        payload,
        DidSignerAdapter(holderSigner),
      );

      final encryptedMessage = await createEncryptedMessageForAssertion(
        issuerDidManager: issuerDidManager,
        holderDidManager: holderDidManager,
        signedAssertion: signedAssertion,
        proposalId: proposalId,
      );

      mockMediator.responseControllers[issuerDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final actual = await testCompleter.future;
      expect(actual, isFalse);
    });

    test('Should fail if invalid subject', () async {
      final testCompleter = Completer<bool>();

      final vdipIssuer = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );

      vdipIssuer.listenForIncomingMessages(
        onRequestToIssueCredential: ({
          required message,
          isAssertionValid,
          holderDidFromAssertion,
          challenge,
        }) async {
          testCompleter.complete(
              isAssertionValid == false && holderDidFromAssertion == null);
        },
        onProblemReport: (message) async {
          testCompleter.completeError(message);
        },
      );

      final issueTime =
          (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();

      final payload = {
        'proposalId': proposalId,
        'iss': holderSigner.did,
        'sub': 'did:key:someotherdid', // Invalid subject
        'aud': issuerDidDocument.id,
        'jti': const Uuid().v4(),
        'exp': issueTime + 300,
        'iat': issueTime,
      };

      final signedAssertion = await JwtHelper.createAndSignJwt(
        payload,
        DidSignerAdapter(holderSigner),
      );

      final encryptedMessage = await createEncryptedMessageForAssertion(
        issuerDidManager: issuerDidManager,
        holderDidManager: holderDidManager,
        signedAssertion: signedAssertion,
        proposalId: proposalId,
      );

      mockMediator.responseControllers[issuerDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final isValid = await testCompleter.future;
      expect(isValid, isFalse);
    });

    test('Should fails if invalid issuer', () async {
      final testCompleter = Completer<bool>();

      final vdipIssuer = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );

      vdipIssuer.listenForIncomingMessages(
        onRequestToIssueCredential: ({
          required message,
          isAssertionValid,
          holderDidFromAssertion,
          challenge,
        }) async {
          testCompleter.complete(
              isAssertionValid == true && holderDidFromAssertion == null);
        },
        onProblemReport: (message) async {
          testCompleter.completeError(message);
        },
      );

      await mockMediator.startConnections();

      final issueTime =
          (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();

      final payload = {
        'proposalId': proposalId,
        'iss': 'did:key:someotherdid', // Invalid issuer
        'sub': holderSigner.did,
        'aud': issuerDidDocument.id,
        'jti': const Uuid().v4(),
        'exp': issueTime + 300,
        'iat': issueTime,
      };

      final signedAssertion = await JwtHelper.createAndSignJwt(
        payload,
        DidSignerAdapter(holderSigner),
      );

      final encryptedMessage = await createEncryptedMessageForAssertion(
        issuerDidManager: issuerDidManager,
        holderDidManager: holderDidManager,
        signedAssertion: signedAssertion,
        proposalId: proposalId,
      );

      mockMediator.responseControllers[issuerDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final isValid = await testCompleter.future;
      expect(isValid, isFalse);
    });

    test('Should fails if invalid audience', () async {
      final testCompleter = Completer<bool>();

      final vdipIssuer = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );

      vdipIssuer.listenForIncomingMessages(
        onRequestToIssueCredential: ({
          required message,
          isAssertionValid,
          holderDidFromAssertion,
          challenge,
        }) async {
          testCompleter.complete(
              isAssertionValid == false && holderDidFromAssertion == null);
        },
        onProblemReport: (message) async {
          testCompleter.completeError(message);
        },
      );

      await mockMediator.startConnections();

      // Create assertion with a different issuer DID in the audience
      final issueTime =
          (DateTime.timestamp().millisecondsSinceEpoch / 1000).floor();

      final payload = {
        'proposalId': proposalId,
        'iss': holderSigner.did,
        'sub': holderSigner.did,
        'aud': 'did:key:someotherdid', // Invalid audience
        'jti': const Uuid().v4(),
        'exp': issueTime + 300,
        'iat': issueTime,
      };
      final signedAssertion = await JwtHelper.createAndSignJwt(
        payload,
        DidSignerAdapter(holderSigner),
      );

      final encryptedMessage = await createEncryptedMessageForAssertion(
        issuerDidManager: issuerDidManager,
        holderDidManager: holderDidManager,
        signedAssertion: signedAssertion,
        proposalId: proposalId,
      );

      mockMediator.responseControllers[issuerDidDocument.id]!.add(
        encryptedMessage.toJson(),
      );

      final isValid = await testCompleter.future;
      expect(isValid, isFalse);
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
  });
}
