import 'package:json_annotation/json_annotation.dart';

import '../base_messages/base_response_message.dart';

part 'destroy_instance_response_message.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
)

/// Response data for destroy instance operation.
class DestroyInstanceResponse {
  /// The response message/status.
  final String? message;

  /// Creates a destroy instance response.
  DestroyInstanceResponse({
    this.message,
  });
  /// Creates a [DestroyInstanceResponse] from a JSON map.
  factory DestroyInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DestroyInstanceResponseFromJson(json);
  /// Converts this [DestroyInstanceResponse] to a JSON map.
  Map<String, dynamic> toJson() => _$DestroyInstanceResponseToJson(this);
}

/// Response message for destroy instance operation.
class DestroyInstanceResponseMessage
    extends BaseResponseMessage<DestroyInstanceResponse> {
  /// Creates a destroy instance response message.
  DestroyInstanceResponseMessage._({
    required super.id,
    required super.from,
    required super.to,
    required super.operationName,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          fromJson: DestroyInstanceResponse.fromJson,
        );

  /// Creates a destroy mediator instance response message.
  factory DestroyInstanceResponseMessage.mediator({
    required String id,
    required String from,
    required List<String> to,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
    Map<String, dynamic> body = const {},
  }) {
    return DestroyInstanceResponseMessage._(
      id: id,
      from: from,
      to: to,
      createdTime: createdTime,
      expiresTime: expiresTime,
      threadId: threadId,
      body: body,
      operationName: 'destroyMediatorInstance',
    );
  }

  /// Creates a destroy MPX instance response message.
  factory DestroyInstanceResponseMessage.meetingPlace({
    required String id,
    required String from,
    required List<String> to,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
    Map<String, dynamic> body = const {},
  }) {
    return DestroyInstanceResponseMessage._(
      id: id,
      from: from,
      to: to,
      createdTime: createdTime,
      expiresTime: expiresTime,
      threadId: threadId,
      body: body,
      operationName: 'destroyMpxInstance',
    );
  }

  /// Creates a destroy Trust Registry instance response message.
  factory DestroyInstanceResponseMessage.trustRegistry({
    required String id,
    required String from,
    required List<String> to,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
    Map<String, dynamic> body = const {},
  }) {
    return DestroyInstanceResponseMessage._(
      id: id,
      from: from,
      to: to,
      createdTime: createdTime,
      expiresTime: expiresTime,
      threadId: threadId,
      body: body,
      operationName: 'destroyTrInstance',
    );
  }
}
