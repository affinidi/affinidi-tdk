import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'example_configs.dart';

void main() {
  group('Atlas Operations', () {
    late AtmServiceRegistry atmServiceRegistry;
    late MediatorClient mediatorClient;
    late DidManager didManager;
    late AtmMessagingAtlasClient atmAtlasClient;
    late String accessToken;

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

      final authTokens = await mediatorClient.authenticate();
      accessToken = authTokens.accessToken;

      atmAtlasClient = AtmMessagingAtlasClient(
        mediatorClient: mediatorClient,
        didManager: didManager,
        atmServiceRegistry: atmServiceRegistry,
      );
    });

    group('getMediatorInstancesList', () {
      test('should return a list of mediator instances', () async {
        final response = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        expect(response.instances, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/getMediatorInstancesList/response');
      });

      test('should handle pagination parameters', () async {
        final response = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
          limit: 10,
        );

        expect(response.instances, isNotNull);
      });
    });

    group('deployMediatorInstance', () {
      test('should deploy a new mediator instance', () async {
        final deploymentData = {
          'name': 'test-mediator-${DateTime.now().millisecondsSinceEpoch}',
          'description': 'Test mediator instance',
        };

        final response = await atmAtlasClient.deployMediatorInstance(
          accessToken: accessToken,
          deploymentData: deploymentData,
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/deployMediatorInstance/response');
      });
    });

    group('getMediatorInstanceMetadata', () {
      test('should retrieve mediator instance metadata', () async {
        // First get list to find a mediator ID
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await atmAtlasClient.getMediatorInstanceMetadata(
            accessToken: accessToken,
            mediatorId: mediatorId,
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/getMediatorInstanceMetadata/response');
        }
      });
    });

    group('destroyMediatorInstance', () {
      test('should destroy a mediator instance', () async {
        // First get list to find a mediator ID
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await atmAtlasClient.destroyMediatorInstance(
            accessToken: accessToken,
            mediatorId: mediatorId,
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/destroyMediatorInstance/response');
        }
      });
    });

    group('updateMediatorInstanceDeployment', () {
      test('should update mediator deployment settings', () async {
        // First get list to find a mediator ID
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final deploymentData = {
            'description': 'Updated description',
          };

          final response = await atmAtlasClient.updateMediatorInstanceDeployment(
            accessToken: accessToken,
            mediatorId: mediatorId,
            deploymentData: deploymentData,
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response');
        }
      });
    });

    group('updateMediatorInstanceConfiguration', () {
      test('should update mediator runtime configuration', () async {
        // First get list to find a mediator ID
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final configurationData = {
            'logLevel': 'debug',
          };

          final response = await atmAtlasClient.updateMediatorInstanceConfiguration(
            accessToken: accessToken,
            mediatorId: mediatorId,
            configurationData: configurationData,
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response');
        }
      });
    });

    group('getMediatorsRequests', () {
      test('should retrieve mediator request logs', () async {
        final response = await atmAtlasClient.getMediatorsRequests(
          accessToken: accessToken,
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/getMediatorsRequests/response');
      });

      test('should handle filtering by mediatorId', () async {
        // First get list to find a mediator ID
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await atmAtlasClient.getMediatorsRequests(
            accessToken: accessToken,
            mediatorId: mediatorId,
            limit: 5,
          );

          expect(response.body, isNotNull);
        }
      });
    });

    group('getMediatorCloudwatchMetricData', () {
      test('should retrieve CloudWatch metrics for mediator', () async {
        // First get list to find a mediator ID
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await atmAtlasClient.getMediatorCloudwatchMetricData(
            accessToken: accessToken,
            mediatorId: mediatorId,
            metricId: 'MessageCount',
            startDate: DateTime.now().subtract(const Duration(days: 1)).toIso8601String(),
            endDate: DateTime.now().toIso8601String(),
            period: 3600,
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/getMediatorCloudwatchMetricData/response');
        }
      });
    });
  });
}
