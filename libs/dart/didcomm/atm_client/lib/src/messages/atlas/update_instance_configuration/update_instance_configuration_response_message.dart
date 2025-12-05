import 'package:json_annotation/json_annotation.dart';

import '../base_messages/base_response_response_message.dart';

part 'update_instance_configuration_response_message.g.dart';

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
