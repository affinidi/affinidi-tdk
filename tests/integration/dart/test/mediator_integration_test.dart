import 'dart:async';

import 'package:collection/collection.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'test_config.dart';

// sometimes websockets connection is dropped
// it is better to delegate connection restoration strategy for the application, that uses this library
const webSocketsTestRetries = 2;

// TODO: add ACL test
void main() async {
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_client',
  );

  group('Mediator Integration Tests', () {
    late PersistentWallet aliceWallet;
    late DidManager aliceDidManager;
    late DidDocument aliceDidDocument;
    late MediatorClient aliceMediatorClient;
    late AuthenticationTokens aliceTokens;

    late PersistentWallet bobWallet;
    late DidManager bobDidManager;
    late DidDocument bobDidDocument;
    late MediatorClient bobMediatorClient;
    late AuthenticationTokens bobTokens;

    late DidDocument bobMediatorDocument;

    for (final didType in [
      'did:key',
      'did:peer',
    ]) {
      group(didType, () {
        setUp(() async {
          final useDidKey = didType == 'did:key';

          final aliceKeyStore = InMemoryKeyStore();
          aliceWallet = PersistentWallet(aliceKeyStore);

          if (useDidKey) {
            aliceDidManager = DidKeyManager(
              wallet: aliceWallet,
              store: InMemoryDidStore(),
            );
          } else {
            aliceDidManager = DidPeerManager(
              wallet: aliceWallet,
              store: InMemoryDidStore(),
            );
          }

          final bobKeyStore = InMemoryKeyStore();
          bobWallet = PersistentWallet(bobKeyStore);

          if (useDidKey) {
            bobDidManager = DidKeyManager(
              wallet: bobWallet,
              store: InMemoryDidStore(),
            );
          } else {
            bobDidManager = DidPeerManager(
              wallet: bobWallet,
              store: InMemoryDidStore(),
            );
          }

          final aliceKeyId = 'alice-key-1';
          final alicePrivateKeyBytes = await extractPrivateKeyBytes(
            config.alicePrivateKeyPath,
          );

          await aliceKeyStore.set(
            aliceKeyId,
            StoredKey(
              keyType: KeyType.p256,
              privateKeyBytes: alicePrivateKeyBytes,
            ),
          );

          await aliceDidManager.addVerificationMethod(aliceKeyId);
          aliceDidDocument = await aliceDidManager.getDidDocument();

          final bobKeyId = 'bob-key-1';
          final bobPrivateKeyBytes = await extractPrivateKeyBytes(
            config.bobPrivateKeyPath,
          );

          await bobKeyStore.set(
            bobKeyId,
            StoredKey(
              keyType: KeyType.p256,
              privateKeyBytes: bobPrivateKeyBytes,
            ),
          );

          await bobDidManager.addVerificationMethod(bobKeyId);
          bobDidDocument = await bobDidManager.getDidDocument();

          bobMediatorDocument =
              await UniversalDIDResolver.defaultResolver.resolveDid(
            await readDid(config.mediatorDidPath),
          );

          // find keys whose curve is common in the mediator DID Document
          final aliceMatchedDidKeyIds =
              aliceDidDocument.matchKeysInKeyAgreement(
            otherDidDocuments: [
              bobMediatorDocument,
            ],
          );

          // find keys whose curve is common in the mediator DID Document
          final bobMatchedDidKeyIds = bobDidDocument.matchKeysInKeyAgreement(
            otherDidDocuments: [
              bobMediatorDocument,
            ],
          );

          aliceMediatorClient = MediatorClient(
            mediatorDidDocument: bobMediatorDocument,
            keyPair: await aliceDidManager.getKeyPairByDidKeyId(
              aliceMatchedDidKeyIds.first,
            ),
            didKeyId: aliceMatchedDidKeyIds.first,
            signer: await aliceDidManager.getSigner(
              aliceDidDocument.authentication.first.id,
            ),
            forwardMessageOptions: const ForwardMessageOptions(
              shouldSign: true,
              shouldEncrypt: true,
              keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
              encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
            ),
          );

          bobMediatorClient = MediatorClient(
            mediatorDidDocument: bobMediatorDocument,
            keyPair: await bobDidManager.getKeyPairByDidKeyId(
              bobMatchedDidKeyIds.first,
            ),
            didKeyId: bobMatchedDidKeyIds.first,
            signer: await bobDidManager.getSigner(
              bobDidDocument.authentication.first.id,
            ),
            webSocketOptions: const WebSocketOptions(
              liveDeliveryChangeMessageOptions:
                  LiveDeliveryChangeMessageOptions(
                shouldSend: true,
                shouldSign: true,
                shouldEncrypt: true,
                keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
                encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
              ),
              statusRequestMessageOptions: StatusRequestMessageOptions(
                shouldSend: true,
                shouldSign: true,
                shouldEncrypt: true,
                keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
                encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
              ),
            ),
          );

          aliceTokens = await aliceMediatorClient.authenticate();
          bobTokens = await bobMediatorClient.authenticate();
        });

        test('REST API works correctly', () async {
          final expectedBodyContent = const Uuid().v4();

          final alicePlainTextMassage = PlainTextMessage(
            id: const Uuid().v4(),
            from: aliceDidDocument.id,
            to: [bobDidDocument.id],
            type: Uri.parse('https://didcomm.org/example/1.0/message'),
            body: {'content': expectedBodyContent},
          );

          alicePlainTextMassage['custom-header'] = 'custom-value';

          final aliceSignedAndEncryptedMessage =
              await DidcommMessage.packIntoSignedAndEncryptedMessages(
            alicePlainTextMassage,
            keyType: [bobDidDocument].getCommonKeyTypesInKeyAgreements().first,
            recipientDidDocuments: [bobDidDocument],
            keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
            encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
            signer: await aliceDidManager.getSigner(
              aliceDidDocument.assertionMethod.first.id,
            ),
          );

          final createdTime = DateTime.now().toUtc();
          final expiresTime = createdTime.add(const Duration(seconds: 60));

          final forwardMessage = ForwardMessage(
            id: const Uuid().v4(),
            to: [bobMediatorDocument.id],
            from: aliceDidDocument.id,
            next: bobDidDocument.id,
            expiresTime: expiresTime,
            attachments: [
              Attachment(
                mediaType: 'application/json',
                data: AttachmentData(
                  base64: base64UrlEncodeNoPadding(
                    aliceSignedAndEncryptedMessage.toJsonBytes(),
                  ),
                ),
              ),
            ],
          );

          await aliceMediatorClient.sendMessage(
            forwardMessage,
            accessToken: aliceTokens.accessToken,
          );

          final messageIds = await bobMediatorClient.listInboxMessageIds(
            accessToken: bobTokens.accessToken,
          );

          final messages = await bobMediatorClient.fetchMessages(
            messageIds: messageIds,
            accessToken: bobTokens.accessToken,
          );

          expect(messages.isNotEmpty, isTrue);

          final actualUnpackedMessages = await Future.wait(
            messages.map(
              (message) => DidcommMessage.unpackToPlainTextMessage(
                message: message,
                recipientDidManager: bobDidManager,
                validateAddressingConsistency: true,
                expectedMessageWrappingTypes: [
                  MessageWrappingType.anoncryptSignPlaintext,
                  MessageWrappingType.authcryptSignPlaintext,
                ],
                expectedSigners: [
                  aliceDidDocument.assertionMethod.first.didKeyId,
                ],
              ),
            ),
          );

          final actualBodyContents = actualUnpackedMessages
              .map<String?>((message) => message.body?['content'] as String)
              .toList();

          expect(
            actualBodyContents.singleWhereOrNull(
              (content) => content == expectedBodyContent,
            ),
            isNotNull,
          );
        });

        test(
          'WebSockets API works correctly',
          () async {
            final expectedBodyContent = const Uuid().v4();

            final alicePlainTextMassage = PlainTextMessage(
              id: const Uuid().v4(),
              from: aliceDidDocument.id,
              to: [bobDidDocument.id],
              type: Uri.parse('https://didcomm.org/example/1.0/message'),
              body: {'content': expectedBodyContent},
            );

            alicePlainTextMassage['custom-header'] = 'custom-value';

            final aliceSignedAndEncryptedMessage =
                await DidcommMessage.packIntoSignedAndEncryptedMessages(
              alicePlainTextMassage,
              keyType: [
                bobDidDocument,
              ].getCommonKeyTypesInKeyAgreements().first,
              recipientDidDocuments: [bobDidDocument],
              keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
              encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
              signer: await aliceDidManager.getSigner(
                aliceDidDocument.assertionMethod.first.id,
              ),
            );

            final createdTime = DateTime.now().toUtc();
            final expiresTime = createdTime.add(const Duration(seconds: 60));

            final forwardMessage = ForwardMessage(
              id: const Uuid().v4(),
              to: [bobMediatorDocument.id],
              from: aliceDidDocument.id,
              next: bobDidDocument.id,
              expiresTime: expiresTime,
              attachments: [
                Attachment(
                  mediaType: 'application/json',
                  data: AttachmentData(
                    base64: base64UrlEncodeNoPadding(
                      aliceSignedAndEncryptedMessage.toJsonBytes(),
                    ),
                  ),
                ),
              ],
            );

            String? actualBodyContent;
            bool? telemetryMessageReceived;

            final completer = Completer<void>();

            await bobMediatorClient.listenForIncomingMessages(
              (message) async {
                final encryptedMessage = EncryptedMessage.fromJson(message);
                final senderDid = const JweHeaderConverter()
                    .fromJson(encryptedMessage.protected)
                    .subjectKeyId;

                final isMediatorTelemetryMessage =
                    senderDid?.contains('.affinidi.io') == true;

                final unpackedMessage =
                    await DidcommMessage.unpackToPlainTextMessage(
                  message: message,
                  recipientDidManager: bobDidManager,
                  validateAddressingConsistency: true,
                  expectedMessageWrappingTypes: [
                    isMediatorTelemetryMessage
                        ? MessageWrappingType.authcryptSignPlaintext
                        : MessageWrappingType.anoncryptSignPlaintext,
                  ],
                  expectedSigners: [
                    isMediatorTelemetryMessage
                        ? bobMediatorDocument.assertionMethod.first.didKeyId
                        : aliceDidDocument.assertionMethod.first.didKeyId,
                  ],
                );

                if (isMediatorTelemetryMessage) {
                  telemetryMessageReceived = true;
                } else {
                  actualBodyContent ??=
                      unpackedMessage.body?['content'] as String?;
                }

                if (actualBodyContent == expectedBodyContent &&
                    telemetryMessageReceived == true) {
                  await bobMediatorClient.disconnect();
                  completer.complete();
                }
              },
              onError: (Object error) => prettyPrint('error', object: error),
              accessToken: bobTokens.accessToken,
              cancelOnError: false,
            );

            await aliceMediatorClient.sendMessage(
              forwardMessage,
              accessToken: aliceTokens.accessToken,
            );

            await completer.future;

            expect(actualBodyContent, expectedBodyContent);
            expect(telemetryMessageReceived, isTrue);
          },
          retry: webSocketsTestRetries,
        );
      });
    }
  });
}
