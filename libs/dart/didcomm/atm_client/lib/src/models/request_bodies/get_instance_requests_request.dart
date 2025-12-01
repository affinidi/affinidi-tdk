import '../../messages/atlas/config/instance_type_config.dart';

/// Base request for getting instance requests.
class GetInstanceRequestsRequest {
  /// The ID of the instance.
  final String? instanceId;

  /// Maximum number of requests to return.
  final int? limit;

  /// Exclusive start key for pagination.
  final String? exclusiveStartKey;

  /// The type of the instance.
  final InstanceType instanceType;

  /// Creates a [GetInstanceRequestsRequest] instance.
  GetInstanceRequestsRequest({
    this.instanceId,
    this.limit,
    this.exclusiveStartKey,
    required this.instanceType,
  });

  /// Creates a [GetInstanceRequestsRequest] from a JSON map.
  factory GetInstanceRequestsRequest.fromJson(
      Map<String, dynamic> json, InstanceType instanceType) {
    final fieldName = instanceType.instanceIdField;
    return GetInstanceRequestsRequest(
      instanceId: json[fieldName] as String?,
      limit: json['limit'] as int?,
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
      instanceType: instanceType,
    );
  }

  /// Converts the [GetInstanceRequestsRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (instanceId != null) {
      json[instanceType.instanceIdField] = instanceId;
    }
    if (limit != null) {
      json['limit'] = limit;
    }
    if (exclusiveStartKey != null) {
      json['exclusiveStartKey'] = exclusiveStartKey;
    }
    return json;
  }
}
