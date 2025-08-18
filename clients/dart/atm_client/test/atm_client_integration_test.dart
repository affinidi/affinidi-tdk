import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'example_configs.dart';

void main() {
  group('getMediatorInstancesList', () {
    late AtmServiceRegistry atmServiceRegistry;
    late MediatorClient mediatorClient;
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
      final didDocument = await didManager.getDidDocument();

      final signer = await didManager.getSigner(
        didDocument.authentication.first.id,
      );

      final mediatorDidDocument =
          await UniversalDIDResolver.defaultResolver.resolveDid(
        await readDid(mediatorDidPath),
      );

      atmServiceRegistry = await AtmServiceRegistry.init();

      final senderMatchedDidKeyIds = didDocument.matchKeysInKeyAgreement(
        otherDidDocuments: [
          mediatorDidDocument,
          ...atmServiceRegistry.all,
        ],
      );

      mediatorClient = MediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        keyPair: await didManager.getKeyPairByDidKeyId(
          senderMatchedDidKeyIds.first,
        ),
        didKeyId: senderMatchedDidKeyIds.first,
        signer: signer,
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
    });

    test('should return a list of mediator instances', () async {
      // system under test
      final authTokes = await mediatorClient.authenticate();

      final sut = AtmMessagingAtlasClient(
        mediatorClient: mediatorClient,
        didManager: didManager,
        atmServiceRegistry: atmServiceRegistry,
      );

      final response = await sut.getMediatorInstancesList(
        accessToken: authTokes.accessToken,
      );

      expect(response.instances, isNotNull);
      // TODO: Uncomment when there wil be a way to create mediators on Atlas
      // expect(response.instances, isNotEmpty);
    });
  });
}
