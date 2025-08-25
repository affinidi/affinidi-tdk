import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';
import '../response_body.dart';

part 'update_mediator_instance_deployment_message.g.dart';

class UpdateMediatorInstanceDeploymentMessage extends PlainTextMessage {
  UpdateMediatorInstanceDeploymentMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceDeployment',
          ),
        );
}

class UpdateMediatorInstanceDeploymentResponseMessage extends PlainTextMessage {
  UpdateMediatorInstanceDeploymentResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/updateMediatorInstanceDeployment/response',
          ),
        );

  UpdateMediatorInstanceDeploymentResponse get response {
    if (body == null) {
      throw ArgumentError('Response body cannot be null');
    }

    final responseBody = ResponseBody.fromJson(body!);
    return UpdateMediatorInstanceDeploymentResponse.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdateMediatorInstanceDeploymentResponse {
  final String mediatorId;
  final String status;

  UpdateMediatorInstanceDeploymentResponse({
    required this.mediatorId,
    required this.status,
  });

  factory UpdateMediatorInstanceDeploymentResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceDeploymentResponseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$UpdateMediatorInstanceDeploymentResponseToJson(this);
}
