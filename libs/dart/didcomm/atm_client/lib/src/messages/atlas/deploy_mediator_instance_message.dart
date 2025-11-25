
import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';
import 'config/instance_type_config.dart';

part 'deploy_mediator_instance_message.g.dart';

/// Message for deploying a mediator instance.
class DeployMediatorInstanceMessage extends BaseInstanceMessage {

  /// The operation name for deploying a mediator instance.
  static const String operationName = 'deployMediatorInstance';
  /// Creates a deploy mediator instance message.
  DeployMediatorInstanceMessage({
    required super.id,
    required super.to,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  }) : super(
          operationName: DeployMediatorInstanceMessage.operationName,
          instanceType: InstanceType.mediator,
        );
}



/// Response message for deploy mediator instance operation.
class DeployMediatorInstanceResponseMessage extends BaseInstanceResponseMessage<DeployMediatorInstanceResponse> {
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
          operationName: DeployMediatorInstanceMessage.operationName,
          instanceType: InstanceType.mediator,
        );

  @override
  DeployMediatorInstanceResponse parseResponse(Map<String, dynamic> json) => DeployMediatorInstanceResponse.fromJson(json);
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
