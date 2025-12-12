import 'package:json_annotation/json_annotation.dart';

import '../base_messages/base_response_message.dart';

part 'deploy_instance_response_message.g.dart';

/// Base sealed class for all deploy instance responses.
sealed class DeployInstanceResponse {
  /// Private constructor to prevent external instantiation.
  const DeployInstanceResponse();

  /// Factory constructor to create the appropriate response type from JSON.
  factory DeployInstanceResponse.fromJson(Map<String, dynamic> json) {
    // Determine the type based on which ID field is present
    if (json.containsKey('mediatorId')) {
      return DeployMediatorInstanceResponse.fromJson(json);
    } else if (json.containsKey('mpxId')) {
      return DeployMpxInstanceResponse.fromJson(json);
    } else if (json.containsKey('trId')) {
      return DeployTrustRegistryInstanceResponse.fromJson(json);
    } else {
      throw ArgumentError('Unknown deploy instance response type');
    }
  }

  /// Converts this response to JSON.
  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for deploy mediator instance operation.
final class DeployMediatorInstanceResponse extends DeployInstanceResponse {
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
  }) : super();

  /// Creates a deploy mediator instance response from JSON.
  factory DeployMediatorInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DeployMediatorInstanceResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeployMediatorInstanceResponseToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for deploy MPX instance operation.
final class DeployMpxInstanceResponse extends DeployInstanceResponse {
  /// The ID of the deployed MPX instance.
  final String mpxId;

  /// The service request ID.
  final String serviceRequestId;

  /// The deployment message/status.
  final String? message;

  /// Creates a deploy MPX instance response.
  DeployMpxInstanceResponse({
    required this.mpxId,
    required this.serviceRequestId,
    this.message,
  }) : super();

  /// Creates a deploy MPX instance response from JSON.
  factory DeployMpxInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DeployMpxInstanceResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeployMpxInstanceResponseToJson(this);
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Response data for deploy trust registry instance operation.
final class DeployTrustRegistryInstanceResponse extends DeployInstanceResponse {
  /// The ID of the deployed trust registry instance.
  final String trId;

  /// The service request ID.
  final String serviceRequestId;

  /// The deployment message/status.
  final String? message;

  /// Creates a deploy trust registry instance response.
  DeployTrustRegistryInstanceResponse({
    required this.trId,
    required this.serviceRequestId,
    this.message,
  }) : super();

  /// Creates a deploy trust registry instance response from JSON.
  factory DeployTrustRegistryInstanceResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DeployTrustRegistryInstanceResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$DeployTrustRegistryInstanceResponseToJson(this);
}

/// Response message for deploy instance operation.
class DeployInstanceResponseMessage
    extends BaseResponseMessage<DeployInstanceResponse> {
  /// Creates a deploy instance response message.
  DeployInstanceResponseMessage._({
    required super.id,
    required super.from,
    required super.to,
    required super.operationName,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          fromJson: DeployInstanceResponse.fromJson,
        );

  /// Creates a deploy mediator instance response message.
  factory DeployInstanceResponseMessage.mediator({
    required String id,
    required String from,
    required List<String> to,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
    Map<String, dynamic> body = const {},
  }) {
    return DeployInstanceResponseMessage._(
      id: id,
      from: from,
      to: to,
      createdTime: createdTime,
      expiresTime: expiresTime,
      threadId: threadId,
      body: body,
      operationName: 'deployMediatorInstance',
    );
  }

  /// Creates a deploy MPX instance response message.
  factory DeployInstanceResponseMessage.meetingPlace({
    required String id,
    required String from,
    required List<String> to,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
    Map<String, dynamic> body = const {},
  }) {
    return DeployInstanceResponseMessage._(
      id: id,
      from: from,
      to: to,
      createdTime: createdTime,
      expiresTime: expiresTime,
      threadId: threadId,
      body: body,
      operationName: 'deployMpxInstance',
    );
  }

  /// Creates a deploy Trust Registry instance response message.
  factory DeployInstanceResponseMessage.trustRegistry({
    required String id,
    required String from,
    required List<String> to,
    DateTime? createdTime,
    DateTime? expiresTime,
    String? threadId,
    Map<String, dynamic> body = const {},
  }) {
    return DeployInstanceResponseMessage._(
      id: id,
      from: from,
      to: to,
      createdTime: createdTime,
      expiresTime: expiresTime,
      threadId: threadId,
      body: body,
      operationName: 'deployTrInstance',
    );
  }
}
