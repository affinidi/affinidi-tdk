import 'package:json_annotation/json_annotation.dart';

import 'config/base_instance_message.dart';

part 'get_instance_metadata_message.g.dart';

/// Message for getting metadata of an instance.
class GetInstanceMetadataMessage extends BaseInstanceMessage {
  /// Creates a get instance metadata message.
  GetInstanceMetadataMessage._({
    required super.id,
    required super.to,
    required super.operationName,
    super.from,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
    super.threadId,
  });

  /// Creates a get mediator instance metadata message.
  factory GetInstanceMetadataMessage.mediator({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    return GetInstanceMetadataMessage._(
      id: id,
      to: to,
      from: from,
      createdTime: createdTime,
      expiresTime: expiresTime,
      body: body,
      threadId: threadId,
      operationName: 'getMediatorInstanceMetadata',
    );
  }

  /// Creates a get meeting place instance metadata message.
  factory GetInstanceMetadataMessage.meetingPlace({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Meeting place metadata retrieval is not yet implemented');
  }

  /// Creates a get trust registry instance metadata message.
  factory GetInstanceMetadataMessage.trustRegistry({
    required String id,
    required List<String> to,
    String? from,
    DateTime? createdTime,
    DateTime? expiresTime,
    Map<String, dynamic> body = const {},
    String? threadId,
  }) {
    throw UnimplementedError(
        'Trust registry metadata retrieval is not yet implemented');
  }
}

/// Response message for get mediator instance metadata operation.
class GetMediatorInstanceMetadataResponseMessage
    extends BaseInstanceResponseMessage<MediatorInstanceMetadata> {
  /// Creates a get mediator instance metadata response message.
  GetMediatorInstanceMetadataResponseMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.threadId,
    super.body = const {},
  }) : super(
          operationName: 'getMediatorInstanceMetadata',
          fromJson: MediatorInstanceMetadata.fromJson,
        );

  /// Gets the mediator instance metadata from the response.
  MediatorInstanceMetadata get metadata => response;
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)

/// Metadata for a mediator instance.
class MediatorInstanceMetadata {
  /// Name of the entity.
  final String name;

  /// Description of the entity.
  final String description;

  /// ISO 8601 string of the creation date/time the entity.
  final DateTime createdAt;

  /// ISO 8601 string of the modification date/time the entity.
  final DateTime modifiedAt;

  /// Identifier of the user who created the entity.
  final String createdBy;

  /// Identifier of the user who last updated the entity.
  final String modifiedBy;

  /// The mediator instance identifier.
  final String id;

  /// The project identifier.
  final String projectId;

  /// The service type.
  final String serviceType;

  /// Determines the current state of the deployment.
  final String deploymentState;

  /// Determines the current status of the deployment.
  final String deploymentStatus;

  /// The service size.
  final String serviceSize;

  /// DID of mediator once it is deployed.
  final String did;

  /// URL where did document of mediator is hosted.
  final String didDocumentUrl;

  /// AccountId where the mediator is deployed.
  final String accountId;

  /// The current service request ID.
  final String? currentServiceRequest;

  /// Whether administrator DID was generated.
  final bool? isAdministratorDidGenerated;

  /// Administrator DID.
  final String? administratorDid;

  /// Access control list.
  final Map<String, num>? acl;

  /// Creates mediator instance metadata.
  MediatorInstanceMetadata({
    required this.name,
    required this.description,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.id,
    required this.projectId,
    required this.serviceType,
    required this.deploymentState,
    required this.deploymentStatus,
    required this.serviceSize,
    required this.did,
    required this.didDocumentUrl,
    required this.accountId,
    this.currentServiceRequest,
    this.isAdministratorDidGenerated,
    this.administratorDid,
    this.acl,
  });

  /// Creates MediatorInstanceMetadata from a JSON map.
  factory MediatorInstanceMetadata.fromJson(Map<String, dynamic> json) =>
      _$MediatorInstanceMetadataFromJson(json);

  /// Converts this MediatorInstanceMetadata to a JSON map.
  Map<String, dynamic> toJson() => _$MediatorInstanceMetadataToJson(this);
}
