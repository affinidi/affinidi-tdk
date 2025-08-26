import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../test/example_configs.dart';

void main() async {
  // Configure test files based on environment variables if needed
  configureTestFiles();

  prettyPrint('Atlas Client Example');
    // Create Alice's wallet and DID manager
    final aliceKeyStore = InMemoryKeyStore();
    final aliceWallet = PersistentWallet(aliceKeyStore);

    final aliceDidManager = DidPeerManager(
      wallet: aliceWallet,
      store: InMemoryDidStore(),
    );

    // Load Alice's private key from file or generate new one
    final aliceKeyId = 'alice-key-1';

    try {
      // Try to load existing key
      final alicePrivateKeyBytes = await extractPrivateKeyBytes(
        alicePrivateKeyPath,
      );

      await aliceKeyStore.set(
        aliceKeyId,
        StoredKey(
          keyType: KeyType.p256,
          privateKeyBytes: alicePrivateKeyBytes,
        ),
      );
    } catch (e) {
      // Generate new key if file doesn't exist
      await aliceWallet.generateKey(
        keyId: aliceKeyId,
        keyType: KeyType.p256,
      );
    }

    await aliceDidManager.addVerificationMethod(aliceKeyId);
    final aliceDidDocument = await aliceDidManager.getDidDocument();

    prettyPrint('Alice DID', object: aliceDidDocument.id);


    final aliceSigner = await aliceDidManager.getSigner(
      aliceDidDocument.authentication.first.id,
    );

    // Read mediator DID from file and resolve it
    final mediatorDid = await readDid(mediatorDidPath);
    prettyPrint('Using mediator', object: mediatorDid);

    final mediatorDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(
      mediatorDid,
    );

    // Initialize Atlas service registry
    final atmServiceRegistry = await AtmServiceRegistry.init();

    // Match keys for encryption
    final aliceMatchedDidKeyIds = aliceDidDocument.matchKeysInKeyAgreement(
      otherDidDocuments: [
        mediatorDidDocument,
        ...atmServiceRegistry.all,
      ],
    );

    // Setup mediator client with WebSocket enabled for proper message handling
    final mediatorClient = MediatorClient(
      mediatorDidDocument: mediatorDidDocument,
      keyPair: await aliceDidManager.getKeyPairByDidKeyId(
        aliceMatchedDidKeyIds.first,
      ),
      didKeyId: aliceMatchedDidKeyIds.first,
      signer: aliceSigner,
      forwardMessageOptions: const ForwardMessageOptions(
        shouldSign: true,
        shouldEncrypt: true,
        keyWrappingAlgorithm:
            KeyWrappingAlgorithm.ecdh1Pu, // Use ecdh1Pu for compatibility
        encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
      ),
      // Enable WebSocket to keep connection alive for responses
      webSocketOptions: const WebSocketOptions(
        statusRequestMessageOptions: StatusRequestMessageOptions(
          shouldSend: true, // Enable WebSocket status
          shouldSign: true,
          shouldEncrypt: true,
        ),
        liveDeliveryChangeMessageOptions: LiveDeliveryChangeMessageOptions(
          shouldSend: true, // Enable WebSocket live delivery
          shouldSign: true,
          shouldEncrypt: true,
        ),
      ),
    );

    // Authenticate
    final authTokens = await mediatorClient.authenticate();
    prettyPrint('Authentication successful');

    // Setup Atlas client
    final atmAtlasClient = AtmMessagingAtlasClient(
      mediatorClient: mediatorClient,
      didManager: aliceDidManager,
      atmServiceRegistry: atmServiceRegistry,
    );

    // Example operations

    // Example 1: Get list of mediator instances

    // final listResponse = await atmAtlasClient.getMediatorInstancesList(
    //   accessToken: authTokens.accessToken,
    // );

    // prettyPrint(
    //   'Response received',
    //   object: listResponse.instances,
    // );

    // Example 2: Deploy a new mediator instance (commented out by default)
    // Uncomment to test deployment

    prettyPrint('Deploying new mediator instance...');
    final deployResponse = await atmAtlasClient.deployMediatorInstance(
      accessToken: authTokens.accessToken,
      deploymentData: {
        'name': 'example-mediator-${DateTime.now().millisecondsSinceEpoch}',
        'description': 'Example mediator instance',
      },
    );

    prettyPrint(
      'Deploy response',
      object: deployResponse.body,
    );

    // Example 3: Get mediator instance metadata
    // if (listResponse.instances.isNotEmpty) {
    //   final mediatorId = listResponse.instances.first.id;
    //   final metadataResponse = await atmAtlasClient.getMediatorInstanceMetadata(
    //     accessToken: authTokens.accessToken,
    //     mediatorId: mediatorId,
    //   );
    // }

    // Example 4: Get mediator requests (if any instances exist)
    // if (listResponse.instances.isNotEmpty) {
    //   final requestsResponse = await atmAtlasClient.getMediatorsRequests(
    //     accessToken: authTokens.accessToken,
    //     limit: 10,
    //   );
    // }

    // Clean up connections
    await atmAtlasClient.dispose();
    await mediatorClient.disconnect();

    // Wait a moment for connections to fully close
    await Future<void>.delayed(const Duration(milliseconds: 100));

    prettyPrint('Example completed successfully!');
}
