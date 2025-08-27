import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'example_configs.dart';

Future<void> main() async {
  await configureTestFiles();

  group('Atlas', () async {
    late DidManager didManager;

    setUpAll(() async {
      final keyStore = InMemoryKeyStore();
      final wallet = PersistentWallet(keyStore);

      didManager = DidPeerManager(
        wallet: wallet,
        store: InMemoryDidStore(),
      );

      // Load Alice's private key from file
      final keyId = 'alice-key-1';
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

    group('getMediatorInstancesList', () async {
      test('should return a list of mediator instances', () async {
        // system under test
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();
        final response = await sut.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
        );

        expect(response.instances, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/getMediatorInstancesList/response');
      });

      test('should handle pagination parameters', () async {
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();
        final response = await sut.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
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

        // system under test
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();

        final response = await sut.deployMediatorInstance(
          accessToken: authTokens.accessToken,
          deploymentData: deploymentData,
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/deployMediatorInstance/response');
      });
    });

    group('getMediatorInstanceMetadata', () {
      test('should retrieve mediator instance metadata', () async {
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();

        // First get list to find a mediator ID
        final listResponse = await sut.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await sut.getMediatorInstanceMetadata(
            accessToken: authTokens.accessToken,
            mediatorId: mediatorId,
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/getMediatorInstanceMetadata/response');
        } else {
          prettyPrint('No mediator instances found, skipping metadata test');
        }
      });
    });

    group('destroyMediatorInstance', () {
      test('should destroy a mediator instance', skip: 'Destructive operation',
          () async {
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();
        // Deploy a test instance first
        final deployResponse = await sut.deployMediatorInstance(
          accessToken: authTokens.accessToken,
          deploymentData: {
            'name': 'test-destroy-${DateTime.now().millisecondsSinceEpoch}',
            'description': 'Test instance for destroy operation',
          },
        );

        if (deployResponse.body == null || deployResponse.body!['id'] == null) {
          throw Exception('Missing mediator ID in deploy response');
        }
        final mediatorId = deployResponse.body!['id'] as String;

        // Now destroy it
        final response = await sut.destroyMediatorInstance(
          accessToken: authTokens.accessToken,
          mediatorId: mediatorId,
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/destroyMediatorInstance/response');
      });
    });

    group('updateMediatorInstanceDeployment', () {
      test('should update mediator instance deployment', () async {
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();

        final listResponse = await sut.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await sut.updateMediatorInstanceDeployment(
            accessToken: authTokens.accessToken,
            mediatorId: mediatorId,
            deploymentData: {
              'description': 'Updated description at ${DateTime.now()}',
            },
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response');
        } else {
          prettyPrint(
              'No mediator instances found, skipping update deployment test');
        }
      });
    });

    group('updateMediatorInstanceConfiguration', () {
      test('should update mediator instance configuration', () async {
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();

        final listResponse = await sut.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await sut.updateMediatorInstanceConfiguration(
            accessToken: authTokens.accessToken,
            mediatorId: mediatorId,
            configurationData: {
              'logLevel': 'debug',
            },
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response');
        } else {
          prettyPrint(
              'No mediator instances found, skipping update configuration test');
        }
      });
    });

    group('getMediatorsRequests', () {
      test('should retrieve mediator requests', () async {
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();

        final response = await sut.getMediatorsRequests(
          accessToken: authTokens.accessToken,
          limit: 10,
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/getMediatorsRequests/response');
      });

      test('should handle pagination for requests', () async {
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();

        final response = await sut.getMediatorsRequests(
          accessToken: authTokens.accessToken,
          limit: 5,
        );

        expect(response.body, isNotNull);
      });
    });

    group('getMediatorCloudwatchMetricData', () {
      test('should retrieve CloudWatch metrics', () async {
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();

        final listResponse = await sut.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await sut.getMediatorCloudwatchMetricData(
            accessToken: authTokens.accessToken,
            mediatorId: mediatorId,
            metricId: 'MessageCount',
            startDate: DateTime.now()
                .subtract(const Duration(hours: 1))
                .toIso8601String(),
            endDate: DateTime.now().toIso8601String(),
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/getMediatorCloudwatchMetricData/response');
        } else {
          prettyPrint(
              'No mediator instances found, skipping CloudWatch metrics test');
        }
      });
    });
  });
}
