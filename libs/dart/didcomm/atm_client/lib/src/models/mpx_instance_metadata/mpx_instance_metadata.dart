import 'package:json_annotation/json_annotation.dart';

import '../deployment_state/deployment_state.dart';
import '../deployment_status/deployment_status.dart';
import '../service_size/service_size.dart';
import '../service_type/service_type.dart';

part 'mpx_instance_metadata.g.dart';

/// Metadata for Meeting Place (MPX) instance.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MpxInstanceMetadata {
  /// Name of the entity.
  final String name;

  /// Description of the entity.
  final String description;

  /// ISO 8601 string of the creation date/time of the entity.
  final String createdAt;

  /// ISO 8601 string of the modification date/time of the entity.
  final String modifiedAt;

  /// Identifier of the user who created the entity.
  final String createdBy;

  /// Identifier of the user who last updated the entity.
  final String modifiedBy;

  /// The id will be automatically overridden when calling `service.create`.
  final String id;

  /// DID of MPX once it is deployed.
  final String did;

  /// URL where DID document of MPX is hosted.
  final String didDocumentUrl;

  /// Project ID.
  final String projectId;

  /// Service type (always MPX for this instance).
  final ServiceType serviceType;

  /// Determines the current state of the deployment.
  final DeploymentState deploymentState;

  /// Determines the current status of the deployment.
  final DeploymentStatus deploymentStatus;

  /// Service size configuration.
  final ServiceSize serviceSize;

  /// Account ID where the MPX is deployed.
  final String accountId;

  /// Current service request ID.
  final String? currentServiceRequest;

  /// Creates an MPX instance metadata.
  const MpxInstanceMetadata({
    required this.name,
    required this.description,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.id,
    required this.did,
    required this.didDocumentUrl,
    required this.projectId,
    required this.serviceType,
    required this.deploymentState,
    required this.deploymentStatus,
    required this.serviceSize,
    required this.accountId,
    this.currentServiceRequest,
  });

  /// Creates an MPX instance metadata from JSON.
  factory MpxInstanceMetadata.fromJson(Map<String, dynamic> json) =>
      _$MpxInstanceMetadataFromJson(json);

  /// Converts this MPX instance metadata to JSON.
  Map<String, dynamic> toJson() => _$MpxInstanceMetadataToJson(this);
}
