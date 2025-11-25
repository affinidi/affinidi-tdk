
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


  BaseUpdateInstanceDeploymentRequest._({
    required this.instanceId,
    this.serviceSize,
    this.mediatorAclMode,
    this.name,
    this.description,
    required this.instanceType,
  });

  /// Creates a [BaseUpdateInstanceDeploymentRequest] for a mediator instance.
  factory BaseUpdateInstanceDeploymentRequest.mediator({
    required String instanceId,
    String? serviceSize,
    String? mediatorAclMode,
    String? name,
    String? description,
  }) {
    return BaseUpdateInstanceDeploymentRequest._(
      instanceId: instanceId,
      serviceSize: serviceSize, 
      mediatorAclMode: mediatorAclMode,
      name: name,
      description: description,
      instanceType: InstanceType.mediator,
    );
  }

  /// Creates a [BaseUpdateInstanceDeploymentRequest] for a meetingplace instance.
  factory BaseUpdateInstanceDeploymentRequest.meetingplace({
    required String instanceId,
    String? serviceSize,
    String? name,
    String? description,
  }) {
    return BaseUpdateInstanceDeploymentRequest._(
      instanceId: instanceId,
      serviceSize: serviceSize,
      name: name,
      description: description,
      instanceType: InstanceType.meetingplace,
    );
  }

  /// Creates a [BaseUpdateInstanceDeploymentRequest] for a trustregistry instance.
  factory BaseUpdateInstanceDeploymentRequest.trustregistry({
    required String instanceId,
    String? serviceSize,
    String? name,
    String? description,
  }) {
    return BaseUpdateInstanceDeploymentRequest._(
      instanceId: instanceId,
      serviceSize: serviceSize,
      name: name,
      description: description,
      instanceType: InstanceType.meetingplace,
    );
  }


  /// Creates a [BaseUpdateInstanceDeploymentRequest] from a JSON map.
  factory BaseUpdateInstanceDeploymentRequest.fromJson(
          Map<String, dynamic> json, InstanceType instanceType) {
            final fieldName = instanceType.instanceIdField;
    return BaseUpdateInstanceDeploymentRequest._(
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
