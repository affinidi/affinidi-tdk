import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';

part 'get_requests_message.g.dart';

/// Message for getting instance requests.
class GetRequestsMessage extends BaseInstanceMessage {
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
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return GetRequestsMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'getMediatorRequests',
    );
  }

  /// Creates a get meeting place requests message.
  factory GetRequestsMessage.meetingPlace({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Meeting place requests retrieval is not yet implemented');
  }

  /// Creates a get trust registry requests message.
  factory GetRequestsMessage.trustRegistry({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Trust registry requests retrieval is not yet implemented');
  }
}

/// Response message for get mediator requests operation.
class GetMediatorRequestsResponseMessage
    extends BaseInstanceResponseMessage<GetMediatorRequestsResponseData> {
  /// Creates a get mediator requests response message.
  GetMediatorRequestsResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getMediatorRequests',
          fromJson: GetMediatorRequestsResponseData.fromJson,
        );
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Represents a mediator request.
class MediatorRequest {
  /// The creation timestamp.
  final DateTime? createdAt;

  /// The creator identifier.
  final String? createdBy;

  /// Creates a mediator request.
  MediatorRequest({
    this.createdAt,
    this.createdBy,
  });

  /// Creates MediatorRequest from a JSON map.
  factory MediatorRequest.fromJson(Map<String, dynamic> json) =>
      _$MediatorRequestFromJson(json);

  /// Converts this MediatorRequest to a JSON map.
  Map<String, dynamic> toJson() => _$MediatorRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for get mediator requests.
class GetMediatorRequestsResponseData {
  /// The list of mediator requests.
  final List<MediatorRequest> requests;

  /// The last evaluated key for pagination.
  final String? lastEvaluatedKey;

  /// Creates get mediator requests response data.
  GetMediatorRequestsResponseData({
    required this.requests,
    this.lastEvaluatedKey,
  });

  /// Creates GetMediatorRequestsResponseData from a JSON map.
  factory GetMediatorRequestsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetMediatorRequestsResponseDataFromJson(json);

  /// Converts this GetMediatorRequestsResponseData to a JSON map.
  Map<String, dynamic> toJson() =>
      _$GetMediatorRequestsResponseDataToJson(this);
}
