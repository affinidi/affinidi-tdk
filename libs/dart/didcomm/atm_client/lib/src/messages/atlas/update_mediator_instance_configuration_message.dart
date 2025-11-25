
import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';
import 'config/instance_type_config.dart';

part 'update_mediator_instance_configuration_message.g.dart';

/// Message for updating mediator instance configuration.
class UpdateMediatorInstanceConfigurationMessage extends BaseInstanceMessage {
  /// The operation name for updating mediator instance configuration.
  static const String operationName = 'updateMediatorInstanceConfiguration';

  /// Creates an update mediator instance configuration message.
  UpdateMediatorInstanceConfigurationMessage({
    required super.id,
    required super.to,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  }) : super(
          operationName: UpdateMediatorInstanceConfigurationMessage.operationName,
          instanceType: InstanceType.mediator,
        );
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
          operationName: UpdateMediatorInstanceConfigurationMessage.operationName,
          instanceType: InstanceType.mediator,
        );

  @override
  UpdateMediatorInstanceConfigurationResponse parseResponse(
          Map<String, dynamic> json) =>
      UpdateMediatorInstanceConfigurationResponse.fromJson(json);
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
