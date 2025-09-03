import 'dart:typed_data';

import 'package:atm_client/atm_client.dart';
import 'package:atm_client/src/common/atm_mediator_client.dart';
import 'package:atm_client/src/models/request_bodies/deploy_mediator_instance_request.dart';
import 'package:atm_client/src/models/request_bodies/update_mediator_instance_configuration_request.dart';
import 'package:atm_client/src/models/request_bodies/update_mediator_instance_deployment_request.dart';
import 'package:mediator_client/mediator_client.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'atm_client_unit_test.mocks.dart';

@GenerateMocks(
    [AtmMediatorClient, KeyPair, DidSigner, PersistentWallet, PublicKey])
void main() {
  group('AtmAtlasClient Unit Tests', () {
    late MockAtmMediatorClient mockMediatorClient;
    late MockKeyPair mockKeyPair; //TODO: NOT MOCK
    late MockDidSigner mockSigner; //TODO: NOT MOCK
    late MockPersistentWallet mockWallet; //TODO: NOT MOCK
    late MockPublicKey mockPublicKey; //TODO: NOT MOCK
    late AtmAtlasClient sut;

    setUp(() async {
      mockMediatorClient = MockAtmMediatorClient();
      mockKeyPair = MockKeyPair();
      mockSigner = MockDidSigner();
      mockWallet = MockPersistentWallet();
      mockPublicKey = MockPublicKey();

      // Create DID documents with key agreement
      final mediatorDid = DidDocument.fromJson({
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
              'x': 'MKBCTNIcKUSDii11ySs3526iDZ8AiTo7Tu6KPAqv7D4',
              'y': '4Etl6SRW2YiLUrN5vfvVHuhp7x8PxltmWWlbbM4IFyM',
            }
          }
        ],
      });

      final atlasDid = DidDocument.fromJson({
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
              'x': 'MKBCTNIcKUSDii11ySs3526iDZ8AiTo7Tu6KPAqv7D4',
              'y': '4Etl6SRW2YiLUrN5vfvVHuhp7x8PxltmWWlbbM4IFyM',
            }
          }
        ],
      });

      // Mock mediator client properties
      when(mockMediatorClient.mediatorDidDocument).thenReturn(mediatorDid);
      when(mockMediatorClient.signer).thenReturn(mockSigner);
      when(mockMediatorClient.keyPair).thenReturn(mockKeyPair);
      when(mockMediatorClient.didKeyId).thenReturn('did:test:mediator#key-1');

      // Mock DidSigner properties
      when(mockSigner.did).thenReturn('did:test:mediator');
      when(mockSigner.didKeyId).thenReturn('did:test:mediator#key-1');
      when(mockSigner.signatureScheme)
          .thenReturn(SignatureScheme.ecdsa_secp256k1_sha256);
      when(mockSigner.sign(any)).thenAnswer(
          (_) async => Uint8List.fromList(List.generate(64, (i) => i)));

      // Mock KeyPair properties
      when(mockKeyPair.publicKey).thenReturn(mockPublicKey);
      when(mockPublicKey.bytes)
          .thenReturn(Uint8List.fromList(List.generate(65, (i) => i)));
      when(mockPublicKey.type).thenReturn(KeyType.p256);
      when(mockKeyPair.computeEcdhSecret(any)).thenAnswer(
          (_) async => Uint8List.fromList(List.generate(32, (i) => i)));

      // Create DidManager
      final didManager = DidPeerManager(
        wallet: mockWallet,
        store: InMemoryDidStore(),
      );

      // Mock sendMessage to return a valid DidcommMessage
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

      sut = AtmAtlasClient(
        mediatorClient: mockMediatorClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDid,
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
        startDate: '2024-01-01T00:00:00Z',
        endDate: '2024-01-01T02:00:00Z',
      );

      expect(result.metricData.metricId, 'MessageCount');
      expect(result.metricData.dataPoints.length, 1);
    });
  });
}
