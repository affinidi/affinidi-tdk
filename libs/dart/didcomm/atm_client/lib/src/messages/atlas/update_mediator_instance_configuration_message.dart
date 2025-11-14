import 'dart:convert';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import '../response_body.dart';

part 'update_mediator_instance_configuration_message.g.dart';

/// Message for updating mediator instance configuration.
class UpdateMediatorInstanceConfigurationMessage extends PlainTextMessage {
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
          type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceConfiguration',
          ),
        );
}

/// Response message for update mediator instance configuration operation.
class UpdateMediatorInstanceConfigurationResponseMessage
    extends PlainTextMessage {
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
          type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response',
          ),
        );

  /// Gets the parsed response data from the message body.
  UpdateMediatorInstanceConfigurationResponse get response {
    final responseBody = ResponseBody.fromJson(body!);
    return UpdateMediatorInstanceConfigurationResponse.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );
  }
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
