import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../test/example_configs.dart';

// TODO: Configure private keys and mediator DID on CI
void main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

  // Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
  // Copy its DID Document URL into example/mediator/mediator_did.txt.

  final receiverKeyStore = InMemoryKeyStore();
  final receiverWallet = PersistentWallet(receiverKeyStore);

  final receiverDidManager = DidKeyManager(
    wallet: receiverWallet,
    store: InMemoryDidStore(),
  );

  final receiverKeyId = 'receiver-key-1';

  final receiverPrivateKeyBytes = await extractPrivateKeyBytes(
    alicePrivateKeyPath,
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

  final receiverMediatorDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(
    await readDid(mediatorDidPath),
  );

  final receiverSigner = await receiverDidManager.getSigner(
    receiverDidDocument.assertionMethod.first.id,
  );

  final receiverMatchedDidKeyIds = receiverDidDocument.matchKeysInKeyAgreement(
    otherDidDocuments: [
      receiverMediatorDocument,
      // receiver only sends messages to the mediator, so we don't need to match keys with sender's DID Document
    ],
  );

  final receiverMediatorClient = MediatorClient(
    mediatorDidDocument: receiverMediatorDocument,
    keyPair: await receiverDidManager.getKeyPairByDidKeyId(
      receiverMatchedDidKeyIds.first,
    ),
    didKeyId: receiverMatchedDidKeyIds.first,
    signer: receiverSigner,
  );

  final receiverTokens = await receiverMediatorClient.authenticate();
  prettyPrint('Receiver is fetching messages...');

  final messageIds = await receiverMediatorClient.listInboxMessageIds(
    accessToken: receiverTokens.accessToken,
  );

  final messages = await receiverMediatorClient.receiveMessages(
    messageIds: messageIds,
    accessToken: receiverTokens.accessToken,
  );

  for (final message in messages) {
    final originalPlainTextMessageFromSender =
        await DidcommMessage.unpackToPlainTextMessage(
      message: message,
      recipientDidManager: receiverDidManager,
      expectedMessageWrappingTypes: [
        MessageWrappingType.anoncryptSignPlaintext,
      ],
    );

    prettyPrint(
      'Unpacked Plain Text Message received by Receiver via Mediator',
      object: originalPlainTextMessageFromSender,
    );
  }
}
