import 'package:affinidi_tdk_atm_client/atm_client.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/deploy_mediator_instance_request.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/update_mediator_instance_configuration_request.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/update_mediator_instance_deployment_request.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
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

        final mediatorId = listResponse.instances.first.id;

        final response = await sut.getMediatorInstanceMetadata(
          accessToken: authTokens.accessToken,
          mediatorId: mediatorId,
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/getMediatorInstanceMetadata/response');
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

        final mediatorId = listResponse.instances.first.id;

        final response = await sut.updateMediatorInstanceDeployment(
          accessToken: authTokens.accessToken,
          mediatorId: mediatorId,
          deploymentData: UpdateMediatorInstanceDeploymentRequest(
            mediatorId: mediatorId,
            autoScaling: true,
            minInstances: 1,
            maxInstances: 3,
          ),
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response');
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

        final mediatorId = listResponse.instances.first.id;

        final response = await sut.updateMediatorInstanceConfiguration(
          accessToken: authTokens.accessToken,
          mediatorId: mediatorId,
          configurationData: UpdateMediatorInstanceConfigurationRequest(
            mediatorId: mediatorId,
            logLevel: 'debug',
          ),
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response');
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
      });
    });

    group('Deploy-List-Delete Flow', () {
      test('should deploy, list, and delete a mediator instance', () async {
        final sut = await AtmAtlasClient.init(
          didManager: didManager,
        );

        final authTokens = await sut.authenticate();

        final deploymentData = DeployMediatorInstanceRequest(
          name:
              'test-deploy-list-delete-${DateTime.now().millisecondsSinceEpoch}',
          description: 'Integration test mediator instance',
        );

        final deployResponse = await sut.deployMediatorInstance(
          accessToken: authTokens.accessToken,
          deploymentData: deploymentData,
        );
        expect(deployResponse.body, isNotNull);
        expect(deployResponse.type.toString(),
            'affinidi.io/operations/ama/deployMediatorInstance/response');

        final deployResponseData = deployResponse.response;
        expect(deployResponseData.mediatorId, isNotNull);
        expect(deployResponseData.status, isNotNull);
        expect(deployResponseData.status.toLowerCase(),
            anyOf(contains('deploy'), contains('start'), contains('progress')),
            reason: 'Expected deployment status message');

        final mediatorId = deployResponseData.mediatorId;
        final listResponse = await sut.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
        );

        expect(listResponse.body, isNotNull);
        expect(listResponse.type.toString(),
            'affinidi.io/operations/ama/getMediatorInstancesList/response');
        expect(listResponse.instances, isNotEmpty,
            reason: 'Expected non-empty list of mediator instances');
        final deployedInstance = listResponse.instances
            .where((instance) => instance.id == mediatorId)
            .firstOrNull;
        expect(deployedInstance, isNotNull,
            reason: 'Expected to find the deployed instance in the list');
        final deleteResponse = await sut.destroyMediatorInstance(
          accessToken: authTokens.accessToken,
          mediatorId: mediatorId,
        );
        expect(deleteResponse.body, isNotNull);
        expect(deleteResponse.type.toString(),
            'affinidi.io/operations/ama/destroyMediatorInstance/response');

        final deleteResponseData = deleteResponse.response;
        expect(deleteResponseData.mediatorId, equals(mediatorId));
        expect(deleteResponseData.status, isNotNull);
        expect(deleteResponseData.status.toLowerCase(),
            anyOf(contains('destroy'), contains('delete'), contains('remove')),
            reason: 'Expected deletion status message');
      });
    });
  });
}
