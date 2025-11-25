import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:affinidi_tdk_atm_client/src/messages/atlas/config/instance_type_config.dart';
import 'package:test/test.dart';

void main() {
  group('BaseGetInstanceMetadataRequest', () {
    test('should create request with mediator instance type', () {
      final request = BaseGetInstanceMetadataRequest.mediator(
        instanceId: 'mediator-123',
        );

      expect(request.instanceId, 'mediator-123');
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should serialize to JSON with correct field name for mediator', () {
      final request = BaseGetInstanceMetadataRequest.mediator(
        instanceId: 'mediator-123',
        );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-123');
      expect(json.length, 1);
    });

    test('should deserialize from JSON for mediator', () {
      final json = {'mediatorId': 'mediator-123'};

      final request = BaseGetInstanceMetadataRequest.fromJson(
        json,
        InstanceType.mediator,
      );

      expect(request.instanceId, 'mediator-123');
      expect(request.instanceType, InstanceType.mediator);
    });

    test('should throw TypeError when instance ID field is missing', () {
      final json = <String, dynamic>{};

      expect(
        () => BaseGetInstanceMetadataRequest.fromJson(
          json,
          InstanceType.mediator,
        ),
        throwsA(isA<TypeError>()),
      );
    });

    test('should throw TypeError when instance ID has wrong type', () {
      final json = {'mediatorId': 123};

      expect(
        () => BaseGetInstanceMetadataRequest.fromJson(
          json,
          InstanceType.mediator,
        ),
        throwsA(isA<TypeError>()),
      );
    });
  });
}
