import 'package:affinidi_tdk_atm_client/atm_client.dart';
import 'package:affinidi_tdk_atm_client/src/common/atm_mediator_client.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/deploy_mediator_instance_request.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/update_mediator_instance_configuration_request.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/update_mediator_instance_deployment_request.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'atm_client_unit_test.mocks.dart';

@GenerateMocks([AtmMediatorClient])
void main() {
  group('AtmAtlasClient Unit Tests', () {
    late MockAtmMediatorClient mockMediatorClient;
    late DidManager didManager;
    late AtmAtlasClient sut;

    setUp(() async {
      // Create real cryptographic components
      final keyStore = InMemoryKeyStore();
      final wallet = PersistentWallet(keyStore);

      didManager = DidPeerManager(
        wallet: wallet,
        store: InMemoryDidStore(),
      );

      // Load test private key
      const keyId = 'test-key-1';
      final privateKeyPath = 'example/keys/alice_private_key.pem';
      final privateKeyBytes = await extractPrivateKeyBytes(privateKeyPath);

      await keyStore.set(
        keyId,
        StoredKey(
          keyType: KeyType.p256,
          privateKeyBytes: privateKeyBytes,
        ),
      );

      // Generate DID with verification method
      await didManager.addVerificationMethod(keyId);
      final didDocument = await didManager.getDidDocument();

      // Create mediator and atlas DID documents for testing
      final mediatorDidDocument = DidDocument.fromJson({
        '@context': ['https://www.w3.org/ns/did/v1'],
        'id': 'did:test:mediator',
        'keyAgreement': [
          {
            'id': 'did:test:mediator#key-1',
            'type': 'JsonWebKey2020',
            'controller': 'did:test:mediator',
            'publicKeyJwk': {
              'kty': 'EC',
              'crv': 'P-256',
              'x': 'FE__1vF_lVzSrD75H2dIVW_HWgVFvCcIyn6YP1fbNvA',
              'y': 'ZGwgy4-QKHsGQJiEbrGJuzvRfN3NtwmIFXICG2oPMsg',
            }
          }
        ],
      });

      final atlasDidDocument = DidDocument.fromJson({
        '@context': ['https://www.w3.org/ns/did/v1'],
        'id': 'did:test:atlas',
        'keyAgreement': [
          {
            'id': 'did:test:atlas#key-1',
            'type': 'JsonWebKey2020',
            'controller': 'did:test:atlas',
            'publicKeyJwk': {
              'kty': 'EC',
              'crv': 'P-256',
              'x': 'FE__1vF_lVzSrD75H2dIVW_HWgVFvCcIyn6YP1fbNvA',
              'y': 'ZGwgy4-QKHsGQJiEbrGJuzvRfN3NtwmIFXICG2oPMsg',
            }
          }
        ],
      });

      // Get matched key IDs for key agreement
      final matchedKeyIds = didDocument.matchKeysInKeyAgreement(
        otherDidDocuments: [mediatorDidDocument, atlasDidDocument],
      );

      // Get real key pair and signer
      final keyPair = await didManager.getKeyPairByDidKeyId(
        matchedKeyIds.first,
      );
      final signer = await didManager.getSigner(
        didDocument.authentication.first.id,
      );

      // Setup mock mediator client
      mockMediatorClient = MockAtmMediatorClient();
      when(mockMediatorClient.mediatorDidDocument)
          .thenReturn(mediatorDidDocument);
      when(mockMediatorClient.signer).thenReturn(signer);
      when(mockMediatorClient.keyPair).thenReturn(keyPair);
      when(mockMediatorClient.didKeyId).thenReturn(matchedKeyIds.first);

      // Mock sendMessage
      when(mockMediatorClient.sendMessage(
        any,
        accessToken: anyNamed('accessToken'),
      )).thenAnswer((_) async {
        return PlainTextMessage(
          id: const Uuid().v4(),
          from: 'did:test:mediator',
          to: ['did:test:atlas'],
          type: Uri.parse('test'),
          body: {},
        );
      });

      // Create AtmAtlasClient instance
      sut = AtmAtlasClient(
        mediatorClient: mockMediatorClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );
    });

    test('getMediatorInstancesList - returns list of instances', () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstancesList/response'),
        body: {
          'response':
              '{"instances": [{"id": "m1", "name": "Test", "description": "Test mediator", "createdAt": "2024-01-01T00:00:00Z", "modifiedAt": "2024-01-01T00:00:00Z", "createdBy": "user1", "modifiedBy": "user1", "projectId": "proj1", "serviceType": "mediator", "deploymentState": "DEPLOYED", "deploymentStatus": "RUNNING", "serviceSize": "SMALL", "did": "did:test:mediator"}]}',
          'status_code': 200,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.getMediatorInstancesList(accessToken: 'token');

      expect(result.instances.length, 1);
      expect(result.instances.first.id, 'm1');
      expect(result.from, 'did:test:atlas');
      expect(result.to, ['did:test:mediator']);
    });

    test('deployMediatorInstance - deploys new instance', () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/deployMediatorInstance/response'),
        body: {
          'response': '{"mediatorId": "new-123", "status": "Deploying"}',
          'status_code': 200,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.deployMediatorInstance(
        accessToken: 'token',
        deploymentData: DeployMediatorInstanceRequest(name: 'test'),
      );

      expect(result.response.mediatorId, 'new-123');
      expect(result.response.status, 'Deploying');
    });

    test('getMediatorInstanceMetadata - returns instance metadata', () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstanceMetadata/response'),
        body: {
          'response': '{"mediatorId": "m123", "status": "running"}',
          'status_code': 200,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.getMediatorInstanceMetadata(
        accessToken: 'token',
        mediatorId: 'm123',
      );

      expect(result.metadata.mediatorId, 'm123');
      expect(result.metadata.status, 'running');
    });

    test('destroyMediatorInstance - destroys instance', () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/destroyMediatorInstance/response'),
        body: {
          'response': '{"mediatorId": "m123", "status": "Destroying"}',
          'status_code': 200,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.destroyMediatorInstance(
        accessToken: 'token',
        mediatorId: 'm123',
      );

      expect(result.response.mediatorId, 'm123');
      expect(result.response.status, 'Destroying');
    });

    test('updateMediatorInstanceDeployment - updates deployment config',
        () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response'),
        body: {
          'response': '{"mediatorId": "m123", "status": "Updated"}',
          'status_code': 200,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.updateMediatorInstanceDeployment(
        accessToken: 'token',
        mediatorId: 'm123',
        deploymentData: UpdateMediatorInstanceDeploymentRequest(
          mediatorId: 'm123',
          autoScaling: true,
        ),
      );

      expect(result.response.mediatorId, 'm123');
    });

    test('updateMediatorInstanceConfiguration - updates runtime config',
        () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response'),
        body: {
          'response': '{"mediatorId": "m123", "status": "Updated"}',
          'status_code': 200,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.updateMediatorInstanceConfiguration(
        accessToken: 'token',
        mediatorId: 'm123',
        configurationData: UpdateMediatorInstanceConfigurationRequest(
          mediatorId: 'm123',
          logLevel: 'info',
        ),
      );

      expect(result.response.mediatorId, 'm123');
    });

    test('getMediatorsRequests - returns request logs', () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorsRequests/response'),
        body: {
          'response':
              '{"requests": [{"requestId": "r1", "mediatorId": "m123", "timestamp": "2024-01-01T00:00:00Z"}]}',
          'status_code': 200,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.getMediatorsRequests(
        accessToken: 'token',
        limit: 10,
      );

      expect(result.requests.length, 1);
      expect(result.requests.first.requestId, 'r1');
      expect(result.requests.first.timestamp,
          DateTime.parse('2024-01-01T00:00:00Z'));
    });

    test('getMediatorCloudwatchMetricData - returns metrics', () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorCloudwatchMetricData/response'),
        body: {
          'response':
              '{"metricId": "MessageCount", "mediatorId": "m123", "dataPoints": [{"timestamp": "2024-01-01T00:00:00Z", "value": 100}]}',
          'status_code': 200,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.getMediatorCloudwatchMetricData(
        accessToken: 'token',
        mediatorId: 'm123',
        metricId: 'MessageCount',
        startDate: DateTime.parse('2024-01-01T00:00:00Z'),
        endDate: DateTime.parse('2024-01-01T02:00:00Z'),
      );

      expect(result.metricData.metricId, 'MessageCount');
      expect(result.metricData.dataPoints.length, 1);
      expect(result.metricData.mediatorId, 'm123');
      expect(result.metricData.dataPoints.first.value, 100);
      expect(
        result.metricData.dataPoints.first.timestamp,
        DateTime.parse('2024-01-01T00:00:00Z'),
      );
    });

    test('sendMessage envelopes requests and waits for correct response type',
        () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstancesList/response'),
        body: {
          'response': '{"instances": []}',
          'status_code': 200,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      await sut.getMediatorInstancesList(accessToken: 'token');

      verify(
        mockMediatorClient.waitForMessage(
          messageType:
              'affinidi.io/operations/ama/getMediatorInstancesList/response',
          didManager: didManager,
          accessToken: 'token',
          atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
          clientOptions: anyNamed('clientOptions'),
        ),
      );

      final captured = verify(
        mockMediatorClient.sendMessage(
          captureAny,
          accessToken: anyNamed('accessToken'),
        ),
      ).captured.single as ForwardMessage;

      expect(captured.to, ['did:test:mediator']);
      expect(captured.next, 'did:test:atlas');
      expect(captured.attachments?.isNotEmpty, true);
    });

    test('updateMediatorInstanceDeployment - throws on mediatorId mismatch',
        () async {
      expect(
        () => sut.updateMediatorInstanceDeployment(
          accessToken: 'token',
          mediatorId: 'm123',
          deploymentData:
              UpdateMediatorInstanceDeploymentRequest(mediatorId: 'other'),
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('updateMediatorInstanceConfiguration - throws on mediatorId mismatch',
        () async {
      expect(
        () => sut.updateMediatorInstanceConfiguration(
          accessToken: 'token',
          mediatorId: 'm123',
          configurationData:
              UpdateMediatorInstanceConfigurationRequest(mediatorId: 'other'),
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test(
        'GetMediatorInstancesListResponseMessage.instances throws on null body',
        () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstancesList/response'),
        body: null,
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.getMediatorInstancesList(accessToken: 'token');
      expect(() => result.instances, throwsA(isA<ArgumentError>()));
    });

    test(
        'DeployMediatorInstanceResponseMessage.response throws on error payload',
        () async {
      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/deployMediatorInstance/response'),
        body: {
          'response':
              '{"name":"Error","message":"bad","details":"invalid params"}',
          'status_code': 400,
          'headers': <String, String>{},
        },
      );

      when(mockMediatorClient.waitForMessage(
        messageType: anyNamed('messageType'),
        didManager: anyNamed('didManager'),
        accessToken: anyNamed('accessToken'),
        atmServiceDidDocument: anyNamed('atmServiceDidDocument'),
        clientOptions: anyNamed('clientOptions'),
      )).thenAnswer((_) async => response);

      final result = await sut.deployMediatorInstance(
        accessToken: 'token',
        deploymentData: DeployMediatorInstanceRequest(name: 'test'),
      );

      expect(() => result.response, throwsA(isA<Exception>()));
    });
  });
}
