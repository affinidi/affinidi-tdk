import 'dart:convert';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';

import '../response_body.dart';

part 'destroy_mediator_instance_message.g.dart';

/// Message for destroying a mediator instance.
class DestroyMediatorInstanceMessage extends PlainTextMessage {
  /// Creates a destroy mediator instance message.
  DestroyMediatorInstanceMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/destroyMediatorInstance',
          ),
        );
}

/// Response message for destroy mediator instance operation.
class DestroyMediatorInstanceResponseMessage extends PlainTextMessage {
  /// Creates a destroy mediator instance response message.
  DestroyMediatorInstanceResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/destroyMediatorInstance/response',
          ),
        );

  /// Gets the parsed response data from the message body.
  DestroyMediatorInstanceResponse get response {
    final responseBody = ResponseBody.fromJson(body!);
    return DestroyMediatorInstanceResponse.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for destroy mediator instance operation.
class DestroyMediatorInstanceResponse {
  /// The destruction message/status.
  final String? message;

  /// Creates a destroy mediator instance response.
  DestroyMediatorInstanceResponse({
    this.message,
  });

  /// Creates a DestroyMediatorInstanceResponse from a JSON map.
  factory DestroyMediatorInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DestroyMediatorInstanceResponseFromJson(json);

  /// Converts this DestroyMediatorInstanceResponse to a JSON map.
  Map<String, dynamic> toJson() =>
      _$DestroyMediatorInstanceResponseToJson(this);
}
