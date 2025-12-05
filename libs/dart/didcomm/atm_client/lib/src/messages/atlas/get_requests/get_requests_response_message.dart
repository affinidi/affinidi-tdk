import 'package:json_annotation/json_annotation.dart';
import '../base_messages/base_response_response_message.dart';

part 'get_requests_response_message.g.dart';

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

/// Response message for get MPX requests operation.
class GetMpxRequestsResponseMessage
    extends BaseInstanceResponseMessage<GetMpxRequestsResponseData> {
  /// Creates a get MPX requests response message.
  GetMpxRequestsResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getMpxRequests',
          fromJson: GetMpxRequestsResponseData.fromJson,
        );
}

/// Response message for get Trust Registry requests operation.
class GetTrRequestsResponseMessage
    extends BaseInstanceResponseMessage<GetTrRequestsResponseData> {
  /// Creates a get Trust Registry requests response message.
  GetTrRequestsResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getTrRequests',
          fromJson: GetTrRequestsResponseData.fromJson,
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

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Represents an MPX instance request.
class MpxRequest {
  /// The creation timestamp.
  final DateTime? createdAt;

  /// The creator identifier.
  final String? createdBy;

  /// Creates an MPX request.
  MpxRequest({
    this.createdAt,
    this.createdBy,
  });

  /// Creates MpxRequest from a JSON map.
  factory MpxRequest.fromJson(Map<String, dynamic> json) =>
      _$MpxRequestFromJson(json);

  /// Converts this MpxRequest to a JSON map.
  Map<String, dynamic> toJson() => _$MpxRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for get MPX requests.
class GetMpxRequestsResponseData {
  /// The list of MPX requests.
  final List<MpxRequest> requests;

  /// The last evaluated key for pagination.
  final String? lastEvaluatedKey;

  /// Creates get MPX requests response data.
  GetMpxRequestsResponseData({
    required this.requests,
    this.lastEvaluatedKey,
  });

  /// Creates GetMpxRequestsResponseData from a JSON map.
  factory GetMpxRequestsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetMpxRequestsResponseDataFromJson(json);

  /// Converts this GetMpxRequestsResponseData to a JSON map.
  Map<String, dynamic> toJson() => _$GetMpxRequestsResponseDataToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Represents a Trust Registry instance request.
class TrRequest {
  /// The creation timestamp.
  final DateTime? createdAt;

  /// The creator identifier.
  final String? createdBy;

  /// Creates a Trust Registry request.
  TrRequest({
    this.createdAt,
    this.createdBy,
  });

  /// Creates TrRequest from a JSON map.
  factory TrRequest.fromJson(Map<String, dynamic> json) =>
      _$TrRequestFromJson(json);

  /// Converts this TrRequest to a JSON map.
  Map<String, dynamic> toJson() => _$TrRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for get Trust Registry requests.
class GetTrRequestsResponseData {
  /// The list of Trust Registry requests.
  final List<TrRequest> requests;

  /// The last evaluated key for pagination.
  final String? lastEvaluatedKey;

  /// Creates get Trust Registry requests response data.
  GetTrRequestsResponseData({
    required this.requests,
    this.lastEvaluatedKey,
  });

  /// Creates GetTrRequestsResponseData from a JSON map.
  factory GetTrRequestsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetTrRequestsResponseDataFromJson(json);

  /// Converts this GetTrRequestsResponseData to a JSON map.
  Map<String, dynamic> toJson() => _$GetTrRequestsResponseDataToJson(this);
}
