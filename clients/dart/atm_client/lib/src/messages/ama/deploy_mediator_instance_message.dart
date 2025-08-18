import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';
import '../response_body.dart';

part 'deploy_mediator_instance_message.g.dart';

class DeployMediatorInstanceMessage extends PlainTextMessage {
  DeployMediatorInstanceMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/deployMediatorInstance',
          ),
        );
}

class DeployMediatorInstanceResponseMessage extends PlainTextMessage {
  DeployMediatorInstanceResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/deployMediatorInstance/response',
          ),
        );

  DeployMediatorInstanceResponse get response {
    if (body == null) {
      throw ArgumentError('Response body cannot be null');
    }

    final responseBody = ResponseBody.fromJson(body!);
    return DeployMediatorInstanceResponse.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeployMediatorInstanceResponse {
  final String mediatorId;
  final String status;

  DeployMediatorInstanceResponse({
    required this.mediatorId,
    required this.status,
  });

  factory DeployMediatorInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DeployMediatorInstanceResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DeployMediatorInstanceResponseToJson(this);
}
