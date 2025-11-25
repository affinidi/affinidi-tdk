
import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';
import 'config/instance_type_config.dart';

part 'update_mediator_instance_deployment_message.g.dart';

/// Message for updating mediator instance deployment.
class UpdateMediatorInstanceDeploymentMessage extends BaseInstanceMessage {
  /// The operation name for updating mediator instance deployment.
  static const String operationName = 'updateMediatorInstanceDeployment';
  /// Creates an update mediator instance deployment message.
  UpdateMediatorInstanceDeploymentMessage({
    required super.id,
    required super.to,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  }) : super(
          operationName: UpdateMediatorInstanceDeploymentMessage.operationName,
          instanceType: InstanceType.mediator,
        );
}

/// Response message for update mediator instance deployment operation.
class UpdateMediatorInstanceDeploymentResponseMessage extends BaseInstanceResponseMessage<UpdateMediatorInstanceDeploymentResponse> {
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
          operationName: UpdateMediatorInstanceDeploymentMessage.operationName,
          instanceType: InstanceType.mediator,
          
        );

  @override
  UpdateMediatorInstanceDeploymentResponse parseResponse(Map<String, dynamic> json) => UpdateMediatorInstanceDeploymentResponse.fromJson(json);
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
