/// Base request for getting instance metadata.
class GetInstanceMetadataRequest {
  /// The ID of the mediator instance.
  final String instanceId;

  /// Creates a [GetInstanceMetadataRequest] instance.
  GetInstanceMetadataRequest({
    required this.instanceId,
  });

  /// Creates a [GetInstanceMetadataRequest] from a JSON map.
  factory GetInstanceMetadataRequest.fromJson(Map<String, dynamic> json) {
    return GetInstanceMetadataRequest(
      instanceId: json['mediatorId'] as String,
    );
  }

  /// Converts the [GetInstanceMetadataRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    return {
      'mediatorId': instanceId,
    };
  }
}
