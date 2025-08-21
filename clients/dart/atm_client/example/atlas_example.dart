import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../test/example_configs.dart';

void main() async {
  // Run commands below in your terminal to generate keys for Receiver:
  // openssl ecparam -name prime256v1 -genkey -noout -out example/keys/bob_private_key.pem

  // Create and run a DIDComm mediator, for instance https://github.com/affinidi/affinidi-tdk-rs/tree/main/crates/affinidi-messaging/affinidi-messaging-mediator or with https://portal.affinidi.com.
  // Copy its DID Document URL into example/mediator/mediator_did.txt.

  final senderKeyStore = InMemoryKeyStore();
  final senderWallet = PersistentWallet(senderKeyStore);

  final senderDidManager = DidPeerManager(
    wallet: senderWallet,
    store: InMemoryDidStore(),
  );

  final senderKeyId = 'sender-key-1';
  final senderPrivateKeyBytes =
      await extractPrivateKeyBytes(alicePrivateKeyPath);

  await senderKeyStore.set(
    senderKeyId,
    StoredKey(
      keyType: KeyType.p256,
      privateKeyBytes: senderPrivateKeyBytes,
    ),
  );

  await senderDidManager.addVerificationMethod(senderKeyId);
  final senderDidDocument = await senderDidManager.getDidDocument();

  final senderSigner = await senderDidManager.getSigner(
    senderDidDocument.authentication.first.id,
  );

  final mediatorDidDocument =
      await UniversalDIDResolver.defaultResolver.resolveDid(
    await readDid(mediatorDidPath),
  );

  final atmServiceRegistry = await AtmServiceRegistry.init();

  final senderMatchedDidKeyIds = senderDidDocument.matchKeysInKeyAgreement(
    otherDidDocuments: [
      mediatorDidDocument,
      ...atmServiceRegistry.all,
    ],
  );

  final mediatorClient = MediatorClient(
    mediatorDidDocument: mediatorDidDocument,
    keyPair: await senderDidManager.getKeyPairByDidKeyId(
      senderMatchedDidKeyIds.first,
    ),
    didKeyId: senderMatchedDidKeyIds.first,
    signer: senderSigner,
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

  final authTokes = await mediatorClient.authenticate();

  final atmAtlasClient = AtmMessagingAtlasClient(
    mediatorClient: mediatorClient,
    didManager: senderDidManager,
    atmServiceRegistry: atmServiceRegistry,
  );

  // Example 1: Get list of mediator instances
  prettyPrint('Getting mediator instances list...');

  final listResponse = await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokes.accessToken,
  );

  prettyPrint(
    'Mediator instances',
    object: listResponse.instances,
  );

  // Example 2: Deploy a new mediator instance
  prettyPrint('Deploying new mediator instance...');

  final deployResponse = await atmAtlasClient.deployMediatorInstance(
    accessToken: authTokes.accessToken,
    deploymentData: {
      'name': 'example-mediator',
      'description': 'Example mediator instance',
    },
  );

  prettyPrint(
    'Deploy response',
    object: deployResponse.body,
  );

  // Example 3: Get mediator instance metadata
  if (listResponse.instances.isNotEmpty) {
    prettyPrint('Getting mediator instance metadata...');
    
    final mediatorId = listResponse.instances.first.id;
    final metadataResponse = await atmAtlasClient.getMediatorInstanceMetadata(
      accessToken: authTokes.accessToken,
      mediatorId: mediatorId,
    );

    prettyPrint(
      'Metadata response',
      object: metadataResponse.body,
    );
  }

  // Example 4: Update mediator instance deployment
  if (listResponse.instances.isNotEmpty) {
    prettyPrint('Updating mediator instance deployment...');
    
    final mediatorId = listResponse.instances.first.id;
    final updateDeployResponse = await atmAtlasClient.updateMediatorInstanceDeployment(
      accessToken: authTokes.accessToken,
      mediatorId: mediatorId,
      deploymentData: {
        'description': 'Updated description',
      },
    );

    prettyPrint(
      'Update deployment response',
      object: updateDeployResponse.body,
    );
  }

  // Example 5: Update mediator instance configuration
  if (listResponse.instances.isNotEmpty) {
    prettyPrint('Updating mediator instance configuration...');
    
    final mediatorId = listResponse.instances.first.id;
    final updateConfigResponse = await atmAtlasClient.updateMediatorInstanceConfiguration(
      accessToken: authTokes.accessToken,
      mediatorId: mediatorId,
      configurationData: {
        'logLevel': 'debug',
      },
    );

    prettyPrint(
      'Update configuration response',
      object: updateConfigResponse.body,
    );
  }

  // Example 6: Get mediators requests
  prettyPrint('Getting mediators requests...');

  final requestsResponse = await atmAtlasClient.getMediatorsRequests(
    accessToken: authTokes.accessToken,
    limit: 10,
  );

  prettyPrint(
    'Requests response',
    object: requestsResponse.body,
  );

  // Example 7: Get CloudWatch metrics
  if (listResponse.instances.isNotEmpty) {
    prettyPrint('Getting CloudWatch metrics...');
    
    final mediatorId = listResponse.instances.first.id;
    final metricsResponse = await atmAtlasClient.getMediatorCloudwatchMetricData(
      accessToken: authTokes.accessToken,
      mediatorId: mediatorId,
      metricId: 'MessageCount',
      startDate: DateTime.now().subtract(const Duration(days: 1)).toIso8601String(),
      endDate: DateTime.now().toIso8601String(),
      period: 3600,
    );

    prettyPrint(
      'CloudWatch metrics',
      object: metricsResponse.body,
    );
  }

  // Example 8: Destroy mediator instance (commented out to prevent accidental deletion)
  // if (listResponse.instances.isNotEmpty) {
  //   prettyPrint('Destroying mediator instance...');
  //   
  //   final mediatorId = listResponse.instances.first.id;
  //   final destroyResponse = await atmAtlasClient.destroyMediatorInstance(
  //     accessToken: authTokes.accessToken,
  //     mediatorId: mediatorId,
  //   );
  //
  //   prettyPrint(
  //     'Destroy response',
  //     object: destroyResponse.body,
  //   );
  // }
}
