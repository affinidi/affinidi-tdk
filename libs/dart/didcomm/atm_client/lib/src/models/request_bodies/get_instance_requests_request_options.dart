/// Base request for getting instance requests.
class GetInstanceRequestsRequestOptions {
  /// The ID of the mediator instance.
  final String? instanceId;

  /// Maximum number of requests to return.
  final int? limit;

  /// Exclusive start key for pagination.
  final String? exclusiveStartKey;

  /// Creates a [GetInstanceRequestsRequestOptions] instance.
  GetInstanceRequestsRequestOptions({
    this.instanceId,
    this.limit,
    this.exclusiveStartKey,
  });

  /// Creates a [GetInstanceRequestsRequestOptions] from a JSON map.
  factory GetInstanceRequestsRequestOptions.fromJson(
      Map<String, dynamic> json) {
    return GetInstanceRequestsRequestOptions(
      instanceId: json['mediatorId'] as String?,
      limit: json['limit'] as int?,
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
    );
  }

  /// Converts the [GetInstanceRequestsRequestOptions] instance to JSON.
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
