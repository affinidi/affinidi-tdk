import 'package:affinidi_tdk_mediator_didcomm_client/mediator_didcomm_client.dart';
import 'package:ssi/ssi.dart';

import '../../../../../tests/integration/dart/test/test_config.dart';

void main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

  // Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
  // Copy its DID Document URL into example/mediator/mediator_did.txt.

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_didcomm_client',
  );

  final senderDid = await config.getDidKeyForPrivateKeyPath(
    config.alicePrivateKeyPath,
  );

  final receiverKeyStore = InMemoryKeyStore();
  final receiverWallet = PersistentWallet(receiverKeyStore);

  final receiverDidManager = DidKeyManager(
    wallet: receiverWallet,
    store: InMemoryDidStore(),
  );

  final receiverKeyId = 'receiver-key-1';

  final receiverPrivateKeyBytes = await extractPrivateKeyBytes(
    config.alicePrivateKeyPath,
  );

  await receiverKeyStore.set(
    receiverKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: receiverPrivateKeyBytes,
    ),
  );

  await receiverDidManager.addVerificationMethod(receiverKeyId);
  final receiverDidDocument = await receiverDidManager.getDidDocument();

  // Serialized receiverMediatorDocument needs to shared with sender
  prettyPrint(
    'Receiver DID Document',
    object: receiverDidDocument,
  );

  await config.configureAcl(
    mediatorDidDocument: await UniversalDIDResolver.defaultResolver.resolveDid(
      await readDid(config.mediatorDidPath),
    ),
    didManager: receiverDidManager,
    theirDids: [senderDid],
  );

  final receiverMediatorDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(
    await readDid(config.mediatorDidPath),
  );

  final receiverMediatorClient = await MediatorDidcommClient.init(
    authorizationProvider: await AffinidiAuthorizationProvider.init(
      didManager: receiverDidManager,
      mediatorDidDocument: receiverMediatorDocument,
    ),
    didManager: receiverDidManager,
    mediatorDidDocument: receiverMediatorDocument,
  );

  prettyPrint('Receiver is fetching messages...');

  final messages = await receiverMediatorClient.fetchMessages();

  for (final message in messages) {
    final originalPlainTextMessageFromSender =
        await DidcommMessage.unpackToPlainTextMessage(
      message: message,
      recipientDidManager: receiverDidManager,
      expectedMessageWrappingTypes: [
        MessageWrappingType.anoncryptSignPlaintext,
        MessageWrappingType.authcryptSignPlaintext,
        MessageWrappingType.authcryptPlaintext,
        MessageWrappingType.anoncryptAuthcryptPlaintext,
      ],
    );

    prettyPrint(
      'Unpacked Plain Text Message received by Receiver via Mediator',
      object: originalPlainTextMessageFromSender,
    );
  }
}
