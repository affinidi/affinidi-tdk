import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../test/example_configs.dart';

void main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

  // Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
  // Copy its DID Document URL into example/mediator/mediator_did.txt.

  final senderKeyStore = InMemoryKeyStore();
  final senderWallet = PersistentWallet(senderKeyStore);

  final senderDidManager = DidPeerManager(
    wallet: senderWallet,
    store: InMemoryDidStore(),
  );

  final senderKeyId = 'sender-key-1';
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

  final senderSigner = await senderDidManager.getSigner(
    senderDidDocument.authentication.first.id,
  );

  final mediatorDidDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(
    await readDid(mediatorDidPath),
  );

  final atmServiceRegistry = await AtmServiceRegistry.init();

  final senderMatchedDidKeyIds = senderDidDocument.matchKeysInKeyAgreement(
    otherDidDocuments: [
      mediatorDidDocument,
      ...atmServiceRegistry.all,
    ],
  );

  final mediatorClient = MediatorClient(
    mediatorDidDocument: mediatorDidDocument,
    keyPair: await senderDidManager.getKeyPairByDidKeyId(
      senderMatchedDidKeyIds.first,
    ),
    didKeyId: senderMatchedDidKeyIds.first,
    signer: senderSigner,
    forwardMessageOptions: const ForwardMessageOptions(
      shouldSign: true,
      shouldEncrypt: true,
      keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
      encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
    ),
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

  final authTokes = await mediatorClient.authenticate();

  final atmAtlasClient = AtmMessagingAtlasClient(
    mediatorClient: mediatorClient,
    didManager: senderDidManager,
    atmServiceRegistry: atmServiceRegistry,
  );

  prettyPrint('Sending the message...');

  final responseMessage = await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokes.accessToken,
  );

  prettyPrint(
    'Response message',
    object: responseMessage,
  );

  prettyPrint(
    'Mediator instances',
    object: responseMessage.instances,
  );
}
