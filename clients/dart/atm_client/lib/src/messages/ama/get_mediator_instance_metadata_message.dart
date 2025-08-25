import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';
import '../response_body.dart';

part 'get_mediator_instance_metadata_message.g.dart';

class GetMediatorInstanceMetadataMessage extends PlainTextMessage {
  GetMediatorInstanceMetadataMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstanceMetadata',
          ),
        );
}

class GetMediatorInstanceMetadataResponseMessage extends PlainTextMessage {
  GetMediatorInstanceMetadataResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstanceMetadata/response',
          ),
        );

  MediatorInstanceMetadata get metadata {
    if (body == null) {
      throw ArgumentError('Response body cannot be null');
    }

    final responseBody = ResponseBody.fromJson(body!);
    return MediatorInstanceMetadata.fromJson(
      jsonDecode(responseBody.response) as Map<String, dynamic>,
    );
  }
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MediatorInstanceMetadata {
  final String mediatorId;
  final String status;
  final Map<String, dynamic>? configuration;
  final Map<String, dynamic>? deployment;

  MediatorInstanceMetadata({
    required this.mediatorId,
    required this.status,
    this.configuration,
    this.deployment,
  });

  factory MediatorInstanceMetadata.fromJson(Map<String, dynamic> json) =>
      _$MediatorInstanceMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$MediatorInstanceMetadataToJson(this);
}
