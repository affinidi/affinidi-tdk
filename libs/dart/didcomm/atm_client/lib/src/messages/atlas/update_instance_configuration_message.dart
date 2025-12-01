import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';

part 'update_instance_configuration_message.g.dart';

/// Message for updating instance configuration.
class UpdateInstanceConfigurationMessage extends BaseInstanceMessage {
  /// Creates an update instance configuration message.
  UpdateInstanceConfigurationMessage._({
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
  factory UpdateInstanceConfigurationMessage.mediator({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return UpdateInstanceConfigurationMessage._(
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
  factory UpdateInstanceConfigurationMessage.meetingPlace({
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
  factory UpdateInstanceConfigurationMessage.trustRegistry({
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

/// Response message for update mediator instance configuration operation.
class UpdateMediatorInstanceConfigurationResponseMessage
    extends BaseInstanceResponseMessage<
        UpdateMediatorInstanceConfigurationResponse> {
  /// Creates an update mediator instance configuration response message.
  UpdateMediatorInstanceConfigurationResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'updateMediatorInstanceConfiguration',
          fromJson: UpdateMediatorInstanceConfigurationResponse.fromJson,
        );
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for update mediator instance configuration operation.
class UpdateMediatorInstanceConfigurationResponse {
  /// The update message/status.
  final String? message;

  /// Creates an update mediator instance configuration response.
  UpdateMediatorInstanceConfigurationResponse({
    this.message,
  });

  /// Creates UpdateMediatorInstanceConfigurationResponse from a JSON map.
  factory UpdateMediatorInstanceConfigurationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceConfigurationResponseFromJson(json);

  /// Converts this UpdateMediatorInstanceConfigurationResponse to a JSON map.
  Map<String, dynamic> toJson() =>
      _$UpdateMediatorInstanceConfigurationResponseToJson(this);
}
