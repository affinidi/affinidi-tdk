import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';
import '../response_body.dart';

part 'get_mediators_requests_message.g.dart';

class GetMediatorsRequestsMessage extends PlainTextMessage {
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

class GetMediatorsRequestsResponseMessage extends PlainTextMessage {
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
class MediatorRequest {
  final String requestId;
  final String mediatorId;
  final DateTime timestamp;
  final Map<String, dynamic>? details;

  MediatorRequest({
    required this.requestId,
    required this.mediatorId,
    required this.timestamp,
    this.details,
  });

  factory MediatorRequest.fromJson(Map<String, dynamic> json) =>
      _$MediatorRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MediatorRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class GetMediatorsRequestsResponseData {
  final List<MediatorRequest> requests;

  GetMediatorsRequestsResponseData({
    required this.requests,
  });

  factory GetMediatorsRequestsResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$GetMediatorsRequestsResponseDataFromJson(json);
  Map<String, dynamic> toJson() =>
      _$GetMediatorsRequestsResponseDataToJson(this);
}
