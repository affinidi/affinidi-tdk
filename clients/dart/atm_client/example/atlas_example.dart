import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../test/example_configs.dart';

// Uncomment this class to use a local mediator with self-signed certificates
// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     return super.createHttpClient(context)
//       ..badCertificateCallback = (cert, host, port) => true;
//   }
// }

void main() async {
  // Uncomment this line to enable local mediator with self-signed certificates
  // HttpOverrides.global = MyHttpOverrides();

  // Configure test files based on environment variables if needed
  configureTestFiles();

  prettyPrint('Atlas Client Example');
  prettyPrint('Atlas Service', object: 'did:web:did.dev.affinidi.io:ama');
  prettyPrint('');
  prettyPrint(
      'Note: To use your own mediator, create one at https://portal.affinidi.com');
  prettyPrint('and save its DID in example/mediator/mediator_did.txt');
  prettyPrint('');

  // For local mediator setup:
  // 1. Update example/mediator/mediator_did.txt to: did:web:localhost:7037
  // 2. Uncomment the MyHttpOverrides class and HttpOverrides.global line above
  // 3. Run your local mediator on port 7037

  try {
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
      prettyPrint('Generating new key for Alice (key file not found)');
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
    prettyPrint('Mediator DID resolved');

    // Initialize Atlas service registry
    final atmServiceRegistry = await AtmServiceRegistry.init();

    prettyPrint('Atlas service registry initialized');

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

    prettyPrint('Mediator client created');

    // Authenticate
    final authTokens = await mediatorClient.authenticate();

    prettyPrint('Authentication successful');

    // Setup Atlas client
    final atmAtlasClient = AtmMessagingAtlasClient(
      mediatorClient: mediatorClient,
      didManager: aliceDidManager,
      atmServiceRegistry: atmServiceRegistry,
    );

    prettyPrint('Atlas client created');

    // Example operations
    prettyPrint('');
    prettyPrint('Testing Atlas Operations');

    // Example 1: Get list of mediator instances
    prettyPrint('Getting mediator instances list...');

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
    //   prettyPrint('Getting mediator instance metadata...');

    //   final mediatorId = listResponse.instances.first.id;
    //   final metadataResponse = await atmAtlasClient.getMediatorInstanceMetadata(
    //     accessToken: authTokens.accessToken,
    //     mediatorId: mediatorId,
    //   );

    //   prettyPrint(
    //     'Metadata response',
    //     object: metadataResponse.body,
    //   );
    // } else {
    //   prettyPrint(
    //       'No mediator instances found. Deploy one to test metadata retrieval.');
    // }

    // Example 4: Get mediator requests (if any instances exist)
    // if (listResponse.instances.isNotEmpty) {
    //   prettyPrint('Getting mediator requests...');

    //   final requestsResponse = await atmAtlasClient.getMediatorsRequests(
    //     accessToken: authTokens.accessToken,
    //     limit: 10,
    //   );

    //   prettyPrint(
    //     'Requests response',
    //     object: requestsResponse.body,
    //   );
    // }

    prettyPrint('');
    prettyPrint('Example completed successfully!');

    // Clean up connections
    await atmAtlasClient.dispose();
    await mediatorClient.disconnect();

    // Wait a moment for connections to fully close
    await Future<void>.delayed(const Duration(milliseconds: 100));
  } catch (e) {
    prettyPrint('Error: $e');
    if (e.toString().contains('401') || e.toString().contains('Unauthorized')) {
      prettyPrint('');
      prettyPrint(
          'Authentication failed. Make sure your mediator supports authentication.');
      prettyPrint('You may need to configure ACL or use a different mediator.');
    }
  }
}
