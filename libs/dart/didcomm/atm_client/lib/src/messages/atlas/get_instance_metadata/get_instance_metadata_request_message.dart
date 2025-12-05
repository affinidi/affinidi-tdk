import '../base_messages/base_request_message.dart';

/// Message for getting metadata of an instance.
class GetInstanceMetadataRequestMessage extends BaseRequestMessage {
  /// Creates a get instance metadata message.
  GetInstanceMetadataRequestMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates a get mediator instance metadata message.
  factory GetInstanceMetadataRequestMessage.mediator({
    required String id,
    required List<String> to,
    required String instanceId,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return GetInstanceMetadataRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: {'mediatorId': instanceId},
      threadId: threadId,
      operationName: 'getMediatorInstanceMetadata',
    );
  }

  /// Creates a get meeting place instance metadata message.
  factory GetInstanceMetadataRequestMessage.meetingPlace({
    required String id,
    required List<String> to,
    required String instanceId,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return GetInstanceMetadataRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: {'mpxId': instanceId},
      threadId: threadId,
      operationName: 'getMpxInstanceMetadata',
    );
  }

  /// Creates a get trust registry instance metadata message.
  factory GetInstanceMetadataRequestMessage.trustRegistry({
    required String id,
    required List<String> to,
    required String instanceId,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return GetInstanceMetadataRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: {
        'trId': instanceId,
      },
      threadId: threadId,
      operationName: 'getTrInstanceMetadata',
    );
  }
}
