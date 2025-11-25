import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('BaseUpdateInstanceDeploymentRequest', () {
    test('should create request with required fields for mediator', () {
      final request = BaseUpdateInstanceDeploymentRequest.mediator(
        instanceId: 'mediator-123',
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.instanceType, InstanceType.mediator);
      expect(request.serviceSize, isNull);
      expect(request.mediatorAclMode, isNull);
      expect(request.name, isNull);
      expect(request.description, isNull);
    });

    test('should create request with all optional fields for mediator', () {
      final request = BaseUpdateInstanceDeploymentRequest.mediator(
        instanceId: 'mediator-456',
        serviceSize: 'small',
        mediatorAclMode: 'explicit_deny',
        name: 'Updated Mediator',
        description: 'Updated description',
      );

      expect(request.instanceId, 'mediator-456');
      expect(request.serviceSize, 'small');
      expect(request.mediatorAclMode, 'explicit_deny');
      expect(request.name, 'Updated Mediator');
      expect(request.description, 'Updated description');
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should create request with only name and description for mediator',
        () {
      final request = BaseUpdateInstanceDeploymentRequest.mediator(
        instanceId: 'mediator-789',
        name: 'Test Mediator',
        description: 'Test description',
      );

      expect(request.instanceId, 'mediator-789');
      expect(request.name, 'Test Mediator');
      expect(request.description, 'Test description');
      expect(request.serviceSize, isNull);
      expect(request.mediatorAclMode, isNull);
    });

    test('should serialize to JSON with all fields for mediator', () {
      final request = BaseUpdateInstanceDeploymentRequest.mediator(
        instanceId: 'mediator-123',
        serviceSize: 'medium',
        mediatorAclMode: 'explicit_deny',
        name: 'Updated Name',
        description: 'Updated Description',
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-123');
      expect(json['serviceSize'], 'medium');
      expect(json['mediatorAclMode'], 'explicit_deny');
      expect(json['name'], 'Updated Name');
      expect(json['description'], 'Updated Description');
      expect(json.length, 5);
    });

    test('should serialize to JSON with only instanceId for mediator', () {
      final request = BaseUpdateInstanceDeploymentRequest.mediator(
        instanceId: 'mediator-456',
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-456');
      expect(json.length, 1);
    });

    test('should serialize to JSON without null fields for mediator', () {
      final request = BaseUpdateInstanceDeploymentRequest.mediator(
        instanceId: 'mediator-789',
        name: 'Test Name',
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-789');
      expect(json['name'], 'Test Name');
      expect(json.containsKey('serviceSize'), isFalse);
      expect(json.containsKey('mediatorAclMode'), isFalse);
      expect(json.containsKey('description'), isFalse);
    });

    test('should deserialize from JSON with all fields for mediator', () {
      final json = {
        'mediatorId': 'mediator-123',
        'serviceSize': 'large',
        'mediatorAclMode': 'explicit_deny',
        'name': 'Deserialized Name',
        'description': 'Deserialized Description',
      };

      final request = BaseUpdateInstanceDeploymentRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.serviceSize, 'large');
      expect(request.mediatorAclMode, 'explicit_deny');
      expect(request.name, 'Deserialized Name');
      expect(request.description, 'Deserialized Description');
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should deserialize from JSON with only instanceId for mediator', () {
      final json = {'mediatorId': 'mediator-456'};

      final request = BaseUpdateInstanceDeploymentRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, 'mediator-456');
      expect(request.serviceSize, isNull);
      expect(request.mediatorAclMode, isNull);
      expect(request.name, isNull);
      expect(request.description, isNull);
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should throw TypeError when mediatorId is missing', () {
      final json = <String, dynamic>{};

      expect(
        () => BaseUpdateInstanceDeploymentRequest.fromJson(
          json,
          InstanceType.mediator,
        ),
        throwsA(isA<TypeError>()),
      );
    });

    test('should throw TypeError when mediatorId has wrong type', () {
      final json = {'mediatorId': 123};

      expect(
        () => BaseUpdateInstanceDeploymentRequest.fromJson(
          json,
          InstanceType.mediator,
        ),
        throwsA(isA<TypeError>()),
      );
    });

    test('should handle null values in JSON for mediator', () {
      final json = {
        'mediatorId': 'mediator-123',
        'serviceSize': null,
        'mediatorAclMode': null,
        'name': null,
        'description': null,
      };

      final request = BaseUpdateInstanceDeploymentRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.serviceSize, isNull);
      expect(request.mediatorAclMode, isNull);
      expect(request.name, isNull);
      expect(request.description, isNull);
    });

    test('should handle extra fields in JSON for mediator', () {
      final json = {
        'mediatorId': 'mediator-123',
        'name': 'Test Name',
        'extraField': 'should be ignored',
      };

      final request = BaseUpdateInstanceDeploymentRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.name, 'Test Name');
    });
  });
}
