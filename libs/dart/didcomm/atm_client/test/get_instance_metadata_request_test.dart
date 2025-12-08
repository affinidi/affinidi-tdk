import 'package:affinidi_tdk_atm_client/affinidi_tdk_atm_client.dart';
import 'package:test/test.dart';

void main() {
  group('GetInstanceMetadataRequestMessage', () {
    group('mediator', () {
      test('should create mediator request with instance ID', () {
        final message = GetInstanceMetadataRequestMessage.mediator(
          id: 'test-id',
          to: ['did:example:alice'],
          instanceId: 'mediator-123',
        );

        expect(message.id, 'test-id');
        expect(message.to, ['did:example:alice']);
        expect(message.body!['mediatorId'], 'mediator-123');
        expect(
          message.type.toString(),
          'affinidi.io/operations/ama/getMediatorInstanceMetadata',
        );
      });

      test('should preserve all optional parameters', () {
        final now = DateTime.now();
        final expires = now.add(const Duration(hours: 1));

        final message = GetInstanceMetadataRequestMessage.mediator(
          id: 'test-id',
          to: ['did:example:alice'],
          from: 'did:example:bob',
          createdTime: now,
          expiresTime: expires,
          instanceId: 'mediator-123',
          threadId: 'thread-123',
        );

        expect(message.id, 'test-id');
        expect(message.to, ['did:example:alice']);
        expect(message.from, 'did:example:bob');
        expect(message.createdTime, now);
        expect(message.expiresTime, expires);
        expect(message.body!['mediatorId'], 'mediator-123');
        expect(message.threadId, 'thread-123');
      });
    });

    group('meetingPlace', () {
      test('should create meeting place request with instance ID', () {
        final message = GetInstanceMetadataRequestMessage.meetingPlace(
          id: 'test-id',
          to: ['did:example:alice'],
          instanceId: 'mpx-123',
        );

        expect(message.id, 'test-id');
        expect(message.to, ['did:example:alice']);
        expect(message.body!['mpxId'], 'mpx-123');
        expect(
          message.type.toString(),
          'affinidi.io/operations/ama/getMpxInstanceMetadata',
        );
      });

      test('should preserve all optional parameters', () {
        final now = DateTime.now();
        final expires = now.add(const Duration(hours: 1));

        final message = GetInstanceMetadataRequestMessage.meetingPlace(
          id: 'test-id',
          to: ['did:example:alice'],
          from: 'did:example:bob',
          createdTime: now,
          expiresTime: expires,
          instanceId: 'mpx-123',
          threadId: 'thread-456',
        );

        expect(message.id, 'test-id');
        expect(message.to, ['did:example:alice']);
        expect(message.from, 'did:example:bob');
        expect(message.createdTime, now);
        expect(message.expiresTime, expires);
        expect(message.body!['mpxId'], 'mpx-123');
        expect(message.threadId, 'thread-456');
      });
    });

    group('trustRegistry', () {
      test('should create trust registry request with instance ID', () {
        final message = GetInstanceMetadataRequestMessage.trustRegistry(
          id: 'test-id',
          to: ['did:example:alice'],
          instanceId: 'tr-123',
        );

        expect(message.id, 'test-id');
        expect(message.to, ['did:example:alice']);
        expect(message.body!['trId'], 'tr-123');
        expect(
          message.type.toString(),
          'affinidi.io/operations/ama/getTrInstanceMetadata',
        );
      });

      test('should preserve all optional parameters', () {
        final now = DateTime.now();
        final expires = now.add(const Duration(hours: 1));

        final message = GetInstanceMetadataRequestMessage.trustRegistry(
          id: 'test-id',
          to: ['did:example:alice'],
          from: 'did:example:bob',
          createdTime: now,
          expiresTime: expires,
          instanceId: 'tr-123',
          threadId: 'thread-789',
        );

        expect(message.id, 'test-id');
        expect(message.to, ['did:example:alice']);
        expect(message.from, 'did:example:bob');
        expect(message.createdTime, now);
        expect(message.expiresTime, expires);
        expect(message.body!['trId'], 'tr-123');
        expect(message.threadId, 'thread-789');
      });
    });
  });
}
