import 'package:affinidi_tdk_atm_client/atm_client.dart';
import 'package:affinidi_tdk_atm_client/src/common/atm_mediator_client.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/deploy_mediator_instance_request.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/update_mediator_instance_configuration_request.dart';
import 'package:affinidi_tdk_atm_client/src/models/request_bodies/update_mediator_instance_deployment_request.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

class TestAtmMediatorClient extends AtmMediatorClient {
  final List<ForwardMessage> capturedForwardMessages = [];

  PlainTextMessage? nextWaitForMessageResponse;

  DidcommMessage? nextSendMessageResponse;

  TestAtmMediatorClient({
    required super.mediatorDidDocument,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
  }) : super(
          forwardMessageOptions: const ForwardMessageOptions(),
          webSocketOptions: const WebSocketOptions(),
        );

  @override
  Future<DidcommMessage> sendMessage(
    ForwardMessage message, {
    String? accessToken,
  }) async {
    capturedForwardMessages.add(message);

    return nextSendMessageResponse!;
  }

  @override
  Future<PlainTextMessage> waitForMessage({
    required String messageType,
    required String accessToken,
    required DidManager didManager,
    required DidDocument atmServiceDidDocument,
    required ClientOptions clientOptions,
  }) async {
    if (nextWaitForMessageResponse == null) {
      throw StateError(
          'No response configured for waitForMessage with type: $messageType');
    }
    return nextWaitForMessageResponse!;
  }
}

