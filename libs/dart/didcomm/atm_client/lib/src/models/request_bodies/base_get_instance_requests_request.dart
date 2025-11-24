

import '../../messages/atlas/config/instance_type_config.dart';

/// Base request for getting instance requests.
class BaseGetInstanceRequestsRequest {
  /// The ID of the instance.
  final String? instanceId;
  /// Maximum number of requests to return.
  final int? limit;
  /// Exclusive start key for pagination.
  final String? exclusiveStartKey;
  /// The type of the instance.
  final InstanceType instanceType;

  /// Creates a [BaseGetInstanceRequestsRequest] instance.
  BaseGetInstanceRequestsRequest({
    this.instanceId,
    this.limit,
    this.exclusiveStartKey,
    required this.instanceType,
  });

  /// Creates a [BaseGetInstanceRequestsRequest] from a JSON map.
  factory BaseGetInstanceRequestsRequest.fromJson(Map<String, dynamic> json, InstanceType instanceType) {
    final fieldName = instanceType.instanceIdField;
    return BaseGetInstanceRequestsRequest(
      instanceId: json[fieldName] as String?,
      limit: json['limit'] as int?,
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
      instanceType: instanceType,
    );
  }
 
  /// Converts the [BaseGetInstanceRequestsRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic> {};
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
