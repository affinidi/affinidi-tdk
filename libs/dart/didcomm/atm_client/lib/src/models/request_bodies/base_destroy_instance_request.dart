import '../../messages/atlas/config/instance_type_config.dart';

/// Request for destroying an instance.
class BaseDestroyInstanceRequest {
  /// The ID of the instance to be destroyed.
  final String instanceId;
  /// The type of the instance.
  final InstanceType instanceType;

  /// Creates a [BaseDestroyInstanceRequest] instance.
  BaseDestroyInstanceRequest({
    required this.instanceId,
    required this.instanceType,
  });

  /// Creates a [BaseDestroyInstanceRequest] for a mediator instance.
  factory BaseDestroyInstanceRequest.mediator({
    required String instanceId,
  }) {
    return BaseDestroyInstanceRequest(
      instanceId: instanceId,
      instanceType: InstanceType.mediator,
    );
  }

  /// Creates a [BaseDestroyInstanceRequest] for a meetingplace instance.
  factory BaseDestroyInstanceRequest.meetingplace({
    required String instanceId,
  }) {
    return BaseDestroyInstanceRequest(
      instanceId: instanceId,
      instanceType: InstanceType.meetingplace,
    );
  }

  /// Creates a [BaseDestroyInstanceRequest] for a trustregistry instance.
  factory BaseDestroyInstanceRequest.trustregistry({
    required String instanceId,
  }) {
    return BaseDestroyInstanceRequest(
      instanceId: instanceId,
      instanceType: InstanceType.trustregistry,
    );
  }

  /// Creates a [BaseDestroyInstanceRequest] from a JSON map.
  factory BaseDestroyInstanceRequest.fromJson(Map<String, dynamic> json, InstanceType instanceType) {
    final fieldName = instanceType.instanceIdField;
    return BaseDestroyInstanceRequest(
      instanceId: json[fieldName] as String,
      instanceType: instanceType,
    ); 
  }

  /// Converts the [BaseDestroyInstanceRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    return {
       instanceType.instanceIdField: instanceId,
    };
  }
}
