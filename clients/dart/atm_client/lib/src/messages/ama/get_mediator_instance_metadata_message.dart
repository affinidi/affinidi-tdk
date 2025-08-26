import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mediator_client/mediator_client.dart';

import '../response_body.dart';

part 'get_mediator_instance_metadata_message.g.dart';

/// Message for getting metadata of a mediator instance.
class GetMediatorInstanceMetadataMessage extends PlainTextMessage {
  /// Creates a get mediator instance metadata message.
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

/// Response message for get mediator instance metadata operation.
class GetMediatorInstanceMetadataResponseMessage extends PlainTextMessage {
  /// Creates a get mediator instance metadata response message.
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

  /// Gets the parsed metadata from the message body.
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

/// Metadata for a mediator instance.
class MediatorInstanceMetadata {
  /// The mediator instance identifier.
  final String mediatorId;

  /// The instance status.
  final String status;

  /// The instance configuration.
  final Map<String, dynamic>? configuration;

  /// The deployment information.
  final Map<String, dynamic>? deployment;

  /// Creates mediator instance metadata.
  MediatorInstanceMetadata({
    required this.mediatorId,
    required this.status,
    this.configuration,
    this.deployment,
  });

  /// Creates MediatorInstanceMetadata from a JSON map.
  factory MediatorInstanceMetadata.fromJson(Map<String, dynamic> json) =>
      _$MediatorInstanceMetadataFromJson(json);

  /// Converts this MediatorInstanceMetadata to a JSON map.
  Map<String, dynamic> toJson() => _$MediatorInstanceMetadataToJson(this);
}
