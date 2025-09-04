import 'package:affinidi_tdk_atm_client/atm_client.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/deploy_mediator_instance_request.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/update_mediator_instance_configuration_request.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/update_mediator_instance_deployment_request.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:retry/retry.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'test_config.dart';

Future<void> main() async {
  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_client',
  );

  group('Atlas', () {
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
      final privateKeyBytes =
          await extractPrivateKeyBytes(config.alicePrivateKeyPath);

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
      test(
        'should retrieve mediator instance metadata',
        () async {
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
        },
        timeout: const Timeout(Duration(minutes: 3)),
      );
    });

    group('updateMediatorInstanceDeployment', () {
      test(
        'should update mediator instance deployment',
        () async {
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
        },
        timeout: const Timeout(Duration(minutes: 5)),
      );
    });

    group('updateMediatorInstanceConfiguration', () {
      test(
        'should update mediator instance configuration',
        () async {
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
        },
        timeout: const Timeout(Duration(minutes: 5)),
      );
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
      }, timeout: const Timeout(Duration(minutes: 3)));

      test(
        'should handle pagination for requests',
        () async {
          final sut = await AtmAtlasClient.init(
            didManager: didManager,
          );

          final authTokens = await sut.authenticate();

          final response = await sut.getMediatorsRequests(
            accessToken: authTokens.accessToken,
            limit: 5,
          );

          expect(response.body, isNotNull);
        },
        timeout: const Timeout(Duration(minutes: 3)),
      );
    });

    group('getMediatorCloudwatchMetricData', () {
      test(
        'should retrieve CloudWatch metrics',
        () async {
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
            startDate: DateTime.now().subtract(const Duration(hours: 1)),
            endDate: DateTime.now(),
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/getMediatorCloudwatchMetricData/response');
        },
        timeout: const Timeout(Duration(minutes: 3)),
      );
    });

    group('Deploy-List-Delete Flow', () {
      test(
        'should deploy, list, and delete a mediator instance',
        () async {
          final sut = await AtmAtlasClient.init(
            didManager: didManager,
          );

          final authTokens = await sut.authenticate();

          // Step 1: Deploy a new mediator instance
          final deploymentData = DeployMediatorInstanceRequest(
            name:
                'test-deploy-list-delete-${DateTime.now().millisecondsSinceEpoch}',
            description: 'Integration test mediator instance',
          );

          final deployResponse = await sut.deployMediatorInstance(
            accessToken: authTokens.accessToken,
            deploymentData: deploymentData,
          );

          //TODO: Parse and expect the values in the body
          expect(deployResponse.body, isNotNull);
          expect(deployResponse.type.toString(),
              'affinidi.io/operations/ama/deployMediatorInstance/response');

          final deployResponseData = deployResponse.response;
          expect(deployResponseData.mediatorId, isNotNull);

          expect(
            deployResponseData.status,
            //TODO: Make sure the value is correct and only one case - Run first to see the list
            '',
            reason: 'Expected deployment status message',
          );

          final mediatorId = deployResponseData.mediatorId;

          // Wait for deployment to complete (retry for up to 20 minutes with 5-second delays)
          final retryOptions = RetryOptions(
            maxAttempts: 240, // 240 attempts * 5 seconds = 20 minutes
            delayFactor: const Duration(seconds: 5),
            maxDelay: const Duration(seconds: 5),
          );

          await retryOptions.retry(
            () async {
              final listResponse = await sut.getMediatorInstancesList(
                accessToken: authTokens.accessToken,
              );

              final instance =
                  listResponse.instances.firstWhere((i) => i.id == mediatorId);

              // Check if deployment is complete
              if (instance.deploymentState.toLowerCase() != 'deployed' &&
                  instance.deploymentState.toLowerCase() != 'running') {
                throw Exception(
                  'Mediator not yet deployed. Current state: ${instance.deploymentState}',
                );
              }
            },
            retryIf: (e) => true,
          );

          // Step 2: List mediator instances and verify deployment
          final listResponse = await sut.getMediatorInstancesList(
            accessToken: authTokens.accessToken,
          );

          //TODO: Parse and expect the values in the body
          expect(listResponse.body, isNotNull);
          expect(listResponse.type.toString(),
              'affinidi.io/operations/ama/getMediatorInstancesList/response');
          expect(
            listResponse.instances.length,
            1,
            reason: 'Expected non-empty list of mediator instances',
          );

          final deployedInstance = listResponse.instances.first;
          expect(deployedInstance.id, mediatorId);

          // Step 3: Get metadata for the deployed instance
          final metadataResponse = await sut.getMediatorInstanceMetadata(
            accessToken: authTokens.accessToken,
            mediatorId: mediatorId,
          );

          //TODO: Parse and expect the values in the body
          expect(metadataResponse.body, isNotNull);
          expect(metadataResponse.type.toString(),
              'affinidi.io/operations/ama/getMediatorInstanceMetadata/response');
          expect(metadataResponse.metadata.mediatorId, equals(mediatorId));

          // Step 4: Update deployment configuration (e.g., auto-scaling)
          final updateDeploymentResponse =
              await sut.updateMediatorInstanceDeployment(
            accessToken: authTokens.accessToken,
            mediatorId: mediatorId,
            deploymentData: UpdateMediatorInstanceDeploymentRequest(
              mediatorId: mediatorId,
              autoScaling: true,
              minInstances: 2,
              maxInstances: 5,
            ),
          );

          //TODO: Fetch the instance again to make sure it has been updated correctly
          //TODO: Remove equals and use the object directly
          //TODO: Remove the inNull expects - it is redundant
          //TODO: DateTime - @EpochSecondsConverter annotation - First check what format is expected (test and find out)

          expect(updateDeploymentResponse.type.toString(),
              'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response');
          expect(updateDeploymentResponse.response.mediatorId, mediatorId);

          // Step 5: Update runtime configuration (e.g., log level)
          final updateConfigResponse =
              await sut.updateMediatorInstanceConfiguration(
            accessToken: authTokens.accessToken,
            mediatorId: mediatorId,
            //TODO: First, fetch the Configuration/logLevel first and check more stricly - Check docs and use Enum for LogLevel
            configurationData: UpdateMediatorInstanceConfigurationRequest(
              mediatorId: mediatorId,
              logLevel: 'info',
            ),
          );

          //TODO: Fetch the configuration and check the update

          expect(updateConfigResponse.body, isNotNull);
          expect(updateConfigResponse.type.toString(),
              'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response');
          expect(updateConfigResponse.response.mediatorId, mediatorId);

          // Step 6: Get mediator requests (logs)
          final requestsResponse = await sut.getMediatorsRequests(
            accessToken: authTokens.accessToken,
            mediatorId: mediatorId,
            limit: 5,
          );

          expect(requestsResponse.body, isNotNull);
          expect(requestsResponse.type.toString(),
              'affinidi.io/operations/ama/getMediatorsRequests/response');

          // Step 7: Get CloudWatch metrics
          final metricsResponse = await sut.getMediatorCloudwatchMetricData(
            accessToken: authTokens.accessToken,
            mediatorId: mediatorId,
            metricId: 'MessageCount',
            startDate: DateTime.now().subtract(const Duration(hours: 1)),
            endDate: DateTime.now(),
          );

          expect(metricsResponse.body, isNotNull);
          expect(metricsResponse.type.toString(),
              'affinidi.io/operations/ama/getMediatorCloudwatchMetricData/response');

          // Step 8: Clean up - destroy the mediator instance
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

          // Wait for destroy to complete (retry for up to 20 minutes with 5-second delays)
          final destroyRetryOptions = RetryOptions(
            maxAttempts: 240, // 240 attempts * 5 seconds = 20 minutes
            delayFactor: const Duration(seconds: 5),
            maxDelay: const Duration(seconds: 5),
          );

          await destroyRetryOptions.retry(
            () async {
              final listResponse = await sut.getMediatorInstancesList(
                accessToken: authTokens.accessToken,
              );

              final instance =
                  listResponse.instances.firstWhere((i) => i.id == mediatorId);

              // Check if destroy is complete
              if (instance.deploymentState.toLowerCase() != 'destroyed') {
                throw Exception(
                  'Mediator not yet destroyed. Current state: ${instance.deploymentState}',
                );
              }
            },
            retryIf: (e) => true,
          );

          expect(
              deleteResponseData.status.toLowerCase(),
              //TODO: Make sure the value is correct and only one case - Run first to see the list
              '',
              reason: 'Expected deletion status message');
        },
      );
    });
  });
}
