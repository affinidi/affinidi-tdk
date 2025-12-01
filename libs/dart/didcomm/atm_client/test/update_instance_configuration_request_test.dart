import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('BaseUpdateInstanceConfigurationRequest', () {
    test('should create request with required fields for mediator', () {
      final request = UpdateInstanceConfigurationRequest(
        instanceId: 'mediator-123',
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.acl, isNull);
    });

    test('should create request with ACL for mediator', () {
      final acl = <String, num>{
        'hash1': 1,
        'hash2': 2,
      };

      final request = UpdateInstanceConfigurationRequest(
        instanceId: 'mediator-456',
        acl: acl,
      );

      expect(request.instanceId, 'mediator-456');
      expect(request.acl, acl);
    });

    test('should create request with empty ACL map for mediator', () {
      final request = UpdateInstanceConfigurationRequest(
        instanceId: 'mediator-789',
        acl: <String, num>{},
      );

      expect(request.instanceId, 'mediator-789');
      expect(request.acl, isEmpty);
    });

    test('should serialize to JSON with instanceId only for mediator', () {
      final request = UpdateInstanceConfigurationRequest(
        instanceId: 'mediator-123',
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-123');
      expect(json.containsKey('acl'), isFalse);
      expect(json.length, 1);
    });

    test('should serialize to JSON with ACL for mediator', () {
      final acl = <String, num>{
        'hash1': 1,
        'hash2': 2,
      };

      final request = UpdateInstanceConfigurationRequest(
        instanceId: 'mediator-456',
        acl: acl,
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-456');
      expect(json['acl'], acl);
      expect(json.length, 2);
    });

    test('should serialize to JSON with empty ACL map for mediator', () {
      final request = UpdateInstanceConfigurationRequest(
        instanceId: 'mediator-789',
        acl: <String, num>{},
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-789');
      expect(json['acl'], isEmpty);
      expect(json.length, 2);
    });

    test('should deserialize from JSON with instanceId only for mediator', () {
      final json = {'mediatorId': 'mediator-123'};

      final request = UpdateInstanceConfigurationRequest.fromJson(
        json,
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.acl, isNull);
    });

    test('should deserialize from JSON with ACL for mediator', () {
      final acl = <String, num>{
        'hash1': 1,
        'hash2': 2,
      };

      final json = {
        'mediatorId': 'mediator-456',
        'acl': acl,
      };

      final request = UpdateInstanceConfigurationRequest.fromJson(
        json,
      );

      expect(request.instanceId, 'mediator-456');
      expect(request.acl, acl);
    });

    test('should deserialize from JSON with null ACL for mediator', () {
      final json = {
        'mediatorId': 'mediator-789',
        'acl': null,
      };

      final request = UpdateInstanceConfigurationRequest.fromJson(
        json,
      );

      expect(request.instanceId, 'mediator-789');
      expect(request.acl, isNull);
    });

    test('should throw TypeError when mediatorId is missing', () {
      final json = <String, dynamic>{};

      expect(
        () => UpdateInstanceConfigurationRequest.fromJson(
          json,
        ),
        throwsA(isA<TypeError>()),
      );
    });

    test('should throw TypeError when mediatorId has wrong type', () {
      final json = {'mediatorId': 123};

      expect(
        () => UpdateInstanceConfigurationRequest.fromJson(
          json,
        ),
        throwsA(isA<TypeError>()),
      );
    });

    test('should handle ACL with different numeric types for mediator', () {
      final acl = <String, num>{
        'hash1': 1,
        'hash2': 2.5,
      };

      final request = UpdateInstanceConfigurationRequest(
        instanceId: 'mediator-123',
        acl: acl,
      );

      expect(request.acl, acl);
    });

    test('should handle extra fields in JSON for mediator', () {
      final json = {
        'mediatorId': 'mediator-123',
        'acl': {'hash1': 1},
        'extraField': 'should be ignored',
      };

      final request = UpdateInstanceConfigurationRequest.fromJson(
        json,
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.acl, {'hash1': 1});
    });
  });
}
