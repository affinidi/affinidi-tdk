import 'package:affinidi_tdk_atm_client/atm_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../../../tests/integration/dart/test/test_config.dart';

void main() async {
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

  final senderKeyId = 'sender-key-1';

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

  prettyPrint('Sending the message...');

  // Example 1: Get list of mediator instances
  final listResponse = await atmAtlasClient.getMediatorInstancesList(
    accessToken: authTokens.accessToken,
  );
  prettyPrint(
    'Response received',
    object: listResponse.instances,
  );

  // Example 2: Get mediator instance metadata
  if (listResponse.instances.isNotEmpty) {
    try {
      final mediatorId = listResponse.instances.first.id;
      final metadataResponse = await atmAtlasClient.getMediatorInstanceMetadata(
        accessToken: authTokens.accessToken,
        mediatorId: mediatorId,
      );
      prettyPrint(
        'Mediator metadata',
        object: metadataResponse.body,
      );
    } catch (e) {
      prettyPrint('Error getting metadata: $e');
    }

    // Example 3: Get mediator requests (if any instances exist)
    try {
      final requestsResponse = await atmAtlasClient.getMediatorsRequests(
        accessToken: authTokens.accessToken,
        limit: 10,
      );
      prettyPrint(
        'Mediator requests',
        object: requestsResponse.body,
      );
    } catch (e) {
      prettyPrint('Error getting requests: $e');
    }
  } else {
    prettyPrint('No mediator instances available.');
  }

  // Example 4: Deploy a new mediator instance
  // prettyPrint('Deploying new mediator instance...');
  // final deployRequest = DeployMediatorInstanceRequest(
  //   serviceSize: 'tiny',
  //   mediatorAclMode: 'explicit_deny',
  // );
  // final deployResponse = await atmAtlasClient.deployMediatorInstance(
  //   accessToken: authTokens.accessToken,
  //   deploymentData: deployRequest,
  // );

  // final response = deployResponse.response;
  // prettyPrint(
  //   'Deploy response',
  //   object: {
  //     'mediatorId': response.mediatorId,
  //     'message': response.message,
  //     'serviceRequestId': response.serviceRequestId,
  //   },
  // );

  // // Wait a moment for connections to fully close
  // await Future<void>.delayed(const Duration(milliseconds: 100));

  prettyPrint('Example completed.');
}
