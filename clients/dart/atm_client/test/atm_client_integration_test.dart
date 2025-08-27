import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'example_configs.dart';

Future<void> main() async {
  await configureTestFiles();

  group('getMediatorInstancesList', () {
    late DidManager didManager;

    setUp(() async {
      final keyStore = InMemoryKeyStore();
      final wallet = PersistentWallet(keyStore);

      didManager = DidPeerManager(
        wallet: wallet,
        store: InMemoryDidStore(),
      );

      final keyId = 'key-1';
      final privateKeyBytes = await extractPrivateKeyBytes(alicePrivateKeyPath);

      await keyStore.set(
        keyId,
        StoredKey(
          keyType: KeyType.p256,
          privateKeyBytes: privateKeyBytes,
        ),
      );

      await didManager.addVerificationMethod(keyId);
    });

    test('should return a list of mediator instances', () async {
      // system under test
      final sut = await AtmAtlasClient.init(
        didManager: didManager,
      );

      final authTokes = await sut.authenticate();
      final response = await sut.getMediatorInstancesList(
        accessToken: authTokes.accessToken,
      );

      expect(response.instances, isNotNull);
      // TODO: Uncomment when there wil be a way to create mediators on Atlas
      // expect(response.instances, isNotEmpty);
    });
  });
}
