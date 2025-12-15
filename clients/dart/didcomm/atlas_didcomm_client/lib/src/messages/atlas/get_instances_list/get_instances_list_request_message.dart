import '../../../models/request_bodies/get_instances_list_request_options.dart';
import '../base_messages/base_request_message.dart';

/// Message for getting list of instances.
class GetInstancesListMessage extends BaseRequestMessage {
  /// Creates a get instances list message.
  GetInstancesListMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates a get mediator instances list message.
  factory GetInstancesListMessage.mediator({
    required String id,
    required List<String> to,
    required GetInstancesListRequestOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return GetInstancesListMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: options.toJson(),
      threadId: threadId,
      operationName: 'getMediatorInstancesList',
    );
  }

  /// Creates a get meeting place instances list message.
  factory GetInstancesListMessage.meetingPlace({
    required String id,
    required List<String> to,
    required GetInstancesListRequestOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return GetInstancesListMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: options.toJson(),
      threadId: threadId,
      operationName: 'getMpxInstanceList',
    );
  }

  /// Creates a get trust registry instances list message.
  factory GetInstancesListMessage.trustRegistry({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return GetInstancesListMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'getTrInstanceList',
    );
  }
}
