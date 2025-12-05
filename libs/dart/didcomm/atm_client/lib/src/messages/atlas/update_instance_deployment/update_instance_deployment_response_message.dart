import 'package:json_annotation/json_annotation.dart';

import '../base_messages/base_response_message.dart';

part 'update_instance_deployment_response_message.g.dart';

/// Response message for update mediator instance deployment operation.
class UpdateMediatorInstanceDeploymentResponseMessage
    extends BaseResponseMessage<UpdateMediatorInstanceDeploymentResponse> {
  /// Creates an update mediator instance deployment response message.
  UpdateMediatorInstanceDeploymentResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'updateMediatorInstanceDeployment',
          fromJson: UpdateMediatorInstanceDeploymentResponse.fromJson,
        );
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for update mediator instance deployment operation.
class UpdateMediatorInstanceDeploymentResponse {
  /// The update message/status.
  final String? message;

  /// Creates an update mediator instance deployment response.
  UpdateMediatorInstanceDeploymentResponse({
    this.message,
  });

  /// Creates UpdateMediatorInstanceDeploymentResponse from a JSON map.
  factory UpdateMediatorInstanceDeploymentResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceDeploymentResponseFromJson(json);

  /// Converts this UpdateMediatorInstanceDeploymentResponse to a JSON map.
  Map<String, dynamic> toJson() =>
      _$UpdateMediatorInstanceDeploymentResponseToJson(this);
}
