import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

void main() async {
  // Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
  // Configure ACL.
  // Copy its DID Document URL into example/mediator/mediator_with_acl_did.txt.

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_client',
  );

  final aliceKeyStore = InMemoryKeyStore();
  final aliceWallet = PersistentWallet(aliceKeyStore);

  final bobKeyStore = InMemoryKeyStore();
  final bobWallet = PersistentWallet(bobKeyStore);

  final aliceDidManager = DidKeyManager(
    wallet: aliceWallet,
    store: InMemoryDidStore(),
  );

  final bobDidManager = DidKeyManager(
    wallet: bobWallet,
    store: InMemoryDidStore(),
  );

  final aliceKeyId = 'alice-key-1';

  await aliceWallet.generateKey(
    keyId: aliceKeyId,
    keyType: KeyType.p256,
  );

  await aliceDidManager.addVerificationMethod(aliceKeyId);
  final aliceDidDocument = await aliceDidManager.getDidDocument();

  prettyPrint('Alice DID', object: aliceDidDocument.id);

  final aliceSigner = await aliceDidManager.getSigner(
    aliceDidDocument.assertionMethod.first.id,
  );

  final bobKeyId = 'bob-key-1';

  await bobWallet.generateKey(
    keyId: bobKeyId,
    keyType: KeyType.p256,
  );

  await bobDidManager.addVerificationMethod(bobKeyId);
  final bobDidDocument = await bobDidManager.getDidDocument();

  prettyPrint('Bob DID Document', object: bobDidDocument);

  final bobMediatorDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(
    await readDid(config.mediatorWithAclDidPath),
  );

  prettyPrint('Bob Mediator Document', object: bobMediatorDocument);

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

  prettyPrint('Plain Text Message for Bob', object: alicePlainTextMassage);

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
    from: aliceDidDocument.id,
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

  final aliceMatchedKeyIds = aliceDidDocument.matchKeysInKeyAgreement(
    otherDidDocuments: [bobMediatorDocument],
  );

  // Alice is going to use Bob's Mediator to send him a message
  final aliceMediatorClient = MediatorClient(
    mediatorDidDocument: bobMediatorDocument,
    keyPair: await aliceDidManager.getKeyPairByDidKeyId(
      aliceMatchedKeyIds.first,
    ),
    didKeyId: aliceMatchedKeyIds.first,
    signer: aliceSigner,
    forwardMessageOptions: const ForwardMessageOptions(
      shouldSign: true,
      shouldEncrypt: true,
      keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
      encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    ),
  );

  // authenticate method is not direct part of mediatorClient, but it is extension method
  // this method is need for mediators, that require authentication like an Affinidi mediator
  final aliceTokens = await aliceMediatorClient.authenticate();

  // Alice shall not send a message
  try {
    await aliceMediatorClient.sendMessage(
      forwardMessage,
      accessToken: aliceTokens.accessToken,
    );
    throw Exception(
        'No error, Alice did send a message, are we using a mediator with explicit allow per DID?');
  } on MediatorClientException catch (e) {
    if (!e.innerMessage
        .contains('Delivery blocked due to ACLs (access_list denied)')) {
      throw Exception('Unexpected error occurred: ${e.innerMessage}');
    }
    prettyPrint('Expected error occurred', object: e.innerMessage);
  } catch (e) {
    throw Exception('Unexpected error occurred: $e');
  }

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
    forwardMessageOptions: const ForwardMessageOptions(
      shouldSign: true,
      shouldEncrypt: true,
      keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
      encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    ),
  );

  final bobTokens = await bobMediatorClient.authenticate();

  // Bob needs to add Alice's DID to their ACL...
  final bobAccessListAddMessage = AccessListAddMessage(
    id: const Uuid().v4(),
    from: bobDidDocument.id,
    to: [bobMediatorDocument.id],
    theirDids: [aliceDidDocument.id],
    expiresTime: expiresTime,
  );

  prettyPrint('bobAccessListAddMessage', object: bobAccessListAddMessage);

  final bobAccessListAddSentMessage =
      await bobMediatorClient.sendAclManagementMessage(
    bobAccessListAddMessage,
    accessToken: bobTokens.accessToken,
  );

  prettyPrint(
    'bobAccessListAddSentMessage',
    object: bobAccessListAddSentMessage,
  );

  // ...only then Alice can send a message
  final sentMessage = await aliceMediatorClient.sendMessage(
    forwardMessage,
    accessToken: aliceTokens.accessToken,
  );

  prettyPrint('Encrypted and Signed Forward Message', object: sentMessage);

  prettyPrint('Bob is fetching messages...');

  final messageIds = await bobMediatorClient.listInboxMessageIds(
    accessToken: bobTokens.accessToken,
  );

  final messages = await bobMediatorClient.receiveMessages(
    messageIds: messageIds,
    deleteOnMediator: true,
    accessToken: bobTokens.accessToken,
  );

  for (final message in messages) {
    prettyPrint(
      'Raw message received by Bob via Mediator',
      object: message,
    );

    final originalPlainTextMessage =
        await DidcommMessage.unpackToPlainTextMessage(
      message: message,
      recipientDidManager: bobDidManager,
      expectedMessageWrappingTypes: [
        MessageWrappingType.anoncryptSignPlaintext,
        MessageWrappingType.authcryptPlaintext,
        MessageWrappingType.authcryptSignPlaintext,
      ],
    );

    prettyPrint(
      'Unpacked Plain Text Message received by Bob via Mediator',
      object: originalPlainTextMessage,
    );
  }
}
