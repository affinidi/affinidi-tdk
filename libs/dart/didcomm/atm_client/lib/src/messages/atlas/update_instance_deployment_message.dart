import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';

part 'update_instance_deployment_message.g.dart';

/// Message for updating instance deployment.
class UpdateInstanceDeploymentMessage extends BaseInstanceMessage {
  /// Creates an update instance deployment message.
  UpdateInstanceDeploymentMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates an update mediator instance deployment message.
  factory UpdateInstanceDeploymentMessage.mediator({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return UpdateInstanceDeploymentMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'updateMediatorInstanceDeployment',
    );
  }

  /// Creates an update meeting place instance deployment message.
  factory UpdateInstanceDeploymentMessage.meetingPlace({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Meeting place deployment update is not yet implemented');
  }

  /// Creates an update trust registry instance deployment message.
  factory UpdateInstanceDeploymentMessage.trustRegistry({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Trust registry deployment update is not yet implemented');
  }
}

/// Response message for update mediator instance deployment operation.
class UpdateMediatorInstanceDeploymentResponseMessage
    extends BaseInstanceResponseMessage<
        UpdateMediatorInstanceDeploymentResponse> {
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
