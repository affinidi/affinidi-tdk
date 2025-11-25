import '../../messages/atlas/config/instance_type_config.dart';

/// Request for updating an instance configuration.
class BaseUpdateInstanceConfigurationRequest {
  /// The ID of the instance to be updated.
  final String instanceId;
  /// ACL configuration for the instance.
  final Map<String, num>? acl;
  /// The type of the instance.
  final InstanceType instanceType;

  /// Creates a [BaseUpdateInstanceConfigurationRequest] instance.
  BaseUpdateInstanceConfigurationRequest._({
    required this.instanceId,
    this.acl,
    required this.instanceType,
  });

  /// Creates a [BaseUpdateInstanceConfigurationRequest] for a mediator instance.
  factory BaseUpdateInstanceConfigurationRequest.mediator({
    required String instanceId,
    Map<String, num>? acl,
  }) {
    return BaseUpdateInstanceConfigurationRequest._(
      instanceId: instanceId,
      acl: acl,
      instanceType: InstanceType.mediator,
    );
  }

  /// Creates a [BaseUpdateInstanceConfigurationRequest] for a meetingplace instance.
  factory BaseUpdateInstanceConfigurationRequest.meetingplace({
    required String instanceId,
    Map<String, num>? acl,
  }) {
    return BaseUpdateInstanceConfigurationRequest._(
      instanceId: instanceId,
      acl: acl,
      instanceType: InstanceType.meetingplace,
    );
  }

  /// Creates a [BaseUpdateInstanceConfigurationRequest] for a trustregistry instance.
  factory BaseUpdateInstanceConfigurationRequest.trustregistry({
    required String instanceId,
    Map<String, num>? acl,
  }) {
    return BaseUpdateInstanceConfigurationRequest._(
      instanceId: instanceId,
      acl: acl,
      instanceType: InstanceType.trustregistry,
    );
  }

  /// Creates a [BaseUpdateInstanceConfigurationRequest] from a JSON map.
  factory BaseUpdateInstanceConfigurationRequest.fromJson(
      Map<String, dynamic> json, InstanceType instanceType) {
    final fieldName = instanceType.instanceIdField;
    return BaseUpdateInstanceConfigurationRequest._(
      instanceId: json[fieldName] as String,
      acl: json['acl'] != null
          ? (json['acl'] as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as num),
            )
          : null,
      instanceType: instanceType,
    );
  }
  
  /// Converts the [BaseUpdateInstanceConfigurationRequest] instance to JSON.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      instanceType.instanceIdField: instanceId,
    };
    if (acl != null) {
      json['acl'] = acl;
    }
    return json;
  }
}






