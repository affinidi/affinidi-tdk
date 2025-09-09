import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import '../response_body.dart';

part 'update_mediator_instance_deployment_message.g.dart';

/// Message for updating mediator instance deployment.
class UpdateMediatorInstanceDeploymentMessage extends PlainTextMessage {
  /// Creates an update mediator instance deployment message.
  UpdateMediatorInstanceDeploymentMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceDeployment',
          ),
        );
}

/// Response message for update mediator instance deployment operation.
class UpdateMediatorInstanceDeploymentResponseMessage extends PlainTextMessage {
  /// Creates an update mediator instance deployment response message.
  UpdateMediatorInstanceDeploymentResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response',
          ),
        );

  /// Gets the parsed response data from the message body.
  UpdateMediatorInstanceDeploymentResponse get response {
    if (body == null) {
      throw ArgumentError('Response body cannot be null');
    }

    final responseBody = ResponseBody.fromJson(body!);
    return UpdateMediatorInstanceDeploymentResponse.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for update mediator instance deployment operation.
class UpdateMediatorInstanceDeploymentResponse {
  /// The mediator instance identifier.
  final String mediatorId;

  /// The update status.
  final String status;

  /// Creates an update mediator instance deployment response.
  UpdateMediatorInstanceDeploymentResponse({
    required this.mediatorId,
    required this.status,
  });

  /// Creates UpdateMediatorInstanceDeploymentResponse from a JSON map.
  factory UpdateMediatorInstanceDeploymentResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceDeploymentResponseFromJson(json);

  /// Converts this UpdateMediatorInstanceDeploymentResponse to a JSON map.
  Map<String, dynamic> toJson() =>
      _$UpdateMediatorInstanceDeploymentResponseToJson(this);
}
