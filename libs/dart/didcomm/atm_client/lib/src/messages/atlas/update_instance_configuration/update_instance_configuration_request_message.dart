import '../base_messages/base_instance_request_message.dart';

/// Message for updating instance configuration.
class UpdateInstanceConfigurationRequestMessage
    extends BaseInstanceRequestMessage {
  /// Creates an update instance configuration message.
  UpdateInstanceConfigurationRequestMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates an update mediator instance configuration message.
  factory UpdateInstanceConfigurationRequestMessage.mediator({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return UpdateInstanceConfigurationRequestMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'updateMediatorInstanceConfiguration',
    );
  }

  /// Creates an update meeting place instance configuration message.
  factory UpdateInstanceConfigurationRequestMessage.meetingPlace({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Meeting place configuration update is not yet implemented');
  }

  /// Creates an update trust registry instance configuration message.
  factory UpdateInstanceConfigurationRequestMessage.trustRegistry({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Trust registry configuration update is not yet implemented');
  }
}
