import 'package:mediator_client/mediator_client.dart';

import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../test/example_configs.dart';

// TODO: Configure private keys and mediator DID on CI
void main() async {
  // Run commands below in your terminal to generate keys for Alice and Bob:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

  // Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
  // Copy its DID Document URL into example/mediator/mediator_did.txt.

  final aliceKeyStore = InMemoryKeyStore();
  final aliceWallet = PersistentWallet(aliceKeyStore);

  final aliceDidManager = DidKeyManager(
    wallet: aliceWallet,
    store: InMemoryDidStore(),
  );

  final bobKeyStore = InMemoryKeyStore();
  final bobWallet = PersistentWallet(bobKeyStore);

  final bobDidManager = DidKeyManager(
    wallet: bobWallet,
    store: InMemoryDidStore(),
  );

  final aliceKeyId = 'alice-key-1';
  final alicePrivateKeyBytes = await extractPrivateKeyBytes(
    alicePrivateKeyPath,
  );

  await aliceKeyStore.set(
    aliceKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: alicePrivateKeyBytes,
    ),
  );

  await aliceDidManager.addVerificationMethod(aliceKeyId);
  final aliceDidDocument = await aliceDidManager.getDidDocument();

  prettyPrint(
    'Alice DID',
    object: aliceDidDocument.id,
  );

  final aliceSigner = await aliceDidManager.getSigner(
    aliceDidDocument.assertionMethod.first.id,
  );

  final bobKeyId = 'bob-key-1';
  final bobPrivateKeyBytes = await extractPrivateKeyBytes(bobPrivateKeyPath);

  await bobKeyStore.set(
    bobKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: bobPrivateKeyBytes,
    ),
  );

  await bobDidManager.addVerificationMethod(bobKeyId);
  final bobDidDocument = await bobDidManager.getDidDocument();

  // Serialized bobDidDocument needs to shared with sender
  prettyPrint(
    'Bob DID Document',
    object: bobDidDocument,
  );

  final bobMediatorDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(
    await readDid(mediatorDidPath),
  );

  final bobSigner = await bobDidManager.getSigner(
    bobDidDocument.assertionMethod.first.id,
  );

  final alicePlainTextMassage = PlainTextMessage(
    id: const Uuid().v4(),
    from: aliceDidDocument.id,
    to: [bobDidDocument.id],
    type: Uri.parse('https://didcomm.org/example/1.0/message'),
    body: {'content': 'Hello, Bob!'},
  );

  alicePlainTextMassage['custom-header'] = 'custom-value';

  prettyPrint(
    'Plain Text Message for Bob',
    object: alicePlainTextMassage,
  );

  final aliceSignedAndEncryptedMessage =
      await DidcommMessage.packIntoSignedAndEncryptedMessages(
    alicePlainTextMassage,
    keyType: [bobDidDocument].getCommonKeyTypesInKeyAgreements().first,
    recipientDidDocuments: [bobDidDocument],
    keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
    encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    signer: aliceSigner,
  );

  prettyPrint(
    'Encrypted and Signed Message by Alice',
    object: aliceSignedAndEncryptedMessage,
  );

  final createdTime = DateTime.now().toUtc();
  final expiresTime = createdTime.add(const Duration(seconds: 60));

  final forwardMessage = ForwardMessage(
    id: const Uuid().v4(),
    to: [bobMediatorDocument.id],
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

  prettyPrint(
    'Forward Message for Mediator that wraps Encrypted Message for Bob',
    object: forwardMessage,
  );

  // find keys whose curve is common with keys in mediator's did document
  final aliceMatchedDidKeyIds = aliceDidDocument.matchKeysInKeyAgreement(
    otherDidDocuments: [
      bobMediatorDocument,
    ],
  );

  final aliceMediatorClient = MediatorClient(
      mediatorDidDocument: bobMediatorDocument,
      keyPair: await aliceDidManager.getKeyPairByDidKeyId(
        aliceMatchedDidKeyIds.first,
      ),
      didKeyId: aliceMatchedDidKeyIds.first,
      signer: aliceSigner,

      // optional. if omitted defaults will be used
      forwardMessageOptions: const ForwardMessageOptions(
        shouldSign: true,
        shouldEncrypt: true,
        keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
        encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
      ));

  // authenticate method is not direct part of mediatorClient, but it is extension method
  // this method is need for mediators, that require authentication like an Affinidi mediator
  final aliceTokens = await aliceMediatorClient.authenticate();

  final bobMatchedDidKeyIds = bobDidDocument.matchKeysInKeyAgreement(
    otherDidDocuments: [
      bobMediatorDocument,
      // bob only sends messages to the mediator, so we don't need to match keys with Alice's DID Document
    ],
  );

  final bobMediatorClient = MediatorClient(
    mediatorDidDocument: bobMediatorDocument,
    keyPair: await bobDidManager.getKeyPairByDidKeyId(
      bobMatchedDidKeyIds.first,
    ),
    didKeyId: bobMatchedDidKeyIds.first,
    signer: bobSigner,
    webSocketOptions: const WebSocketOptions(
      statusRequestMessageOptions: StatusRequestMessageOptions(
        shouldSend: true,
        shouldSign: true,
        shouldEncrypt: true,
      ),
      liveDeliveryChangeMessageOptions: LiveDeliveryChangeMessageOptions(
        shouldSend: true,
        shouldSign: true,
        shouldEncrypt: true,
      ),
    ),
  );

  final bobTokens = await bobMediatorClient.authenticate();

  prettyPrint('Bob is waiting for a message...');

  await bobMediatorClient.listenForIncomingMessages(
    (message) async {
      final encryptedMessage = EncryptedMessage.fromJson(message);
      final senderDid = const JweHeaderConverter()
          .fromJson(encryptedMessage.protected)
          .subjectKeyId;

      final isMediatorTelemetryMessage =
          senderDid?.contains('.affinidi.io') == true;

      final unpackedMessageByBob =
          await DidcommMessage.unpackToPlainTextMessage(
        message: message,
        recipientDidManager: bobDidManager,
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

      prettyPrint(
        'Unpacked Plain Text Message received by Bob via Mediator',
        object: unpackedMessageByBob,
      );

      await bobMediatorClient.disconnect();
    },
    onError: (dynamic error) => prettyPrint('error', object: error),
    onDone: () => prettyPrint('done'),
    accessToken: bobTokens.accessToken,
    cancelOnError: false,
  );

  await aliceMediatorClient.sendMessage(
    forwardMessage,
    accessToken: aliceTokens.accessToken,
  );
}
