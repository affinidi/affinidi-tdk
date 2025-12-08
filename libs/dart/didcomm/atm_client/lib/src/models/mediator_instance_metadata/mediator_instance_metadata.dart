import 'package:json_annotation/json_annotation.dart';

import '../deployment_state/deployment_state.dart';
import '../deployment_status/deployment_status.dart';
import '../service_size/service_size.dart';
import '../service_type/service_type.dart';

part 'mediator_instance_metadata.g.dart';

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

  /// DID of mediator once it is deployed.
  final String did;

  /// URL where did document of mediator is hosted.
  final String didDocumentUrl;

  /// The project identifier.
  final String projectId;

  /// The service type.
  final ServiceType serviceType;

  /// Determines the current state of the deployment.
  final DeploymentState deploymentState;

  /// Determines the current status of the deployment.
  final DeploymentStatus deploymentStatus;

  /// The service size.
  final ServiceSize serviceSize;

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
