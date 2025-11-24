import 'package:json_annotation/json_annotation.dart';

import '../../messages/atlas/config/instance_type_config.dart';


@JsonSerializable(includeIfNull: false, explicitToJson: true)
/// Request for updating an instance configuration.
class BaseUpdateInstanceConfigurationRequest {
  /// The ID of the instance to be updated.
  final String instanceId;
  /// ACL configuration for the instance.
  final Map<String, num>? acl;
  /// The type of the instance.
  final InstanceType instanceType;

  /// Creates a [BaseUpdateInstanceConfigurationRequest] instance.
  BaseUpdateInstanceConfigurationRequest({
    required this.instanceId,
    this.acl,
    required this.instanceType,
  });

/// Creates a [BaseUpdateInstanceConfigurationRequest] from a JSON map.
  factory BaseUpdateInstanceConfigurationRequest.fromJson(
          Map<String, dynamic> json, InstanceType instanceType) {
           final fieldName = instanceType.instanceIdField;
    return BaseUpdateInstanceConfigurationRequest(
      instanceId: json[fieldName] as String,
      acl : json['acl'] as Map<String, num>?,
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
