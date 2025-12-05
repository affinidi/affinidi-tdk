import '../../../models/request_bodies/update_mediator_instance_deployment_options.dart';
import '../../../models/request_bodies/update_mpx_instance_deployment_options.dart';
import '../../../models/request_bodies/update_tr_instance_deployment_options.dart';
import '../base_messages/base_instance_request_message.dart';

/// Message for updating instance deployment.
class UpdateInstanceDeploymentRequestMessage
    extends BaseInstanceRequestMessage {
  /// Creates an update instance deployment message.
  UpdateInstanceDeploymentRequestMessage._({
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
  factory UpdateInstanceDeploymentRequestMessage.mediator({
    required String id,
    required List<String> to,
    required String mediatorId,
    required UpdateMediatorInstanceDeploymentOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return UpdateInstanceDeploymentRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: {
        'mediatorId': mediatorId,
        ...options.toJson(),
      },
      threadId: threadId,
      operationName: 'updateMediatorInstanceDeployment',
    );
  }

  /// Creates an update meeting place instance deployment message.
  factory UpdateInstanceDeploymentRequestMessage.meetingPlace({
    required String id,
    required List<String> to,
    required String mpxId,
    required UpdateMpxInstanceDeploymentOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return UpdateInstanceDeploymentRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: {
        'mpxId': mpxId,
        ...options.toJson(),
      },
      threadId: threadId,
      operationName: 'updateMpxInstanceDeployment',
    );
  }

  /// Creates an update trust registry instance deployment message.
  factory UpdateInstanceDeploymentRequestMessage.trustRegistry({
    required String id,
    required List<String> to,
    required String trId,
    required UpdateTrInstanceDeploymentOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return UpdateInstanceDeploymentRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: {
        'trId': trId,
        ...options.toJson(),
      },
      threadId: threadId,
      operationName: 'updateTrInstanceDeployment',
    );
  }
}
