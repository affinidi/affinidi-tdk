import 'package:affinidi_tdk_didcomm_client/didcomm_client.dart';
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

  final atlasClient = await DidcommAtlasClient.init(
    didManager: senderDidManager,
  );

  atlasClient.linkRequestsAndResponses();
  await ConnectionPool.instance.startConnections();

  prettyPrint('Checking if there are deployed mediators...');

  final existingInstances = await atlasClient.getMediatorInstancesList();

  if (existingInstances.instances.isNotEmpty) {
    prettyPrint('Cleaning previously deployed mediators...');
    final cleaningStart = DateTime.now();

    for (final instance in existingInstances.instances) {
      final destroyResponse = await atlasClient.destroyMediatorInstance(
        mediatorId: instance.id,
      );

      prettyPrint(
        'Destroy response',
        object: destroyResponse,
      );
    }

    // wait for deletion
    await _waitUntilMediators(
      predicate: (mediators) => mediators.isNotEmpty,
      atlasClient: atlasClient,
      firstTimeout: const Duration(minutes: 10),
      logMessage: 'destroying...',
    );

    prettyPrint(
      'Cleaning previously deployed mediators completed in ${DateTime.now().difference(cleaningStart).inMinutes} minutes.',
    );
  }

  prettyPrint('Deploying mediator...');

  final deploymentStart = DateTime.now();

  final deploymentResponse = await atlasClient.deployMediatorInstance(
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
  await _waitUntilMediators(
    predicate: (mediators) => mediators.any(
      (mediators) => mediators.deploymentStatus != 'CREATE_COMPLETE',
    ),
    atlasClient: atlasClient,
    firstTimeout: const Duration(minutes: 5),
    logMessage: 'deploying...',
  );

  prettyPrint(
    'Deploying mediator completed in ${DateTime.now().difference(deploymentStart).inMinutes} minutes.',
  );

  final deployedMediatorsResponse =
      await atlasClient.getMediatorInstancesList();

  prettyPrint(
    'Get mediators response',
    object: deployedMediatorsResponse,
  );

  prettyPrint('Destroying deployed mediator instance...');
  final destroyingStart = DateTime.now();

  final destroyResponse = await atlasClient.destroyMediatorInstance(
    mediatorId: deployedMediator.mediatorId,
  );

  prettyPrint(
    'Destroy response',
    object: destroyResponse,
  );

  // wait for deletion
  await _waitUntilMediators(
    predicate: (mediators) => mediators.isNotEmpty,
    atlasClient: atlasClient,
    firstTimeout: const Duration(minutes: 10),
    logMessage: 'destroying...',
  );

  prettyPrint(
    'Destroying mediator completed in ${DateTime.now().difference(destroyingStart).inMinutes} minutes.',
  );

  await ConnectionPool.instance.stopConnections();
}

Future<void> _waitUntilMediators({
  required bool Function(List<MediatorInstance>) predicate,
  required DidcommAtlasClient atlasClient,
  required Duration firstTimeout,
  required String logMessage,
}) async {
  final timeout = const Duration(seconds: 10);
  var attemptsLeft = 100;
  late GetMediatorInstancesListResponseMessage list;

  prettyPrint(logMessage);
  await Future<void>.delayed(firstTimeout);

  do {
    prettyPrint(logMessage);
    await Future<void>.delayed(timeout);

    list = await atlasClient.getMediatorInstancesList();

    if (--attemptsLeft == 0) {
      throw Exception('Reached the max number of attempts');
    }
  } while (predicate(list.instances));
}
