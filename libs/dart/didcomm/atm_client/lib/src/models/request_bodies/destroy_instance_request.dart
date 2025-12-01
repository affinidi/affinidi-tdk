import '../../messages/atlas/config/instance_type_config.dart';

/// Request for destroying an instance.
class DestroyInstanceRequest {
  /// The ID of the instance to be destroyed.
  final String instanceId;

  /// The type of the instance.
  final InstanceType instanceType;

  /// Creates a [DestroyInstanceRequest] instance.
  DestroyInstanceRequest({
    required this.instanceId,
    required this.instanceType,
  });

  /// Creates a [DestroyInstanceRequest] from a JSON map.
  factory DestroyInstanceRequest.fromJson(
      Map<String, dynamic> json, InstanceType instanceType) {
    final fieldName = instanceType.instanceIdField;
    return DestroyInstanceRequest(
      instanceId: json[fieldName] as String,
      instanceType: instanceType,
    );
  }

  /// Converts the [DestroyInstanceRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    return {
      instanceType.instanceIdField: instanceId,
    };
  }
}
