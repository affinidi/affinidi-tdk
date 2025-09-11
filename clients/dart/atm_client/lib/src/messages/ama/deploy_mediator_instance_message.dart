import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import '../response_body.dart';

part 'deploy_mediator_instance_message.g.dart';

/// Message for deploying a mediator instance.
class DeployMediatorInstanceMessage extends PlainTextMessage {
  /// Creates a deploy mediator instance message.
  DeployMediatorInstanceMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/deployMediatorInstance',
          ),
        );
}

/// Response message for deploy mediator instance operation.
class DeployMediatorInstanceResponseMessage extends PlainTextMessage {
  /// Creates a deploy mediator instance response message.
  DeployMediatorInstanceResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/deployMediatorInstance/response',
          ),
        );

  /// Gets the parsed response data from the message body.
  DeployMediatorInstanceResponse get response {
    final responseBody = ResponseBody.fromJson(body!);
    final decodedResponse =
        jsonDecode(responseBody.response) as Map<String, dynamic>;

    return DeployMediatorInstanceResponse.fromJson(decodedResponse);
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for deploy mediator instance operation.
class DeployMediatorInstanceResponse {
  /// The ID of the deployed mediator instance.
  final String mediatorId;

  /// The deployment status.
  final String status;

  /// Creates a deploy mediator instance response.
  DeployMediatorInstanceResponse({
    required this.mediatorId,
    required this.status,
  });

  /// Creates a DeployMediatorInstanceResponse from a JSON map.
  factory DeployMediatorInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DeployMediatorInstanceResponseFromJson(json);

  /// Converts this DeployMediatorInstanceResponse to a JSON map.
  Map<String, dynamic> toJson() => _$DeployMediatorInstanceResponseToJson(this);
}
