
import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';
import 'config/instance_type_config.dart';

part 'destroy_mediator_instance_message.g.dart';

/// Message for destroying a mediator instance.
class DestroyMediatorInstanceMessage extends BaseInstanceMessage {

  /// The operation name for destroying a mediator instance.
  static const String operationName = 'destroyMediatorInstance';

  /// Creates a destroy mediator instance message.
  DestroyMediatorInstanceMessage({
    required super.id,
    required super.to,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  }) : super(
         operationName: DestroyMediatorInstanceMessage.operationName,
          instanceType: InstanceType.mediator,
        );
}

/// Response message for destroy mediator instance operation.
class DestroyMediatorInstanceResponseMessage extends BaseInstanceResponseMessage<DestroyMediatorInstanceResponse> {
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
          operationName: DestroyMediatorInstanceMessage.operationName,
          instanceType: InstanceType.mediator,
        );

  @override
  DestroyMediatorInstanceResponse parseResponse(Map<String, dynamic> json) => DestroyMediatorInstanceResponse.fromJson(json);
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
