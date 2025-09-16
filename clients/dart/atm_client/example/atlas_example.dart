import 'package:affinidi_tdk_atm_client/atm_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

Future<void> main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/alice_private_key.pem

  final config = await TestConfig.configureTestFiles(
    packageDirectoryName: 'mediator_client',
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

  final authTokens = await atmAtlasClient.authenticate();

  prettyPrint('Cleaning previously deployed mediator instances...');
  final existingInstances = await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokens.accessToken,
  );

  for (final instance in existingInstances.instances) {
    prettyPrint(
      'Destroying mediator instance',
      object: {
        'mediatorId': instance.id,
        'name': instance.name,
      },
    );

    await atmAtlasClient.destroyMediatorInstance(
      accessToken: authTokens.accessToken,
      mediatorId: instance.id,
    );
  }

  prettyPrint('Deploying mediator instance...');
  final deployResponse = await atmAtlasClient.deployMediatorInstance(
    accessToken: authTokens.accessToken,
    deploymentData: DeployMediatorInstanceRequest(
      serviceSize: 'tiny',
      mediatorAclMode: 'explicit_deny',
      name: 'Example Mediator',
      description: 'Example mediator created by atlas_example.dart',
    ),
  );

  final deployedMediator = deployResponse.response;
  prettyPrint(
    'Mediator deployed',
    object: {
      'mediatorId': deployedMediator.mediatorId,
      'serviceRequestId': deployedMediator.serviceRequestId,
      'message': deployedMediator.message ?? '',
    },
  );

  final instancesAfterDeployment =
      await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokens.accessToken,
  );
  prettyPrint(
    'Mediator instances after deployment',
    object: instancesAfterDeployment.instances
        .map((MediatorInstance instance) => {
              'mediatorId': instance.id,
              'name': instance.name,
              'status': instance.deploymentStatus,
              'serviceSize': instance.serviceSize,
            })
        .toList(),
  );

  prettyPrint('Updating mediator deployment metadata...');
  final updateDeploymentResponse =
      await atmAtlasClient.updateMediatorInstanceDeployment(
    accessToken: authTokens.accessToken,
    mediatorId: deployedMediator.mediatorId,
    deploymentData: UpdateMediatorInstanceDeploymentRequest(
      mediatorId: deployedMediator.mediatorId,
      name: 'Example Mediator Updated',
      description: 'Updated by atlas_example.dart',
    ),
  );
  prettyPrint(
    'Deployment update response',
    object: {'message': updateDeploymentResponse.response.message ?? ''},
  );

  prettyPrint('Updating mediator configuration...');
  final updateConfigurationResponse =
      await atmAtlasClient.updateMediatorInstanceConfiguration(
    accessToken: authTokens.accessToken,
    mediatorId: deployedMediator.mediatorId,
    configurationData: UpdateMediatorInstanceConfigurationRequest(
      mediatorId: deployedMediator.mediatorId,
      acl: const {
        'did:example:alice': 1,
        'did:example:bob': 2,
        'did:example:charlie': 3,
      },
    ),
  );
  prettyPrint(
    'Configuration update response',
    object: {'message': updateConfigurationResponse.response.message ?? ''},
  );

  final metadataResponse = await atmAtlasClient.getMediatorInstanceMetadata(
    accessToken: authTokens.accessToken,
    mediatorId: deployedMediator.mediatorId,
  );
  final metadata = metadataResponse.metadata;
  prettyPrint(
    'Mediator metadata after updates',
    object: {
      'mediatorId': metadata.id,
      'name': metadata.name,
      'description': metadata.description,
      'deploymentStatus': metadata.deploymentStatus,
      'acl': metadata.acl?.toString() ?? 'not provided',
    },
  );

  prettyPrint('Destroying deployed mediator instance...');
  final destroyResponse = await atmAtlasClient.destroyMediatorInstance(
    accessToken: authTokens.accessToken,
    mediatorId: deployedMediator.mediatorId,
  );
  prettyPrint(
    'Destroy response',
    object: {'message': destroyResponse.response.message ?? ''},
  );

  final instancesAfterCleanup = await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokens.accessToken,
  );

  if (instancesAfterCleanup.instances.isEmpty) {
    prettyPrint('No mediator instances remain.');
  } else {
    prettyPrint(
      'Mediator instances still present',
      object: instancesAfterCleanup.instances
          .map((MediatorInstance instance) => {
                'mediatorId': instance.id,
                'name': instance.name,
              })
          .toList(),
    );
  }

  prettyPrint('Example completed.');
}
