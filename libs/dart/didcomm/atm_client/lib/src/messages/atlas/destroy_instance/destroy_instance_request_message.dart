import '../base_messages/base_instance_request_message.dart';

/// Message for destroying an instance.
class DestroyInstanceRequestMessage extends BaseInstanceRequestMessage {
  /// Creates a destroy instance message.
  DestroyInstanceRequestMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates a destroy mediator instance message.
  factory DestroyInstanceRequestMessage.mediator({
    required String id,
    required List<String> to,
    required String instanceId,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return DestroyInstanceRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: {
        'mediatorId': instanceId,
      },
      threadId: threadId,
      operationName: 'destroyMediatorInstance',
    );
  }

  /// Creates a destroy meeting place instance message.
  factory DestroyInstanceRequestMessage.meetingPlace({
    required String id,
    required List<String> to,
    required String instanceId,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return DestroyInstanceRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: {
        'mpxId': instanceId,
      },
      threadId: threadId,
      operationName: 'destroyMpxInstance',
    );
  }

  /// Creates a destroy trust registry instance message.
  factory DestroyInstanceRequestMessage.trustRegistry({
    required String id,
    required List<String> to,
    required String instanceId,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return DestroyInstanceRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: {
        'trId': instanceId,
      },
      threadId: threadId,
      operationName: 'destroyTrInstance',
    );
  }
}
