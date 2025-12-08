import 'package:json_annotation/json_annotation.dart';

import '../mediator_acl_mode/mediator_acl_mode.dart';
import '../service_size/service_size.dart';

part 'update_mediator_instance_deployment_options.g.dart';

/// Options for updating the deployment configuration of a mediator instance.
///
/// All fields are optional to support partial updates.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdateMediatorInstanceDeploymentOptions {
  /// The size of the service instance.
  ///
  /// Available sizes: dev, tiny, small, medium, large.
  /// This is an optional field.
  final ServiceSize? serviceSize;

  /// The ACL (Access Control List) mode for the mediator.
  ///
  /// - `explicit_deny`: Deny access by default, only allow explicitly listed DIDs.
  /// - `explicit_allow`: Allow access by default, only deny explicitly listed DIDs.
  ///
  /// This is an optional field.
  final MediatorAclMode? mediatorAclMode;

  /// The human-readable name for the mediator instance.
  ///
  /// This is an optional field.
  final String? name;

  /// A description of the mediator instance.
  ///
  /// This is an optional field.
  final String? description;

  /// Creates a [UpdateMediatorInstanceDeploymentOptions] instance.
  const UpdateMediatorInstanceDeploymentOptions({
    this.serviceSize,
    this.mediatorAclMode,
    this.name,
    this.description,
  });

  /// Creates a [UpdateMediatorInstanceDeploymentOptions] from a JSON map.
  factory UpdateMediatorInstanceDeploymentOptions.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceDeploymentOptionsFromJson(json);

  /// Converts the [UpdateMediatorInstanceDeploymentOptions] instance to JSON.
  Map<String, dynamic> toJson() =>
      _$UpdateMediatorInstanceDeploymentOptionsToJson(this);
}
