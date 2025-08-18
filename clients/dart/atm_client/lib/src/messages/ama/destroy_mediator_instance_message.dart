import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';
import '../response_body.dart';

part 'destroy_mediator_instance_message.g.dart';

class DestroyMediatorInstanceMessage extends PlainTextMessage {
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

class DestroyMediatorInstanceResponseMessage extends PlainTextMessage {
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
class DestroyMediatorInstanceResponse {
  final String mediatorId;
  final String status;

  DestroyMediatorInstanceResponse({
    required this.mediatorId,
    required this.status,
  });

  factory DestroyMediatorInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DestroyMediatorInstanceResponseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$DestroyMediatorInstanceResponseToJson(this);
}
