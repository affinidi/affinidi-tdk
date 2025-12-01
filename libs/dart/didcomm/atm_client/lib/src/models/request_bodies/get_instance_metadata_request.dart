import '../../messages/atlas/config/instance_type_config.dart';

/// Base request for getting instance metadata.
class BaseGetInstanceMetadataRequest {
  /// The ID of the instance.
  final String instanceId;
  /// The type of the instance.
  final InstanceType instanceType;  

  /// Creates a [BaseGetInstanceMetadataRequest] instance.
  BaseGetInstanceMetadataRequest({
    required this.instanceId,
    required this.instanceType,
  });

  /// Creates a [BaseGetInstanceMetadataRequest] from a JSON map.
  factory BaseGetInstanceMetadataRequest.fromJson(
          Map<String, dynamic> json, InstanceType instanceType) {
    final fieldName = instanceType.instanceIdField;
    return BaseGetInstanceMetadataRequest(
      instanceId: json[fieldName] as String,
      instanceType: instanceType,
    );
  }

  /// Converts the [BaseGetInstanceMetadataRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    return {
      instanceType.instanceIdField: instanceId,
    };
  }
}
