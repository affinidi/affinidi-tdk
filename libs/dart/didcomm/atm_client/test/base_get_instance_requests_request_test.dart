import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:affinidi_tdk_atm_client/src/messages/atlas/config/instance_type_config.dart';
import 'package:test/test.dart';

void main() {
  group('BaseGetInstanceRequestsRequest', () {
    test(
        'should create request with mediator instance type and no optional fields',
        () {
      final request = BaseGetInstanceRequestsRequest.mediator(
      );

      expect(request.instanceId, isNull);
      expect(request.limit, isNull);
      expect(request.exclusiveStartKey, isNull);
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should create request with all fields for mediator', () {
      final request = BaseGetInstanceRequestsRequest.mediator(
        instanceId: 'mediator-123',
        limit: 10,
        exclusiveStartKey: 'key-456',
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.limit, 10);
      expect(request.exclusiveStartKey, 'key-456');
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should create request with only instanceId for mediator', () {
      final request = BaseGetInstanceRequestsRequest.mediator(
        instanceId: 'mediator-789',
      );

      expect(request.instanceId, 'mediator-789');
      expect(request.limit, isNull);
      expect(request.exclusiveStartKey, isNull);
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should serialize to JSON with all fields for mediator', () {
      final request = BaseGetInstanceRequestsRequest.mediator(
        instanceId: 'mediator-123',
        limit: 20,
        exclusiveStartKey: 'key-abc',
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-123');
      expect(json['limit'], 20);
      expect(json['exclusiveStartKey'], 'key-abc');
      expect(json.length, 3);
    });

    test('should serialize to JSON with only instanceId for mediator', () {
      final request = BaseGetInstanceRequestsRequest.mediator(
        instanceId: 'mediator-456',
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-456');
      expect(json.length, 1);
    });

    test('should serialize to JSON without instanceId for mediator', () {
      final request = BaseGetInstanceRequestsRequest.mediator(
        limit: 15,
        exclusiveStartKey: 'key-xyz',
      );

      final json = request.toJson();

      expect(json.containsKey('mediatorId'), isFalse);
      expect(json['limit'], 15);
      expect(json['exclusiveStartKey'], 'key-xyz');
      expect(json.length, 2);
    });

    test('should serialize to JSON with no optional fields for mediator', () {
      final request = BaseGetInstanceRequestsRequest.mediator(
      );

      final json = request.toJson();

      expect(json.isEmpty, isTrue);
    });

    test('should deserialize from JSON with all fields for mediator', () {
      final json = {
        'mediatorId': 'mediator-123',
        'limit': 25,
        'exclusiveStartKey': 'key-def',
      };

      final request = BaseGetInstanceRequestsRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.limit, 25);
      expect(request.exclusiveStartKey, 'key-def');
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should deserialize from JSON with only instanceId for mediator', () {
      final json = {'mediatorId': 'mediator-789'};

      final request = BaseGetInstanceRequestsRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, 'mediator-789');
      expect(request.limit, isNull);
      expect(request.exclusiveStartKey, isNull);
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should deserialize from JSON without instanceId for mediator', () {
      final json = {
        'limit': 30,
        'exclusiveStartKey': 'key-ghi',
      };

      final request = BaseGetInstanceRequestsRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, isNull);
      expect(request.limit, 30);
      expect(request.exclusiveStartKey, 'key-ghi');
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should deserialize from empty JSON for mediator', () {
      final json = <String, dynamic>{};

      final request = BaseGetInstanceRequestsRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, isNull);
      expect(request.limit, isNull);
      expect(request.exclusiveStartKey, isNull);
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should handle null instanceId in JSON for mediator', () {
      final json = {
        'mediatorId': null,
        'limit': 10,
      };

      final request = BaseGetInstanceRequestsRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, isNull);
      expect(request.limit, 10);
    });

    test('should handle extra fields in JSON for mediator', () {
      final json = {
        'mediatorId': 'mediator-123',
        'limit': 5,
        'extraField': 'should be ignored',
      };

      final request = BaseGetInstanceRequestsRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.limit, 5);
    });
  });
}
