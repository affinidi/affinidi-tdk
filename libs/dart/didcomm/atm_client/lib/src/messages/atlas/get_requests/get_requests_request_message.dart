import '../../../models/request_bodies/get_instance_requests_request_options.dart';
import '../base_messages/base_request_message.dart';

/// Message for getting instance requests.
class GetRequestsMessage extends BaseRequestMessage {
  /// Creates a get requests message.
  GetRequestsMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates a get mediator requests message.
  factory GetRequestsMessage.mediator({
    required String id,
    required List<String> to,
    required GetInstanceRequestsRequestOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return GetRequestsMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: options.toJson(),
      threadId: threadId,
      operationName: 'getMediatorRequests',
    );
  }

  /// Creates a get meeting place requests message.
  factory GetRequestsMessage.meetingPlace({
    required String id,
    required List<String> to,
    required GetInstanceRequestsRequestOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return GetRequestsMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: options.toJson(),
      threadId: threadId,
      operationName: 'getMpxRequests',
    );
  }

  /// Creates a get trust registry requests message.
  factory GetRequestsMessage.trustRegistry({
    required String id,
    required List<String> to,
    required GetInstanceRequestsRequestOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return GetRequestsMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: options.toJson(),
      threadId: threadId,
      operationName: 'getTrRequests',
    );
  }
}
