import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';

import '../response_body.dart';

part 'get_mediators_requests_message.g.dart';

/// Message for getting mediator requests.
class GetMediatorsRequestsMessage extends PlainTextMessage {
  /// Creates a get mediators requests message.
  GetMediatorsRequestsMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorsRequests',
          ),
        );
}

/// Response message for get mediators requests operation.
class GetMediatorsRequestsResponseMessage extends PlainTextMessage {
  /// Creates a get mediators requests response message.
  GetMediatorsRequestsResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorsRequests/response',
          ),
        );

  /// Gets the list of mediator requests from the message body.
  List<MediatorRequest> get requests {
    if (body == null) {
      throw ArgumentError('Response body cannot be null');
    }

    final responseBody = ResponseBody.fromJson(body!);
    final bodyData = GetMediatorsRequestsResponseData.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );

    return bodyData.requests;
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Represents a mediator request.
class MediatorRequest {
  /// The request identifier.
  final String requestId;

  /// The mediator identifier.
  final String mediatorId;

  /// The request timestamp.
  final DateTime timestamp;

  /// Additional request details.
  final Map<String, dynamic>? details;

  /// Creates a mediator request.
  MediatorRequest({
    required this.requestId,
    required this.mediatorId,
    required this.timestamp,
    this.details,
  });

  /// Creates MediatorRequest from a JSON map.
  factory MediatorRequest.fromJson(Map<String, dynamic> json) =>
      _$MediatorRequestFromJson(json);

  /// Converts this MediatorRequest to a JSON map.
  Map<String, dynamic> toJson() => _$MediatorRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for get mediators requests.
class GetMediatorsRequestsResponseData {
  /// The list of mediator requests.
  final List<MediatorRequest> requests;

  /// Creates get mediators requests response data.
  GetMediatorsRequestsResponseData({
    required this.requests,
  });

  /// Creates GetMediatorsRequestsResponseData from a JSON map.
  factory GetMediatorsRequestsResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$GetMediatorsRequestsResponseDataFromJson(json);

  /// Converts this GetMediatorsRequestsResponseData to a JSON map.
  Map<String, dynamic> toJson() =>
      _$GetMediatorsRequestsResponseDataToJson(this);
}
