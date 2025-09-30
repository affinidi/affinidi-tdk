import 'package:affinidi_tdk_atm_client/atm_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:retry/retry.dart';
import 'package:ssi/ssi.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

Future<void> main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem

  final retryOptions = const RetryOptions(
    maxAttempts: 100,
    maxDelay: Duration(seconds: 10),
    delayFactor: Duration(seconds: 10),
  );

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'atm_client',
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

  final atmAtlasClient = await AtmAtlasClient.init(
    didManager: senderDidManager,
  );

  var authTokens = await atmAtlasClient.authenticate();
  await atmAtlasClient.connect(accessToken: authTokens.accessToken);

  final messageQueue =
      await atmAtlasClient.mediatorClient.fetchMessagesStartingFrom(
    accessToken: authTokens.accessToken,
  );

  print(messageQueue.length);

  prettyPrint('Checking if there are deployed mediators...');

  final existingInstances = await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokens.accessToken,
  );

  if (existingInstances.instances.isNotEmpty) {
    prettyPrint('Cleaning previously deployed mediators...');
    final cleaningStart = DateTime.now();

    for (final instance in existingInstances.instances) {
      final destroyResponse = await atmAtlasClient.destroyMediatorInstance(
        accessToken: authTokens.accessToken,
        mediatorId: instance.id,
      );

      prettyPrint(
        'Destroy response',
        object: destroyResponse,
      );
    }

    // wait for deletion
    await retryOptions.retry(
      () async {
        final list = await atmAtlasClient.getMediatorInstancesList(
          accessToken: authTokens.accessToken,
        );

        if (list.instances.isNotEmpty) {
          prettyPrint('destroying...');
          throw Exception('Deployed mediator instances found.');
        }
      },
      retryIf: (e) =>
          e.toString() == 'Exception: Deployed mediator instances found.',
    );

    prettyPrint(
      'Cleaning previously deployed mediators completed in ${DateTime.now().difference(cleaningStart).inMinutes} minutes.',
    );
  }

  prettyPrint('Deploying mediator...');

  final deploymentStart = DateTime.now();

  authTokens = await atmAtlasClient.authenticate();
  await atmAtlasClient.connect(accessToken: authTokens.accessToken);

  final deploymentResponse = await atmAtlasClient.deployMediatorInstance(
    accessToken: authTokens.accessToken,
    deploymentData: DeployMediatorInstanceRequest(
      serviceSize: 'tiny',
      mediatorAclMode: 'explicit_deny',
      name: 'Example Mediator',
      description: 'Example mediator created by atlas_example.dart',
    ),
  );

  final deployedMediator = deploymentResponse.response;

  prettyPrint(
    'Deployment response',
    object: deploymentResponse,
  );

  // wait for completed deployment
  await retryOptions.retry(
    () async {
      final list = await atmAtlasClient.getMediatorInstancesList(
        accessToken: authTokens.accessToken,
      );

      if (list.instances.any(
        (instance) => instance.deploymentStatus != 'CREATE_COMPLETE',
      )) {
        prettyPrint('deploying...');
        throw Exception('Mediator is still deploying.');
      }
    },
    retryIf: (e) => e.toString() == 'Exception: Mediator is still deploying.',
  );

  prettyPrint(
    'Deploying mediator completed in ${DateTime.now().difference(deploymentStart).inMinutes} minutes.',
  );

  final deployedMediatorsResponse =
      await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokens.accessToken,
  );

  prettyPrint(
    'Get mediators response',
    object: deployedMediatorsResponse,
  );

  // final updateDeploymentResponse =
  //     await atmAtlasClient.updateMediatorInstanceDeployment(
  //   accessToken: authTokens.accessToken,
  //   deploymentData: UpdateMediatorInstanceDeploymentRequest(
  //     mediatorId: deployedMediator.mediatorId,
  //     name: 'Example Mediator Updated',
  //     description: 'Updated by atlas_example.dart',
  //   ),
  // );

  // prettyPrint(
  //   'Deployment update response',
  //   object: {'message': updateDeploymentResponse.response.message ?? ''},
  // );

  // final updateConfigurationResponse =
  //     await atmAtlasClient.updateMediatorInstanceConfiguration(
  //   accessToken: authTokens.accessToken,
  //   configurationData: UpdateMediatorInstanceConfigurationRequest(
  //     mediatorId: deployedMediator.mediatorId,
  //     acl: const {
  //       'did:example:alice': 1,
  //       'did:example:bob': 2,
  //       'did:example:charlie': 3,
  //     },
  //   ),
  // );

  // prettyPrint(
  //   'Configuration update response',
  //   object: {'message': updateConfigurationResponse.response.message ?? ''},
  // );

  // final metadataResponse = await atmAtlasClient.getMediatorInstanceMetadata(
  //   accessToken: authTokens.accessToken,
  //   mediatorId: deployedMediator.mediatorId,
  // );

  // prettyPrint(
  //   'Metadata response',
  //   object: metadataResponse,
  // );

  prettyPrint('Destroying deployed mediator instance...');
  final destroyingStart = DateTime.now();

  authTokens = await atmAtlasClient.authenticate();
  await atmAtlasClient.connect(accessToken: authTokens.accessToken);

  final destroyResponse = await atmAtlasClient.destroyMediatorInstance(
    accessToken: authTokens.accessToken,
    mediatorId: deployedMediator.mediatorId,
  );

  prettyPrint(
    'Destroy response',
    object: {'message': destroyResponse.response.message ?? ''},
  );

  // wait for deletion
  await retryOptions.retry(
    () async {
      final list = await atmAtlasClient.getMediatorInstancesList(
        accessToken: authTokens.accessToken,
      );

      if (list.instances.isNotEmpty) {
        prettyPrint('destroying...');
        throw Exception('Deployed mediator instances found.');
      }
    },
    retryIf: (e) =>
        e.toString() == 'Exception: Deployed mediator instances found.',
  );

  prettyPrint(
    'Destroying mediator completed in ${DateTime.now().difference(destroyingStart).inMinutes} minutes.',
  );

  await atmAtlasClient.mediatorClient.disconnect();
}
