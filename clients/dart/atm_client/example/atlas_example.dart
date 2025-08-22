import 'dart:io';

import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../test/example_configs.dart';
import 'mediator_config.dart';

// HTTP overrides for handling self-signed certificates
class AtlasExampleHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) {
        return MediatorConfig.shouldAcceptCertificate(host);
      };
  }
}

void main() async {
  // Enable certificate handling
  HttpOverrides.global = AtlasExampleHttpOverrides();

  prettyPrint('Atlas Client Example');
  prettyPrint('Mediator Configuration',
      object: MediatorConfig.mediatorDescription);
  prettyPrint('Atlas Service', object: 'did:web:did.dev.affinidi.io:ama');
  print('');
  print('Note: To switch mediators, edit mediator_config.dart');
  print('');

  try {
    // Create Alice's wallet and DID manager (same pattern as didcomm_dart)
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
      print('Generating new key for Alice (key file not found)');
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

    // Resolve mediator DID
    final mediatorDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(
      MediatorConfig.mediatorDid,
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

    // Setup mediator client
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
        keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdhEs,
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
    print('');
    prettyPrint('Testing Atlas Operations');

    // Example 1: Get list of mediator instances
    prettyPrint('Getting mediator instances list...');

    final listResponse = await atmAtlasClient.getMediatorInstancesList(
      accessToken: authTokens.accessToken,
    );

    prettyPrint(
      'Response received',
      object: listResponse.instances,
    );

    // Example 2: Deploy a new mediator instance (commented out by default)
    // Uncomment to test deployment
    /*
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
    */

    // Example 3: Get mediator instance metadata
    if (listResponse.instances.isNotEmpty) {
      prettyPrint('Getting mediator instance metadata...');

      final mediatorId = listResponse.instances.first.id;
      final metadataResponse = await atmAtlasClient.getMediatorInstanceMetadata(
        accessToken: authTokens.accessToken,
        mediatorId: mediatorId,
      );

      prettyPrint(
        'Metadata response',
        object: metadataResponse.body,
      );
    } else {
      print(
          'No mediator instances found. Deploy one to test metadata retrieval.');
    }

    // Example 4: Get mediator requests (if any instances exist)
    if (listResponse.instances.isNotEmpty) {
      prettyPrint('Getting mediator requests...');

      final requestsResponse = await atmAtlasClient.getMediatorsRequests(
        accessToken: authTokens.accessToken,
        limit: 10,
      );

      prettyPrint(
        'Requests response',
        object: requestsResponse.body,
      );
    }

    print('');
    prettyPrint('Example completed successfully!');
  } catch (e) {
    print('Error: $e');
    if (e.toString().contains('401') || e.toString().contains('Unauthorized')) {
      print('');
      print(
          'Authentication failed. Make sure your mediator supports authentication.');
      print('You may need to configure ACL or use a different mediator.');
    }
  }
}
