import 'dart:io';

import 'package:atm_client/atm_client.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'example_configs.dart';

void main() {
  configureTestFiles();

  group('Atlas Operations', () {
    late AtmServiceRegistry atmServiceRegistry;
    late MediatorClient mediatorClient;
    late DidManager didManager;
    late AtmMessagingAtlasClient atmAtlasClient;
    late String accessToken;

    setUpAll(() async {
      // Configure HTTP overrides for self-signed certificates if needed
      if (Platform.environment['TEST_ALLOW_SELF_SIGNED_CERTS'] == 'true') {
        HttpOverrides.global = _TestHttpOverrides();
      }
    });

    setUp(() async {
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
      final didDocument = await didManager.getDidDocument();

      final signer = await didManager.getSigner(
        didDocument.authentication.first.id,
      );

      // Read mediator DID from file (same as didcomm_dart)
      final mediatorDid = await readDid(mediatorDidPath);

      final mediatorDidDocument =
          await UniversalDIDResolver.defaultResolver.resolveDid(
        mediatorDid,
      );

      atmServiceRegistry = await AtmServiceRegistry.init();

      final senderMatchedDidKeyIds = didDocument.matchKeysInKeyAgreement(
        otherDidDocuments: [
          mediatorDidDocument,
          ...atmServiceRegistry.all,
        ],
      );

      mediatorClient = MediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        keyPair: await didManager.getKeyPairByDidKeyId(
          senderMatchedDidKeyIds.first,
        ),
        didKeyId: senderMatchedDidKeyIds.first,
        signer: signer,
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

      final authTokens = await mediatorClient.authenticate();
      accessToken = authTokens.accessToken;

      atmAtlasClient = AtmMessagingAtlasClient(
        mediatorClient: mediatorClient,
        didManager: didManager,
        atmServiceRegistry: atmServiceRegistry,
      );
    });

    group('getMediatorInstancesList', () {
      test('should return a list of mediator instances', () async {
        final response = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        expect(response.instances, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/getMediatorInstancesList/response');
      });

      test('should handle pagination parameters', () async {
        final response = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
          limit: 10,
        );

        expect(response.instances, isNotNull);
      });
    });

    group('deployMediatorInstance', () {
      test('should deploy a new mediator instance', () async {
        final deploymentData = {
          'name': 'test-mediator-${DateTime.now().millisecondsSinceEpoch}',
          'description': 'Test mediator instance',
        };

        final response = await atmAtlasClient.deployMediatorInstance(
          accessToken: accessToken,
          deploymentData: deploymentData,
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/deployMediatorInstance/response');
      });
    });

    group('getMediatorInstanceMetadata', () {
      test('should retrieve mediator instance metadata', () async {
        // First get list to find a mediator ID
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await atmAtlasClient.getMediatorInstanceMetadata(
            accessToken: accessToken,
            mediatorId: mediatorId,
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/getMediatorInstanceMetadata/response');
        } else {
          print('No mediator instances found, skipping metadata test');
        }
      });
    });

    group('destroyMediatorInstance', () {
      test('should destroy a mediator instance', skip: 'Destructive operation',
          () async {
        // Deploy a test instance first
        final deployResponse = await atmAtlasClient.deployMediatorInstance(
          accessToken: accessToken,
          deploymentData: {
            'name': 'test-destroy-${DateTime.now().millisecondsSinceEpoch}',
            'description': 'Test instance for destroy operation',
          },
        );

        if (deployResponse.body == null || deployResponse.body!['id'] == null) {
          throw Exception('Missing mediator ID in deploy response');
        }
        final mediatorId = deployResponse.body!['id'] as String;

        // Now destroy it
        final response = await atmAtlasClient.destroyMediatorInstance(
          accessToken: accessToken,
          mediatorId: mediatorId,
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/destroyMediatorInstance/response');
      });
    });

    group('updateMediatorInstanceDeployment', () {
      test('should update mediator instance deployment', () async {
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response =
              await atmAtlasClient.updateMediatorInstanceDeployment(
            accessToken: accessToken,
            mediatorId: mediatorId,
            deploymentData: {
              'description': 'Updated description at ${DateTime.now()}',
            },
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response');
        } else {
          print('No mediator instances found, skipping update deployment test');
        }
      });
    });

    group('updateMediatorInstanceConfiguration', () {
      test('should update mediator instance configuration', () async {
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response =
              await atmAtlasClient.updateMediatorInstanceConfiguration(
            accessToken: accessToken,
            mediatorId: mediatorId,
            configurationData: {
              'logLevel': 'debug',
            },
          );

          expect(response.body, isNotNull);
          expect(response.type.toString(),
              'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response');
        } else {
          print(
              'No mediator instances found, skipping update configuration test');
        }
      });
    });

    group('getMediatorsRequests', () {
      test('should retrieve mediator requests', () async {
        final response = await atmAtlasClient.getMediatorsRequests(
          accessToken: accessToken,
          limit: 10,
        );

        expect(response.body, isNotNull);
        expect(response.type.toString(),
            'affinidi.io/operations/ama/getMediatorsRequests/response');
      });

      test('should handle pagination for requests', () async {
        final response = await atmAtlasClient.getMediatorsRequests(
          accessToken: accessToken,
          limit: 5,
        );

        expect(response.body, isNotNull);
      });
    });

    group('getMediatorCloudwatchMetricData', () {
      test('should retrieve CloudWatch metrics', () async {
        final listResponse = await atmAtlasClient.getMediatorInstancesList(
          accessToken: accessToken,
        );

        if (listResponse.instances.isNotEmpty) {
          final mediatorId = listResponse.instances.first.id;

          final response = await atmAtlasClient.getMediatorCloudwatchMetricData(
            accessToken: accessToken,
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
        } else {
          print(
              'No mediator instances found, skipping CloudWatch metrics test');
        }
      });
    });
  });
}

// HTTP overrides for testing with self-signed certificates
class _TestHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) {
        // Allow self-signed certificates for test environments
        return host.contains('localhost') ||
            host.contains('127.0.0.1') ||
            host.contains('host.docker.internal');
      };
  }
}
