import 'package:json_annotation/json_annotation.dart';

import '../service_size/service_size.dart';
import '../deployment_state/deployment_state.dart';
import '../deployment_status/deployment_status.dart';
import '../service_type/service_type.dart';

part 'tr_instance_metadata.g.dart';

/// Metadata for Trust Registry (TR) instance.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class TrInstanceMetadata {
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

  /// DID of TR once it is deployed.
  final String did;

  /// URL where DID document of TR is hosted.
  final String didDocumentUrl;

  /// Project ID.
  final String projectId;

  /// Service type (always TR for this instance).
  final ServiceType serviceType;

  /// Determines the current state of the deployment.
  final DeploymentState deploymentState;

  /// Determines the current status of the deployment.
  final DeploymentStatus deploymentStatus;

  /// Service size configuration.
  final ServiceSize serviceSize;

  /// Account ID where the TR is deployed.
  final String accountId;

  /// Default or initial mediator DID.
  final String defaultMediatorDid;

  /// Comma-separated list of administrator DIDs.
  final String administratorDids;

  /// Comma-separated allowed origins for CORS.
  final String corsAllowedOrigins;

  /// Current service request ID.
  final String? currentServiceRequest;

  /// Creates a TR instance metadata.
  const TrInstanceMetadata({
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
    required this.defaultMediatorDid,
    required this.administratorDids,
    required this.corsAllowedOrigins,
    this.currentServiceRequest,
  });

  /// Creates a TR instance metadata from JSON.
  factory TrInstanceMetadata.fromJson(Map<String, dynamic> json) =>
      _$TrInstanceMetadataFromJson(json);

  /// Converts this TR instance metadata to JSON.
  Map<String, dynamic> toJson() => _$TrInstanceMetadataToJson(this);
}
