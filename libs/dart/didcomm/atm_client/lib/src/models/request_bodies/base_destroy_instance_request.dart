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
