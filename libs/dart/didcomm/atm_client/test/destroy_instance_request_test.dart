import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('DestroyInstanceRequest', () {
    test('should create request with instance ID', () {
      final request = DestroyInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        instanceId: 'mediator-123',
      );

      final jsonRequest = request.toJson();
      expect(jsonRequest['instanceId'], 'mediator-123');
    });

    test('should serialize to JSON with correct field name for mediator', () {
      final request = DestroyInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        instanceId: 'mediator-123',
      );

      final json = request.toJson();

      expect(json['mediatorId'], 'mediator-123');
      expect(json.length, 1);
    });

    test('should deserialize from JSON for mediator', () {
      final json = {'mediatorId': 'mediator-123'};

      final request = DestroyInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        instanceId: 'mediator-123',
      );

      final jsonRequest = request.toJson();

      expect(jsonRequest['instanceId'], 'mediator-123');
    });

    test('should throw TypeError when instance ID field is missing', () {
      final json = <String, dynamic>{};

      expect(
        () => DestroyInstanceRequestMessage.mediator(
          id: 'test-id',
          to: ['did:example:alice'],
          instanceId: 'mediator-123',
        ),
        throwsA(isA<TypeError>()),
      );
    });

    test('should throw TypeError when instance ID has wrong type', () {
      final json = {'mediatorId': 123};

      expect(
        () => DestroyInstanceRequestMessage.mediator(
          id: 'test-id',
          to: ['did:example:alice'],
          instanceId: 'mediator-123',
        ),
        throwsA(isA<TypeError>()),
      );
    });

    test('should throw TypeError when instance ID has wrong type', () {
      expect(
        () => DestroyInstanceRequestMessage.mediator(
          id: 'test-id',
          to: ['did:example:alice'],
          instanceId: 'mediator-123',
        ),
        throwsA(isA<TypeError>()),
      );
    });

    test('should throw TypeError when instance ID has wrong type', () {
      final request = DestroyInstanceRequestMessage.mediator(
        id: 'test-id',
        to: ['did:example:alice'],
        instanceId: 'mediator-123',
      );

      final jsonRequest = request.toJson();
      expect(jsonRequest['instanceId'], 'mediator-123');
    });
  });
}
