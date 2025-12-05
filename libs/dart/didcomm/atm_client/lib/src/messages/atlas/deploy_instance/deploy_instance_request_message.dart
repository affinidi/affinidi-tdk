import '../../../models/request_bodies/deploy_mediator_instance_options.dart';
import '../../../models/request_bodies/deploy_mpx_instance_options.dart';
import '../../../models/request_bodies/deploy_tr_instance_options.dart';
import '../base_messages/base_instance_request_message.dart';

/// Message for deploying an instance.
class DeployInstanceRequestMessage extends BaseInstanceRequestMessage {
  /// Creates a deploy instance message.
  DeployInstanceRequestMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    required super.body,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.threadId,
  });

  /// Creates a deploy mediator instance message.
  factory DeployInstanceRequestMessage.mediator({
    required String id,
    required List<String> to,
    required DeployMediatorInstanceOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return DeployInstanceRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: options.toJson(),
      threadId: threadId,
      operationName: 'deployMediatorInstance',
    );
  }

  /// Creates a deploy meeting place instance message.
  factory DeployInstanceRequestMessage.meetingPlace({
    required String id,
    required List<String> to,
    required DeployMpxInstanceOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return DeployInstanceRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: options.toJson(),
      threadId: threadId,
      operationName: 'deployMpxInstance',
    );
  }

  /// Creates a deploy trust registry instance message.
  factory DeployInstanceRequestMessage.trustRegistry({
    required String id,
    required List<String> to,
    required DeployTrInstanceOptions options,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
  }) {
    return DeployInstanceRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: options.toJson(),
      threadId: threadId,
      operationName: 'deployTrInstance',
    );
  }
}
