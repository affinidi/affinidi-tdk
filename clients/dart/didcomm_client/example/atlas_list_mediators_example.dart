import 'package:affinidi_tdk_atm_client/didcomm_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

Future<void> main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'didcomm_client',
  );

  final senderKeyStore = InMemoryKeyStore();
  final senderWallet = PersistentWallet(senderKeyStore);

  final senderDidManager = DidPeerManager(
    wallet: senderWallet,
    store: InMemoryDidStore(),
  );

  const senderKeyId = 'sender-key-1';

  final senderPrivateKeyBytes = await extractPrivateKeyBytes(
    config.alicePrivateKeyPath,
  );

  await senderKeyStore.set(
    senderKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: senderPrivateKeyBytes,
    ),
  );

  await senderDidManager.addVerificationMethod(senderKeyId);

  final atmAtlasClient = await DidcommAtlasClient.init(
    didManager: senderDidManager,
  );

  final authTokens = await atmAtlasClient.authenticate();
  await atmAtlasClient.connect(accessToken: authTokens.accessToken);

  final existingInstances = await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokens.accessToken,
  );

  prettyPrint(
    'mediators',
    object: existingInstances,
  );

  await atmAtlasClient.mediatorClient.disconnect();
}
