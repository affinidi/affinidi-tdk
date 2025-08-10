import 'dart:convert';

import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../test/example_configs.dart';

// TODO: Configure private keys and mediator DID on CI
void main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

  // Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
  // Copy its DID Document URL into example/mediator/mediator_did.txt.

  // Replace this DID Document with your receiver DID Document
  final receiverDidDocument = DidDocument.fromJson(jsonDecode('''
    {
      "id": "did:key:zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy",
      "@context": [
        "https://www.w3.org/ns/did/v1",
        "https://ns.did.ai/suites/multikey-2021/v1/"
      ],
      "verificationMethod": [
        {
          "id": "did:key:zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy#zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy",
          "controller": "did:key:zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy",
          "type": "P256Key2021",
          "publicKeyMultibase": "zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy"
        }
      ],
      "authentication": [
        "did:key:zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy#zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy"
      ],
      "capabilityDelegation": [
        "did:key:zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy#zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy"
      ],
      "capabilityInvocation": [
        "did:key:zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy#zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy"
      ],
      "keyAgreement": [
        "did:key:zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy#zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy"
      ],
      "assertionMethod": [
        "did:key:zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy#zDnaemfWXqUu9bSWWEAVb4KNfbPC1Ca5AftrkiuDeUDdw1eMy"
      ]
    }
  '''));

  final messageForReceiver = 'Hello, Bob!';

  final senderKeyStore = InMemoryKeyStore();
  final senderWallet = PersistentWallet(senderKeyStore);

  final senderDidManager = DidKeyManager(
    wallet: senderWallet,
    store: InMemoryDidStore(),
  );

  final senderKeyId = 'alice-key-1';
  final senderPrivateKeyBytes =
      await extractPrivateKeyBytes(alicePrivateKeyPath);

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
    await readDid(mediatorDidPath),
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

  // find keys whose curve is common in other DID Documents
  final senderMatchedDidKeyIds = senderDidDocument.matchKeysInKeyAgreement(
    otherDidDocuments: [
      receiverDidDocument,
    ],
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

  final senderMediatorClient = MediatorClient(
    mediatorDidDocument: receiverMediatorDidDocument,
    keyPair: await senderDidManager.getKeyPairByDidKeyId(
      senderMatchedDidKeyIds.first,
    ),
    didKeyId: senderMatchedDidKeyIds.first,
    signer: senderSigner,
    // optional. if omitted defaults will be used
    forwardMessageOptions: const ForwardMessageOptions(
      shouldSign: true,
      shouldEncrypt: true,
      keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
      encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    ),
  );

  // authenticate method is not direct part of mediatorClient, but it is extension method
  // this method is need for mediators, that require authentication like an Affinidi mediator
  final aliceTokens = await senderMediatorClient.authenticate();

  await senderMediatorClient.sendMessage(
    forwardMessage,
    accessToken: aliceTokens.accessToken,
  );

  prettyPrint('The message has been sent');
}
