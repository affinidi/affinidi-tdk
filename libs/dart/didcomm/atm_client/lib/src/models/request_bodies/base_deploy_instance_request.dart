import 'package:json_annotation/json_annotation.dart';

part 'base_deploy_instance_request.g.dart';

/// Request for deploying an instance.
/// 
/// Contains all fields required for deployment across all instance types.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class BaseDeployInstanceRequest {
  /// Administrator DIDs for the instance.
  final String? administratorDids;
  /// Service size for the instance.
  final String serviceSize;
  /// Mediator ACL mode for the instance.
  final String? mediatorAclMode;
  /// Name of the instance.
  final String? name;
  /// Description of the instance.
  final String? description;

  /// Creates a deploy instance request.
  BaseDeployInstanceRequest({
    this.administratorDids,
    required this.serviceSize,
    this.mediatorAclMode,
    this.name,
    this.description,
  });

  /// Creates a deploy instance request from JSON.
  factory BaseDeployInstanceRequest.fromJson(Map<String, dynamic> json) =>
      _$BaseDeployInstanceRequestFromJson(json);

  /// Converts the deploy instance request to JSON.
  Map<String, dynamic> toJson() => _$BaseDeployInstanceRequestToJson(this);
}
