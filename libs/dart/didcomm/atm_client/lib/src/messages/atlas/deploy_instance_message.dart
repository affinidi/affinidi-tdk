import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';

part 'deploy_instance_message.g.dart';

/// Message for deploying an instance.
class DeployInstanceMessage extends BaseInstanceMessage {
  /// Creates a deploy instance message.
  DeployInstanceMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates a deploy mediator instance message.
  factory DeployInstanceMessage.mediator({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return DeployInstanceMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'deployMediatorInstance',
    );
  }

  /// Creates a deploy meeting place instance message.
  factory DeployInstanceMessage.meetingPlace({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return DeployInstanceMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'deployMeetingPlaceInstance',
    );
  }

  /// Creates a deploy trust registry instance message.
  factory DeployInstanceMessage.trustRegistry({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return DeployInstanceMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'deployTrustRegistryInstance',
    );
  }
}

/// Response message for deploy mediator instance operation.
class DeployMediatorInstanceResponseMessage
    extends BaseInstanceResponseMessage<DeployMediatorInstanceResponse> {
  /// Creates a deploy mediator instance response message.
  DeployMediatorInstanceResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'deployMediatorInstance',
          fromJson: DeployMediatorInstanceResponse.fromJson,
        );
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for deploy mediator instance operation.
class DeployMediatorInstanceResponse {
  /// The ID of the deployed mediator instance.
  final String mediatorId;

  /// The service request ID.
  final String serviceRequestId;

  /// The deployment message/status.
  final String? message;

  /// Creates a deploy mediator instance response.
  DeployMediatorInstanceResponse({
    required this.mediatorId,
    required this.serviceRequestId,
    this.message,
  });

  /// Creates a DeployMediatorInstanceResponse from a JSON map.
  factory DeployMediatorInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DeployMediatorInstanceResponseFromJson(json);

  /// Converts this DeployMediatorInstanceResponse to a JSON map.
  Map<String, dynamic> toJson() => _$DeployMediatorInstanceResponseToJson(this);
}
