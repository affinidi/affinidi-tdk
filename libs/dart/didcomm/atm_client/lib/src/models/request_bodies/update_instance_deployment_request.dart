import '../../../affinidi_tdk_atm_client.dart';

/// Request for updating an instance deployment.
class UpdateInstanceDeploymentRequest {
  /// The ID of the mediator instance to be updated.
  final String instanceId;

  /// The service size for the instance.
  final ServiceSize? serviceSize;

  /// The ACL mode for the mediator.
  final String? mediatorAclMode;

  /// The name of the instance.
  final String? name;

  /// The description of the instance.
  final String? description;

  /// Creates a [UpdateInstanceDeploymentRequest] instance.
  UpdateInstanceDeploymentRequest({
    required this.instanceId,
    this.serviceSize,
    this.mediatorAclMode,
    this.name,
    this.description,
  });

  /// Creates a [UpdateInstanceDeploymentRequest] from a JSON map.
  factory UpdateInstanceDeploymentRequest.fromJson(Map<String, dynamic> json) {
    return UpdateInstanceDeploymentRequest(
      instanceId: json['mediatorId'] as String,
      serviceSize: json['serviceSize'] as ServiceSize?,
      mediatorAclMode: json['mediatorAclMode'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );
  }

  /// Converts the [UpdateInstanceDeploymentRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'mediatorId': instanceId,
    };
    if (serviceSize != null) {
      json['serviceSize'] = serviceSize;
    }
    if (mediatorAclMode != null) {
      json['mediatorAclMode'] = mediatorAclMode;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (description != null) {
      json['description'] = description;
    }
    return json;
  }
}
