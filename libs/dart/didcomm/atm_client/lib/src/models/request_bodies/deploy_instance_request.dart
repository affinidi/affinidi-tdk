import 'package:json_annotation/json_annotation.dart';

import '../../messages/atlas/config/service_size.dart';
part 'deploy_instance_request.g.dart';

/// Request for deploying an instance.
///
/// Contains all fields required for deployment across all instance types.
@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
)
class DeployInstanceRequest {
  /// Service size for the instance.
  final ServiceSize serviceSize;

  /// Administrator DIDs for the instance.
  final String? administratorDids;

  /// Mediator ACL mode for the instance.
  final String? mediatorAclMode;

  /// Name of the instance.
  final String? name;

  /// Description of the instance.
  final String? description;

  /// Creates a deploy instance request.
  DeployInstanceRequest({
    required this.serviceSize,
    this.administratorDids,
    this.mediatorAclMode,
    this.name,
    this.description,
  });

  /// Creates a deploy instance request from JSON.
  factory DeployInstanceRequest.fromJson(Map<String, dynamic> json) =>
      _$DeployInstanceRequestFromJson(json);

  /// Converts the deploy instance request to JSON.
  Map<String, dynamic> toJson() => _$DeployInstanceRequestToJson(this);
}
