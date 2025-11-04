import 'package:affinidi_tdk_mediator_didcomm_client/affinidi_tdk_mediator_didcomm_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../../../../tests/integration/dart/test/test_config.dart';

void main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

  // Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
  // Copy its DID Document URL into example/mediator/mediator_did.txt.

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_didcomm_client',
  );

  // Replace this DID Document with your receiver DID
  final receiverDid = await config.getDidKeyForPrivateKeyPath(
    config.bobPrivateKeyPath,
  );

  final receiverDidDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(
    receiverDid,
  );

  final messageForReceiver = 'Hello, Bob!';

  final senderKeyStore = InMemoryKeyStore();
  final senderWallet = PersistentWallet(senderKeyStore);

  final senderDidManager = DidKeyManager(
    wallet: senderWallet,
    store: InMemoryDidStore(),
  );

  final senderKeyId = 'alice-key-1';
  final senderPrivateKeyBytes =
      await extractPrivateKeyBytes(config.alicePrivateKeyPath);

  await senderKeyStore.set(
    senderKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: senderPrivateKeyBytes,
    ),
  );

  await senderDidManager.addVerificationMethod(senderKeyId);
  final senderDidDocument = await senderDidManager.getDidDocument();

  prettyPrint(
    'Sender DID',
    object: senderDidDocument.id,
  );

  final senderSigner = await senderDidManager.getSigner(
    senderDidDocument.assertionMethod.first.id,
  );

  final receiverMediatorDidDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(
    await readDid(config.mediatorDidPath),
  );

  final senderPlainTextMassage = PlainTextMessage(
    id: const Uuid().v4(),
    from: senderDidDocument.id,
    to: [receiverDidDocument.id],
    type: Uri.parse('https://didcomm.org/example/1.0/message'),
    body: {'content': messageForReceiver},
  );

  senderPlainTextMassage['custom-header'] = 'custom-value';

  prettyPrint(
    'Plain Text Message for Receiver',
    object: senderPlainTextMassage,
  );

  final senderSignedAndEncryptedMessage =
      await DidcommMessage.packIntoSignedAndEncryptedMessages(
    senderPlainTextMassage,
    keyType: [
      receiverDidDocument,
    ].getCommonKeyTypesInKeyAgreements().first,
    recipientDidDocuments: [receiverDidDocument],
    keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
    encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    signer: senderSigner,
  );

  prettyPrint(
    'Encrypted and Signed Message by Sender',
    object: senderSignedAndEncryptedMessage,
  );

  final createdTime = DateTime.now().toUtc();
  final expiresTime = createdTime.add(const Duration(seconds: 60));

  final forwardMessage = ForwardMessage(
    id: const Uuid().v4(),
    from: senderDidDocument.id,
    to: [receiverMediatorDidDocument.id],
    next: receiverDidDocument.id,
    expiresTime: expiresTime,
    attachments: [
      Attachment(
        mediaType: 'application/json',
        data: AttachmentData(
          base64: base64UrlEncodeNoPadding(
            senderSignedAndEncryptedMessage.toJsonBytes(),
          ),
        ),
      ),
    ],
  );

  prettyPrint(
    'Forward Message for Mediator that wraps Encrypted Message for Receiver',
    object: forwardMessage,
  );

  final senderMediatorClient = await MediatorDidcommClient.init(
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      mediatorDidDocument: receiverMediatorDidDocument,
      didManager: senderDidManager,
    ),
    didManager: senderDidManager,
    mediatorDidDocument: receiverMediatorDidDocument,
    clientOptions: const AffinidiClientOptions(),
  );

  await senderMediatorClient.sendMessage(
    forwardMessage,
  );

  prettyPrint('The message has been sent');
}
