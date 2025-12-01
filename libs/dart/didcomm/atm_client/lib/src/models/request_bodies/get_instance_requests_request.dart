/// Base request for getting instance requests.
class GetInstanceRequestsRequest {
  /// The ID of the mediator instance.
  final String? instanceId;

  /// Maximum number of requests to return.
  final int? limit;

  /// Exclusive start key for pagination.
  final String? exclusiveStartKey;

  /// Creates a [GetInstanceRequestsRequest] instance.
  GetInstanceRequestsRequest({
    this.instanceId,
    this.limit,
    this.exclusiveStartKey,
  });

  /// Creates a [GetInstanceRequestsRequest] from a JSON map.
  factory GetInstanceRequestsRequest.fromJson(Map<String, dynamic> json) {
    return GetInstanceRequestsRequest(
      instanceId: json['mediatorId'] as String?,
      limit: json['limit'] as int?,
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
    );
  }

  /// Converts the [GetInstanceRequestsRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (instanceId != null) {
      json['mediatorId'] = instanceId;
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
