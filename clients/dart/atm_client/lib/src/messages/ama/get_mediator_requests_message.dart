import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../models/data_models/request_details.dart';
import '../response_body.dart';

part 'get_mediator_requests_message.g.dart';

/// Message for getting mediator requests.
class GetMediatorRequestsMessage extends PlainTextMessage {
  /// Creates a get mediator requests message.
  GetMediatorRequestsMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorRequests',
          ),
        );
}

/// Response message for get mediator requests operation.
class GetMediatorRequestsResponseMessage extends PlainTextMessage {
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
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorRequests/response',
          ),
        );

  /// Gets the list of mediator requests from the message body.
  List<MediatorRequest> get requests {
    final responseBody = ResponseBody.fromJson(body!);
    final bodyData = GetMediatorRequestsResponseData.fromJson(
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
  final RequestDetails? details;

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

/// Response data for get mediator requests.
class GetMediatorRequestsResponseData {
  /// The list of mediator requests.
  final List<MediatorRequest> requests;

  /// Creates get mediator requests response data.
  GetMediatorRequestsResponseData({
    required this.requests,
  });

  /// Creates GetMediatorRequestsResponseData from a JSON map.
  factory GetMediatorRequestsResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetMediatorRequestsResponseDataFromJson(json);

  /// Converts this GetMediatorRequestsResponseData to a JSON map.
  Map<String, dynamic> toJson() =>
      _$GetMediatorRequestsResponseDataToJson(this);
}