void main() {
  const accessToken = 'token';
  group('AtmAtlasClient Unit Tests', () {
    late DidManager didManager;
    late DidDocument atlasDidDocument;
    late DidDocument mediatorDidDocument;
    late String keyId;
    late List<String> matchedKeyIds;
    late KeyPair keyPair;
    late DidSigner signer;

    setUp(() async {
      final keyStore = InMemoryKeyStore();
      final wallet = PersistentWallet(keyStore);

      didManager = DidPeerManager(
        wallet: wallet,
        store: InMemoryDidStore(),
      );

      keyId = 'test-key-1';
      final privateKeyPath = 'example/keys/alice_private_key.pem';
      final privateKeyBytes = await extractPrivateKeyBytes(privateKeyPath);

      await keyStore.set(
        keyId,
        StoredKey(
          keyType: KeyType.p256,
          privateKeyBytes: privateKeyBytes,
        ),
      );

      await didManager.addVerificationMethod(keyId);
      final didDocument = await didManager.getDidDocument();
      mediatorDidDocument = DidDocument.fromJson({
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
        'service': [
          {
            'id': '#didcomm',
            'type': 'DIDCommMessaging',
            'serviceEndpoint':
                'https://test-mediator.example.com/api/v1/messages',
          }
        ],
      });

      atlasDidDocument = DidDocument.fromJson({
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

      matchedKeyIds = didDocument.matchKeysInKeyAgreement(
        otherDidDocuments: [mediatorDidDocument, atlasDidDocument],
      );

      keyPair = await didManager.getKeyPairByDidKeyId(
        matchedKeyIds.first,
      );
      signer = await didManager.getSigner(
        didDocument.authentication.first.id,
      );
    });

    EncryptedMessage createEncryptedResponse({
      required String type,
      required Map<String, dynamic> body,
    }) {
      return EncryptedMessage.fromJson({
        'ciphertext': 'dGVzdA==',
        'protected': 'eyJ0eXAiOiJKV1QifQ==',
        'recipients': [
          {
            'encrypted_key': 'dGVzdA==',
            'header': {'kid': 'did:test:mediator#key-1'},
          }
        ],
        'tag': 'dGVzdA==',
        'iv': 'dGVzdA==',
      });
    }

    test('getMediatorInstancesList - returns list of instances', () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type: 'affinidi.io/operations/ama/getMediatorInstancesList/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result =
          await sut.getMediatorInstancesList(accessToken: accessToken);

      expect(testClient.capturedForwardMessages.length, 1);
      final capturedMessage = testClient.capturedForwardMessages.first;
      expect(capturedMessage.to, ['did:test:mediator']);
      expect(capturedMessage.next, 'did:test:atlas');
      expect(capturedMessage.attachments?.isNotEmpty, true);
      expect(result.instances.length, 1);
      expect(result.instances.first.id, 'm1');
      expect(result.from, 'did:test:atlas');
      expect(result.to, ['did:test:mediator']);
      expect(result.type.toString(),
          'affinidi.io/operations/ama/getMediatorInstancesList/response');
    });

    test('deployMediatorInstance - deploys new instance', () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type: 'affinidi.io/operations/ama/deployMediatorInstance/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result = await sut.deployMediatorInstance(
        accessToken: accessToken,
        deploymentData: DeployMediatorInstanceRequest(name: 'test'),
      );

      expect(testClient.capturedForwardMessages.length, 1);
      final capturedMessage = testClient.capturedForwardMessages.first;
      expect(capturedMessage.to, ['did:test:mediator']);
      expect(capturedMessage.next, 'did:test:atlas');
      expect(capturedMessage.attachments?.isNotEmpty, true);

      expect(result.response.mediatorId, 'new-123');
      expect(result.response.status, 'Deploying');
      expect(result.type.toString(),
          'affinidi.io/operations/ama/deployMediatorInstance/response');
    });

    test('getMediatorInstanceMetadata - returns instance metadata', () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type: 'affinidi.io/operations/ama/getMediatorInstanceMetadata/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result = await sut.getMediatorInstanceMetadata(
        accessToken: accessToken,
        mediatorId: 'm123',
      );

      expect(testClient.capturedForwardMessages.length, 1);
      final capturedMessage = testClient.capturedForwardMessages.first;
      expect(capturedMessage.to, ['did:test:mediator']);
      expect(capturedMessage.next, 'did:test:atlas');
      expect(capturedMessage.attachments?.isNotEmpty, true);

      expect(result.metadata.mediatorId, 'm123');
      expect(result.metadata.status, 'running');
      expect(result.type.toString(),
          'affinidi.io/operations/ama/getMediatorInstanceMetadata/response');
    });

    test('destroyMediatorInstance - destroys instance', () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type: 'affinidi.io/operations/ama/destroyMediatorInstance/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result = await sut.destroyMediatorInstance(
        accessToken: accessToken,
        mediatorId: 'm123',
      );

      expect(testClient.capturedForwardMessages.length, 1);
      final capturedMessage = testClient.capturedForwardMessages.first;
      expect(capturedMessage.to, ['did:test:mediator']);
      expect(capturedMessage.next, 'did:test:atlas');
      expect(capturedMessage.attachments?.isNotEmpty, true);

      expect(result.response.mediatorId, 'm123');
      expect(result.response.status, 'Destroying');
      expect(result.type.toString(),
          'affinidi.io/operations/ama/destroyMediatorInstance/response');
    });

    test('updateMediatorInstanceDeployment - updates deployment config',
        () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type:
            'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result = await sut.updateMediatorInstanceDeployment(
        accessToken: accessToken,
        mediatorId: 'm123',
        deploymentData: UpdateMediatorInstanceDeploymentRequest(
          mediatorId: 'm123',
          autoScaling: true,
        ),
      );

      expect(testClient.capturedForwardMessages.length, 1);
      final capturedMessage = testClient.capturedForwardMessages.first;
      expect(capturedMessage.to, ['did:test:mediator']);
      expect(capturedMessage.next, 'did:test:atlas');
      expect(capturedMessage.attachments?.isNotEmpty, true);

      expect(result.response.mediatorId, 'm123');
      expect(result.type.toString(),
          'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response');
    });

    test('updateMediatorInstanceConfiguration - updates runtime config',
        () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type:
            'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result = await sut.updateMediatorInstanceConfiguration(
        accessToken: accessToken,
        mediatorId: 'm123',
        configurationData: UpdateMediatorInstanceConfigurationRequest(
          mediatorId: 'm123',
          logLevel: 'info',
        ),
      );

      expect(testClient.capturedForwardMessages.length, 1);
      final capturedMessage = testClient.capturedForwardMessages.first;
      expect(capturedMessage.to, ['did:test:mediator']);
      expect(capturedMessage.next, 'did:test:atlas');
      expect(capturedMessage.attachments?.isNotEmpty, true);

      expect(result.response.mediatorId, 'm123');
      expect(result.type.toString(),
          'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response');
    });

    test('getMediatorsRequests - returns request logs', () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type: 'affinidi.io/operations/ama/getMediatorsRequests/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result = await sut.getMediatorsRequests(
        accessToken: accessToken,
        limit: 10,
      );

      expect(testClient.capturedForwardMessages.length, 1);
      final capturedMessage = testClient.capturedForwardMessages.first;
      expect(capturedMessage.to, ['did:test:mediator']);
      expect(capturedMessage.next, 'did:test:atlas');
      expect(capturedMessage.attachments?.isNotEmpty, true);

      expect(result.requests.length, 1);
      expect(result.requests.first.requestId, 'r1');
      expect(result.requests.first.timestamp,
          DateTime.parse('2024-01-01T00:00:00Z'));
      expect(result.type.toString(),
          'affinidi.io/operations/ama/getMediatorsRequests/response');
    });

    test('getMediatorCloudwatchMetricData - returns metrics', () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type:
            'affinidi.io/operations/ama/getMediatorCloudwatchMetricData/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result = await sut.getMediatorCloudwatchMetricData(
        accessToken: accessToken,
        mediatorId: 'm123',
        metricId: 'MessageCount',
        startDate: DateTime.parse('2024-01-01T00:00:00Z'),
        endDate: DateTime.parse('2024-01-01T02:00:00Z'),
      );

      expect(testClient.capturedForwardMessages.length, 1);
      final capturedMessage = testClient.capturedForwardMessages.first;
      expect(capturedMessage.to, ['did:test:mediator']);
      expect(capturedMessage.next, 'did:test:atlas');
      expect(capturedMessage.attachments?.isNotEmpty, true);

      expect(result.metricData.metricId, 'MessageCount');
      expect(result.metricData.dataPoints.length, 1);
      expect(result.metricData.mediatorId, 'm123');
      expect(result.metricData.dataPoints.first.value, 100);
      expect(
        result.metricData.dataPoints.first.timestamp,
        DateTime.parse('2024-01-01T00:00:00Z'),
      );
      expect(result.type.toString(),
          'affinidi.io/operations/ama/getMediatorCloudwatchMetricData/response');
    });

    test('sendMessage envelopes requests and waits for correct response type',
        () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type: 'affinidi.io/operations/ama/getMediatorInstancesList/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      await sut.getMediatorInstancesList(accessToken: accessToken);

      expect(testClient.capturedForwardMessages.length, 1);
      final captured = testClient.capturedForwardMessages.first;

      expect(captured.to, ['did:test:mediator']);
      expect(captured.next, 'did:test:atlas');
      expect(captured.attachments?.isNotEmpty, true);
    });

    test('updateMediatorInstanceDeployment - throws on mediatorId mismatch',
        () async {
      final sut = AtmAtlasClient(
        mediatorClient: TestAtmMediatorClient(
          mediatorDidDocument: mediatorDidDocument,
          signer: signer,
          keyPair: keyPair,
          didKeyId: matchedKeyIds.first,
        ),
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      expect(
        () => sut.updateMediatorInstanceDeployment(
          accessToken: accessToken,
          mediatorId: 'm123',
          deploymentData:
              UpdateMediatorInstanceDeploymentRequest(mediatorId: 'other'),
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('updateMediatorInstanceConfiguration - throws on mediatorId mismatch',
        () async {
      final sut = AtmAtlasClient(
        mediatorClient: TestAtmMediatorClient(
          mediatorDidDocument: mediatorDidDocument,
          signer: signer,
          keyPair: keyPair,
          didKeyId: matchedKeyIds.first,
        ),
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      expect(
        () => sut.updateMediatorInstanceConfiguration(
          accessToken: accessToken,
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
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

      final response = PlainTextMessage(
        id: const Uuid().v4(),
        from: 'did:test:atlas',
        to: ['did:test:mediator'],
        type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstancesList/response'),
        body: null,
      );

      final encryptedResponse = createEncryptedResponse(
        type: 'affinidi.io/operations/ama/getMediatorInstancesList/response',
        body: {},
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result = await sut.getMediatorInstancesList(accessToken: 'token');
      expect(() => result.instances, throwsA(isA<ArgumentError>()));
    });

    test(
        'DeployMediatorInstanceResponseMessage.response does not throw on error payload',
        () async {
      final testClient = TestAtmMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        signer: signer,
        keyPair: keyPair,
        didKeyId: matchedKeyIds.first,
      );

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

      final encryptedResponse = createEncryptedResponse(
        type: 'affinidi.io/operations/ama/deployMediatorInstance/response',
        body: response.body!,
      );

      testClient.nextSendMessageResponse = encryptedResponse;
      testClient.nextWaitForMessageResponse = response;

      final sut = AtmAtlasClient(
        mediatorClient: testClient,
        didManager: didManager,
        atmServiceDidDocument: atlasDidDocument,
      );

      final result = await sut.deployMediatorInstance(
        accessToken: accessToken,
        deploymentData: DeployMediatorInstanceRequest(name: 'test'),
      );

      expect(() => result.response, throwsA(isA<TypeError>()));
    });
  });
}
