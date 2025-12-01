/// Request for updating an instance configuration.
class UpdateInstanceConfigurationRequest {
  /// The ID of the mediator instance to be updated.
  final String instanceId;

  /// ACL configuration for the instance.
  final Map<String, num>? acl;

  /// Creates a [UpdateInstanceConfigurationRequest] instance.
  UpdateInstanceConfigurationRequest({
    required this.instanceId,
    this.acl,
  });

  /// Creates a [UpdateInstanceConfigurationRequest] from a JSON map.
  factory UpdateInstanceConfigurationRequest.fromJson(
      Map<String, dynamic> json) {
    return UpdateInstanceConfigurationRequest(
      instanceId: json['mediatorId'] as String,
      acl: json['acl'] != null
          ? (json['acl'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as num),
            )
          : null,
    );
  }

  /// Converts the [UpdateInstanceConfigurationRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'mediatorId': instanceId,
    };
    if (acl != null) {
      json['acl'] = acl;
    }
    return json;
  }
}
