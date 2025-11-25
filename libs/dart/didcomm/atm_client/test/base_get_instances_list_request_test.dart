import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('BaseGetInstancesListRequest', () {
    test('should create request with no parameters', () {
      final request = BaseGetInstancesListRequest.mediator();

      expect(request.limit, isNull);
      expect(request.exclusiveStartKey, isNull);
    });

    test('should create request with limit only', () {
      final request = BaseGetInstancesListRequest.mediator(
        limit: 10,
      );

      expect(request.limit, 10);
      expect(request.exclusiveStartKey, isNull);
    });

    test('should create request with exclusiveStartKey only', () {
      final request = BaseGetInstancesListRequest.mediator(
        exclusiveStartKey: 'key-123',
      );

      expect(request.limit, isNull);
      expect(request.exclusiveStartKey, 'key-123');
    });

    test('should create request with all parameters', () {
      final request = BaseGetInstancesListRequest.mediator(
        limit: 20,
        exclusiveStartKey: 'key-456',
      );

      expect(request.limit, 20);
      expect(request.exclusiveStartKey, 'key-456');
    });

    test('should serialize to JSON with all fields', () {
      final request = BaseGetInstancesListRequest.mediator(
        limit: 15,
        exclusiveStartKey: 'key-789',
      );

      final json = request.toJson();

      expect(json['limit'], 15);
      expect(json['exclusiveStartKey'], 'key-789');
    });

    test('should serialize to JSON without null fields', () {
      final request = BaseGetInstancesListRequest.mediator();

      final json = request.toJson();

      expect(json.isEmpty, isTrue);
    });

    test('should serialize to JSON with only limit', () {
      final request = BaseGetInstancesListRequest.mediator(
        limit: 5,
      );
      final json = request.toJson();

      expect(json['limit'], 5);
      expect(json.containsKey('exclusiveStartKey'), isFalse);
    });

    test('should serialize to JSON with only exclusiveStartKey', () {
      final request = BaseGetInstancesListRequest.mediator(
        exclusiveStartKey: 'key-abc',
      );

      final json = request.toJson();

      expect(json['exclusiveStartKey'], 'key-abc');
      expect(json.containsKey('limit'), isFalse);
    });

    test('should deserialize from JSON with all fields', () {
      final json = {
        'limit': 25,
        'exclusiveStartKey': 'key-xyz',
      };

      final request = BaseGetInstancesListRequest.fromJson(json);

      expect(request.limit, 25);
      expect(request.exclusiveStartKey, 'key-xyz');
    });

    test('should deserialize from JSON with only limit', () {
      final json = {'limit': 30};

      final request = BaseGetInstancesListRequest.fromJson(json);

      expect(request.limit, 30);
      expect(request.exclusiveStartKey, isNull);
    });

    test('should deserialize from JSON with only exclusiveStartKey', () {
      final json = {'exclusiveStartKey': 'key-def'};

      final request = BaseGetInstancesListRequest.fromJson(json);

      expect(request.limit, isNull);
      expect(request.exclusiveStartKey, 'key-def');
    });

    test('should deserialize from empty JSON', () {
      final json = <String, dynamic>{};

      final request = BaseGetInstancesListRequest.fromJson(json);

      expect(request.limit, isNull);
      expect(request.exclusiveStartKey, isNull);
    });

    test('should handle null values in JSON', () {
      final json = {
        'limit': null,
        'exclusiveStartKey': null,
      };

      final request = BaseGetInstancesListRequest.fromJson(json);

      expect(request.limit, isNull);
      expect(request.exclusiveStartKey, isNull);
    });

    test('should handle extra fields in JSON', () {
      final json = {
        'limit': 10,
        'extraField': 'should be ignored',
      };

      final request = BaseGetInstancesListRequest.fromJson(json);

      expect(request.limit, 10);
    });
  });
}
