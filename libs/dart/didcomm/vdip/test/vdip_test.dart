import 'dart:async';
import 'dart:convert';

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
  final attachment = Attachment(
    id: 'sample-attachment',
    mediaType: 'application/json',
    data: AttachmentData(
      json: jsonEncode({'sample': 'data'}),
    ),
  );

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
                  assertionValidationResult,
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
                    attachments: [attachment],
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
              expect(actual.attachments?.first.toJson(), attachment.toJson());

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
                  assertionValidationResult,
                  holderDidFromAssertion,
                  challenge,
                }) async {
                  if (assertionValidationResult == null ||
                      !assertionValidationResult.isValid) {
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
                    attachments: [attachment],
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
              expect(actual.attachments?.first.toJson(), attachment.toJson());
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
                  assertionValidationResult,
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
                    attachments: [attachment],
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
              expect(actual.attachments?.first.toJson(), attachment.toJson());

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
      final testCompleter = Completer<AssertionValidationResult?>();

      final sut = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );

      sut.listenForIncomingMessages(
        onRequestToIssueCredential: ({
          required message,
          assertionValidationResult,
          holderDidFromAssertion,
          challenge,
        }) async {
          testCompleter.complete(assertionValidationResult);
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

      final result = await testCompleter.future;

      expect(result, isNotNull);
      expect(result!.isValid, isFalse);
      expect(result.isExpirationValid, isFalse);
      expect(result.isSignatureValid, isTrue);
      expect(result.isIssuerValid, isTrue);
      expect(result.isSubjectValid, isTrue);
      expect(result.isProposalValid, isTrue);
      expect(result.isAudienceValid, isTrue);
    });

    test('Should fail if invalid subject', () async {
      final testCompleter = Completer<AssertionValidationResult?>();

      final vdipIssuer = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );

      vdipIssuer.listenForIncomingMessages(
        onRequestToIssueCredential: ({
          required message,
          assertionValidationResult,
          holderDidFromAssertion,
          challenge,
        }) async {
          testCompleter.complete(assertionValidationResult);
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

      final result = await testCompleter.future;

      expect(result, isNotNull);
      expect(result!.isValid, isFalse);
      expect(result.isIssuerValid, isTrue);
      expect(result.isSubjectValid, isFalse);
      expect(result.isSignatureValid, isTrue);
      expect(result.isProposalValid, isTrue);
      expect(result.isAudienceValid, isTrue);
      expect(result.isExpirationValid, isTrue);
    });

    test('Should fails if invalid issuer', () async {
      final testCompleter = Completer<AssertionValidationResult?>();

      final vdipIssuer = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );

      vdipIssuer.listenForIncomingMessages(
        onRequestToIssueCredential: ({
          required message,
          assertionValidationResult,
          holderDidFromAssertion,
          challenge,
        }) async {
          testCompleter.complete(assertionValidationResult);
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

      final result = await testCompleter.future;

      expect(result, isNotNull);
      expect(result!.isValid, isFalse);
      expect(result.isIssuerValid, isFalse);
      expect(result.isSubjectValid, isTrue);
      expect(result.isSignatureValid, isTrue);
      expect(result.isProposalValid, isTrue);
      expect(result.isAudienceValid, isTrue);
      expect(result.isExpirationValid, isTrue);
    });

    test('Should fails if invalid audience', () async {
      final testCompleter = Completer<AssertionValidationResult?>();

      final vdipIssuer = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );

      vdipIssuer.listenForIncomingMessages(
        onRequestToIssueCredential: ({
          required message,
          assertionValidationResult,
          holderDidFromAssertion,
          challenge,
        }) async {
          testCompleter.complete(assertionValidationResult);
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

      final result = await testCompleter.future;

      expect(result, isNotNull);
      expect(result!.isValid, isFalse);
      expect(result.isAudienceValid, isFalse);
      expect(result.isSignatureValid, isTrue);
      expect(result.isIssuerValid, isTrue);
      expect(result.isSubjectValid, isTrue);
      expect(result.isProposalValid, isTrue);
      expect(result.isExpirationValid, isTrue);
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

  group('validateHolderToken', () {
    late VdipIssuer vdipIssuer;
    late DidManager holderDidManager;
    late DidSigner holderSigner;
    late String holderDid;

    setUp(() async {
      mockMediator = await MockMediator.init(keyType: KeyType.p256);

      issuerDidManager = await createDidManager(
        didMethod: 'did:key',
        keyType: KeyType.p256,
      );

      holderDidManager = await createDidManager(
        didMethod: 'did:key',
        keyType: KeyType.p256,
      );

      await mockMediator.addClientForDidManager(issuerDidManager);
      await mockMediator.addClientForDidManager(holderDidManager);

      final holderDidDocument = await holderDidManager.getDidDocument();
      holderDid = holderDidDocument.id;

      holderSigner = await holderDidManager.getSigner(
        holderDidManager.authentication.first,
      );

      vdipIssuer = VdipIssuer(
        didManager: issuerDidManager,
        mediatorClient: mockMediator.clients[issuerDidManager]!,
        featureDisclosures: FeatureDiscoveryHelper.vdipIssuerDisclosures,
      );
    });

    test('validates a valid holder token successfully', () async {
      final nonce = const Uuid().v4();
      final threadId = const Uuid().v4();
      final expirationTime =
          DateTime.now().millisecondsSinceEpoch ~/ 1000 + 3600; // 1 hour

      final tokenPayload = {
        'iss': holderDid,
        'sub': holderDid,
        'nonce': nonce,
        'threadId': threadId,
        'exp': expirationTime,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      };

      final token = await JwtHelper.createAndSignJwt(
        tokenPayload,
        DidSignerAdapter(holderSigner),
      );

      final result = await vdipIssuer.validateHolderToken(
        token: token,
        holderDid: holderDid,
        expectedNonce: nonce,
        expectedThreadId: threadId,
      );

      expect(result.isValid, isTrue);
      expect(result.isSignatureValid, isTrue);
      expect(result.isIssuerValid, isTrue);
      expect(result.isSubjectValid, isTrue);
      expect(result.isNonceValid, isTrue);
      expect(result.isThreadIdValid, isTrue);
      expect(result.isExpirationValid, isTrue);
      expect(result.nonce, equals(nonce));
      expect(result.error, isNull);
    });

    test('fails validation when nonce does not match', () async {
      final nonce = const Uuid().v4();
      final differentNonce = const Uuid().v4();
      final threadId = const Uuid().v4();
      final expirationTime =
          DateTime.now().millisecondsSinceEpoch ~/ 1000 + 3600;

      final tokenPayload = {
        'iss': holderDid,
        'sub': holderDid,
        'nonce': nonce,
        'threadId': threadId,
        'exp': expirationTime,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      };

      final token = await JwtHelper.createAndSignJwt(
        tokenPayload,
        DidSignerAdapter(holderSigner),
      );

      final result = await vdipIssuer.validateHolderToken(
        token: token,
        holderDid: holderDid,
        expectedNonce: differentNonce,
        expectedThreadId: threadId,
      );

      expect(result.isValid, isFalse);
      expect(result.isSignatureValid, isTrue);
      expect(result.isIssuerValid, isTrue);
      expect(result.isSubjectValid, isTrue);
      expect(result.isNonceValid, isFalse);
      expect(result.isThreadIdValid, isTrue);
      expect(result.isExpirationValid, isTrue);
      expect(result.nonce, equals(nonce));
      expect(result.error, isNull);
    });

    test('fails validation when threadId does not match', () async {
      final nonce = const Uuid().v4();
      final threadId = const Uuid().v4();
      final differentThreadId = const Uuid().v4();
      final expirationTime =
          DateTime.now().millisecondsSinceEpoch ~/ 1000 + 3600;

      final tokenPayload = {
        'iss': holderDid,
        'sub': holderDid,
        'nonce': nonce,
        'threadId': threadId,
        'exp': expirationTime,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      };

      final token = await JwtHelper.createAndSignJwt(
        tokenPayload,
        DidSignerAdapter(holderSigner),
      );

      final result = await vdipIssuer.validateHolderToken(
        token: token,
        holderDid: holderDid,
        expectedNonce: nonce,
        expectedThreadId: differentThreadId,
      );

      expect(result.isValid, isFalse);
      expect(result.isSignatureValid, isTrue);
      expect(result.isIssuerValid, isTrue);
      expect(result.isSubjectValid, isTrue);
      expect(result.isNonceValid, isTrue);
      expect(result.isThreadIdValid, isFalse);
      expect(result.isExpirationValid, isTrue);
      expect(result.nonce, equals(nonce));
      expect(result.error, isNull);
    });

    test('fails validation when token has expired', () async {
      final nonce = const Uuid().v4();
      final threadId = const Uuid().v4();
      final expirationTime =
          DateTime.now().millisecondsSinceEpoch ~/ 1000 - 3600; // 1 hour ago

      final tokenPayload = {
        'iss': holderDid,
        'sub': holderDid,
        'nonce': nonce,
        'threadId': threadId,
        'exp': expirationTime,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000 - 7200,
      };

      final token = await JwtHelper.createAndSignJwt(
        tokenPayload,
        DidSignerAdapter(holderSigner),
      );

      final result = await vdipIssuer.validateHolderToken(
        token: token,
        holderDid: holderDid,
        expectedNonce: nonce,
        expectedThreadId: threadId,
      );

      expect(result.isValid, isFalse);
      expect(result.isSignatureValid, isTrue);
      expect(result.isIssuerValid, isTrue);
      expect(result.isSubjectValid, isTrue);
      expect(result.isNonceValid, isTrue);
      expect(result.isThreadIdValid, isTrue);
      expect(result.isExpirationValid, isFalse);
      expect(result.nonce, equals(nonce));
      expect(result.error, isNull);
    });

    test('fails validation when DID does not match', () async {
      final nonce = const Uuid().v4();
      final threadId = const Uuid().v4();
      final expirationTime =
          DateTime.now().millisecondsSinceEpoch ~/ 1000 + 3600;

      // Create another DID manager for a different holder
      final differentHolderDidManager = await createDidManager(
        didMethod: 'did:key',
        keyType: KeyType.p256,
      );
      final differentHolderDidDocument =
          await differentHolderDidManager.getDidDocument();
      final differentHolderDid = differentHolderDidDocument.id;

      final tokenPayload = {
        'iss': holderDid,
        'sub': holderDid,
        'nonce': nonce,
        'threadId': threadId,
        'exp': expirationTime,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
      };

      final token = await JwtHelper.createAndSignJwt(
        tokenPayload,
        DidSignerAdapter(holderSigner),
      );

      final result = await vdipIssuer.validateHolderToken(
        token: token,
        holderDid: differentHolderDid, // Different DID
        expectedNonce: nonce,
        expectedThreadId: threadId,
      );

      // When we try to verify with a different DID's document, the signature
      // verification might still succeed if the DID document contains compatible keys,
      // but the DID validation will fail because iss/sub don't match
      expect(result.isValid, isFalse);
      // Signature might succeed depending on key compatibility, but DID check will fail
      expect(result.isIssuerValid, isFalse,
          reason:
              'Issuer validation should fail when token DIDs dont match expected DID');
      expect(result.isSubjectValid, isFalse,
          reason:
              'Subject validation should fail when token DIDs dont match expected DID');
    });

    test('fails validation with invalid token format', () async {
      final nonce = const Uuid().v4();
      final threadId = const Uuid().v4();

      final result = await vdipIssuer.validateHolderToken(
        token: 'invalid.token.format',
        holderDid: holderDid,
        expectedNonce: nonce,
        expectedThreadId: threadId,
      );

      expect(result.isValid, isFalse);
      expect(result.isSignatureValid, isFalse);
      expect(result.isIssuerValid, isFalse);
      expect(result.isSubjectValid, isFalse);
      expect(result.isNonceValid, isFalse);
      expect(result.isThreadIdValid, isFalse);
      expect(result.isExpirationValid, isFalse);
      expect(result.nonce, isEmpty);
      expect(result.error, isNotNull);
    });
  });
}
