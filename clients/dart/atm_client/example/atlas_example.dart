import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../test/example_configs.dart';

void main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem

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

  final atmAtlasClient = await AtmAtlasClient.init(
    didManager: senderDidManager,
  );

  final authTokes = await atmAtlasClient.authenticate();

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
