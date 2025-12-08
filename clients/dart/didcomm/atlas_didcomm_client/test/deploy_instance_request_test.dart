import 'package:affinidi_tdk_atlas_didcomm_client/affinidi_tdk_atlas_didcomm_client.dart';
import 'package:test/test.dart';

void main() {
  group('BaseDeployInstanceRequest', () {
    test('should create request with all optional fields', () {
      final request = DeployInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        options: const DeployMediatorInstanceOptions(
          serviceSize: ServiceSize.small,
          mediatorAclMode: MediatorAclMode.explicitDeny,
          administratorDids: 'did:example:admin',
          name: 'Test Instance',
          description: 'Test description',
        ),
      );

      expect(request.body!['administratorDids'], 'did:example:admin');
      expect(request.body!['serviceSize'], 'small');
      expect(request.body!['mediatorAclMode'], 'explicit_deny');
      expect(request.body!['name'], 'Test Instance');
      expect(request.body!['description'], 'Test description');
    });

    test('should serialize to JSON correctly with all fields', () {
      final request = DeployInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        options: const DeployMediatorInstanceOptions(
          serviceSize: ServiceSize.medium,
          mediatorAclMode: MediatorAclMode.explicitDeny,
          administratorDids: 'did:example:admin',
          name: 'Test Instance',
          description: 'Test description',
        ),
      );

      final json = request.toJson();

      expect(json['administratorDids'], 'did:example:admin');
      expect(json['serviceSize'], 'medium');
      expect(json['mediatorAclMode'], 'explicit_deny');
      expect(json['name'], 'Test Instance');
      expect(json['description'], 'Test description');
    });

    test('should serialize to JSON without proper fields', () {
      final request = DeployInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        options: const DeployMediatorInstanceOptions(
          serviceSize: ServiceSize.large,
          mediatorAclMode: MediatorAclMode.explicitDeny,
          administratorDids: 'did:example:admin',
          name: 'Test Instance',
          description: 'Test description',
        ),
      );

      final json = request.toJson();
      expect(json.containsKey('administratorDids'), isFalse);
      expect(json.containsKey('serviceSize'), isFalse);
      expect(json.containsKey('mediatorAclMode'), isFalse);
      expect(json.containsKey('name'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should deserialize from JSON correctly', () {
      final json = {
        'administratorDids': 'did:example:admin',
        'serviceSize': 'tiny',
        'mediatorAclMode': 'explicit_deny',
        'name': 'Test Instance',
        'description': 'Test description',
      };

      final request = DeployInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        options: DeployMediatorInstanceOptions.fromJson(json),
      );

      final jsonRequest = request.toJson();

      expect(jsonRequest['administratorDids'], 'did:example:admin');
      expect(jsonRequest['serviceSize'], 'tiny');
      expect(jsonRequest['mediatorAclMode'], 'explicit_deny');
      expect(jsonRequest['name'], 'Test Instance');
      expect(jsonRequest['description'], 'Test description');
    });

    test('should deserialize from JSON with only required field', () {
      final json = {
        'serviceSize': 'small',
      };

      final request = DeployInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        options: DeployMediatorInstanceOptions.fromJson(json),
      );

      final jsonRequest = request.toJson();

      expect(jsonRequest['serviceSize'], 'small');
      expect(jsonRequest['administratorDids'], isNull);
      expect(jsonRequest['mediatorAclMode'], isNull);
      expect(jsonRequest['name'], isNull);
      expect(jsonRequest['description'], isNull);
    });

    test('should throw TypeError when serviceSize is missing', () {
      final json = <String, dynamic>{};

      expect(
        () => DeployInstanceRequestMessage.mediator(
          id: 'test-id',
          to: ['did:example:alice'],
          options: DeployMediatorInstanceOptions.fromJson(json),
        ),
        throwsA(isA<TypeError>()),
      );
    });

    test('should handle null values in JSON', () {
      final json = {
        'serviceSize': 'tiny',
        'administratorDids': null,
        'mediatorAclMode': null,
        'name': null,
        'description': null,
      };

      final request = DeployInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        options: DeployMediatorInstanceOptions.fromJson(json),
      );

      final jsonRequest = request.toJson();

      expect(jsonRequest['serviceSize'], 'tiny');
      expect(jsonRequest['administratorDids'], isNull);
      expect(jsonRequest['mediatorAclMode'], isNull);
      expect(jsonRequest['name'], isNull);
      expect(jsonRequest['description'], isNull);
    });

    test('should handle extra fields in JSON', () {
      final json = {
        'serviceSize': 'tiny',
        'extraField': 'should be ignored',
      };

      final request = DeployInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        options: DeployMediatorInstanceOptions.fromJson(json),
      );

      final jsonRequest = request.toJson();

      expect(jsonRequest['serviceSize'], 'tiny');
    });
  });
}
