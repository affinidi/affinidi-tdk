import 'dart:io';

import 'package:affinidi_tdk_atlas_didcomm_client/affinidi_tdk_atlas_didcomm_client.dart';
import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../../../../tests/integration/dart/test/test_config.dart';

Future<void> main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'atlas_didcomm_client',
    skipMediator: true,
    skipBob: true,
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

  final atlasClient = await DidcommAtlasClient.init(
    didManager: senderDidManager,
    clientOptions:
        const AffinidiClientOptions(requestTimeout: Duration(minutes: 5)),
  );

  prettyPrint('Atlas DID', object: DidcommAtlasClient.atlasDid);
  prettyPrint('Atlas DID', object: Platform.environment);

  await ConnectionPool.instance.startConnections();

  final instances = await atlasClient.getMediatorInstancesList();

  prettyPrint(
    'Mediators',
    object: instances,
  );

  await ConnectionPool.instance.stopConnections();
}
