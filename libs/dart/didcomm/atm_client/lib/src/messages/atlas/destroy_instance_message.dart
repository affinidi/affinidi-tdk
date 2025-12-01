import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';

part 'destroy_instance_message.g.dart';

/// Message for destroying an instance.
class DestroyInstanceMessage extends BaseInstanceMessage {
  /// Creates a destroy instance message.
  DestroyInstanceMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates a destroy mediator instance message.
  factory DestroyInstanceMessage.mediator({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return DestroyInstanceMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'destroyMediatorInstance',
    );
  }

  /// Creates a destroy meeting place instance message.
  factory DestroyInstanceMessage.meetingPlace({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError('Meeting place destroy is not yet implemented');
  }

  /// Creates a destroy trust registry instance message.
  factory DestroyInstanceMessage.trustRegistry({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError('Trust registry destroy is not yet implemented');
  }
}

/// Response message for destroy mediator instance operation.
class DestroyMediatorInstanceResponseMessage
    extends BaseInstanceResponseMessage<DestroyMediatorInstanceResponse> {
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
          operationName: 'destroyMediatorInstance',
          fromJson: DestroyMediatorInstanceResponse.fromJson,
        );
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
