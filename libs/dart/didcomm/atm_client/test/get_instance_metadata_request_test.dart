import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('BaseGetInstanceMetadataRequest', () {
    test('should create request with instance ID', () {
      final request = GetInstanceMetadataRequest(
        instanceId: 'mediator-123',
      );

      expect(request.instanceId, 'mediator-123');
    });

    test('should serialize to JSON with correct field name for mediator', () {
      final request = GetInstanceMetadataRequest(
        instanceId: 'mediator-123',
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-123');
      expect(json.length, 1);
    });

    test('should deserialize from JSON for mediator', () {
      final json = {'mediatorId': 'mediator-123'};

      final request = GetInstanceMetadataRequest.fromJson(json);

      expect(request.instanceId, 'mediator-123');
    });

    test('should throw TypeError when instance ID field is missing', () {
      final json = <String, dynamic>{};

      expect(
        () => GetInstanceMetadataRequest.fromJson(json),
        throwsA(isA<TypeError>()),
      );
    });

    test('should throw TypeError when instance ID has wrong type', () {
      final json = {'mediatorId': 123};

      expect(
        () => GetInstanceMetadataRequest.fromJson(json),
        throwsA(isA<TypeError>()),
      );
    });
  });
}
