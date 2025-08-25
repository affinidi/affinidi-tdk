import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';
import '../response_body.dart';

part 'update_mediator_instance_configuration_message.g.dart';

class UpdateMediatorInstanceConfigurationMessage extends PlainTextMessage {
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

class UpdateMediatorInstanceConfigurationResponseMessage
    extends PlainTextMessage {
  UpdateMediatorInstanceConfigurationResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceConfiguration/response',
          ),
        );

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
class UpdateMediatorInstanceConfigurationResponse {
  final String mediatorId;
  final String status;

  UpdateMediatorInstanceConfigurationResponse({
    required this.mediatorId,
    required this.status,
  });

  factory UpdateMediatorInstanceConfigurationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceConfigurationResponseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$UpdateMediatorInstanceConfigurationResponseToJson(this);
}
