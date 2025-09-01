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
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/destroyMediatorInstance/response',
          ),
        );

  /// Gets the parsed response data from the message body.
  DestroyMediatorInstanceResponse get response {
    if (body == null) {
      throw ArgumentError('Response body cannot be null');
    }

    final responseBody = ResponseBody.fromJson(body!);
    return DestroyMediatorInstanceResponse.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for destroy mediator instance operation.
class DestroyMediatorInstanceResponse {
  /// The ID of the destroyed mediator instance.
  final String mediatorId;

  /// The destruction status.
  final String status;

  /// Creates a destroy mediator instance response.
  DestroyMediatorInstanceResponse({
    required this.mediatorId,
    required this.status,
  });

  /// Creates a DestroyMediatorInstanceResponse from a JSON map.
  factory DestroyMediatorInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DestroyMediatorInstanceResponseFromJson(json);

  /// Converts this DestroyMediatorInstanceResponse to a JSON map.
  Map<String, dynamic> toJson() =>
      _$DestroyMediatorInstanceResponseToJson(this);
}
