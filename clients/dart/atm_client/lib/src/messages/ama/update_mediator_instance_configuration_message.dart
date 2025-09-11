import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import '../response_body.dart';

part 'update_mediator_instance_configuration_message.g.dart';

/// Message for updating mediator instance configuration.
class UpdateMediatorInstanceConfigurationMessage extends PlainTextMessage {
  /// Creates an update mediator instance configuration message.
  UpdateMediatorInstanceConfigurationMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
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
    super.body = const {},
    super.threadId,
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response',
          ),
        );

  /// Gets the parsed response data from the message body.
  UpdateMediatorInstanceConfigurationResponse get response {
    if (body == null) {
      throw ArgumentError('Response body cannot be null');
    }

    final responseBody = ResponseBody.fromJson(body!);
    return UpdateMediatorInstanceConfigurationResponse.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for update mediator instance configuration operation.
class UpdateMediatorInstanceConfigurationResponse {
  /// The mediator instance identifier.
  final String mediatorId;

  /// The update status.
  final String status;

  /// Creates an update mediator instance configuration response.
  UpdateMediatorInstanceConfigurationResponse({
    required this.mediatorId,
    required this.status,
  });

  /// Creates UpdateMediatorInstanceConfigurationResponse from a JSON map.
  factory UpdateMediatorInstanceConfigurationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceConfigurationResponseFromJson(json);

  /// Converts this UpdateMediatorInstanceConfigurationResponse to a JSON map.
  Map<String, dynamic> toJson() =>
      _$UpdateMediatorInstanceConfigurationResponseToJson(this);
}
