import 'package:affinidi_tdk_didcomm_client/didcomm_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'test_config.dart';

Future<void> main() async {
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_client',
  );

  group('Atlas Integration Tests', () {
    late DidManager didManager;

    setUp(() async {
      final keyStore = InMemoryKeyStore();
      final wallet = PersistentWallet(keyStore);

      didManager = DidPeerManager(
        wallet: wallet,
        store: InMemoryDidStore(),
      );

      // Load Alice's private key from file
      final keyId = 'alice-key-1';
      final privateKeyBytes = await extractPrivateKeyBytes(
        config.alicePrivateKeyPath,
      );

      await keyStore.set(
        keyId,
        StoredKey(
          keyType: KeyType.p256,
          privateKeyBytes: privateKeyBytes,
        ),
      );

      await didManager.addVerificationMethod(keyId);
      print((await didManager.getDidDocument()).id);
    });

    group('dummy group', () {
      test('dummy test', () async {
        final sut = await DidcommAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();

        final actual = await sut.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
        );

        expect(actual.instances, isNotNull);
      });
    });
  }, timeout: const Timeout(Duration(minutes: 10)));
}
