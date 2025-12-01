
import '../../messages/atlas/config/instance_type_config.dart';

/// Request for updating an instance deployment.
class BaseUpdateInstanceDeploymentRequest { 
  /// The ID of the instance to be updated.
  final String instanceId;
  /// The service size for the instance.
  final String? serviceSize;
  /// The ACL mode for the mediator.
  final String? mediatorAclMode;
  /// The name of the instance.
  final String? name;
  /// The description of the instance.
  final String? description;
  /// The type of the instance.
  final InstanceType instanceType;

  /// Creates a [BaseUpdateInstanceDeploymentRequest] instance.
  BaseUpdateInstanceDeploymentRequest({
    required this.instanceId,
    this.serviceSize,
    this.mediatorAclMode,
    this.name,
    this.description,
    required this.instanceType,
  });
 
  /// Creates a [BaseUpdateInstanceDeploymentRequest] from a JSON map.
  factory BaseUpdateInstanceDeploymentRequest.fromJson(
          Map<String, dynamic> json, InstanceType instanceType) {
            final fieldName = instanceType.instanceIdField;
    return BaseUpdateInstanceDeploymentRequest(
      instanceId: json[fieldName] as String,
      serviceSize: json['serviceSize'] as String?,
      mediatorAclMode: json['mediatorAclMode'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      instanceType: instanceType,
    );
  }
  
  /// Converts the [BaseUpdateInstanceDeploymentRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      instanceType.instanceIdField: instanceId,
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
