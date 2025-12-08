import 'package:json_annotation/json_annotation.dart';

import '../mediator_acl_mode/mediator_acl_mode.dart';
import '../service_size/service_size.dart';

part 'deploy_mediator_instance_options.g.dart';

/// Options for deploying a mediator instance.
///
/// This defines the configuration for deploying a new Affinidi Messaging Mediator service instance.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeployMediatorInstanceOptions {
  /// The size of the service instance to deploy.
  ///
  /// Available sizes: dev, tiny, small, medium, large.
  /// This is a required field.
  final ServiceSize serviceSize;

  /// The ACL (Access Control List) mode for the mediator.
  ///
  /// - `explicit_deny`: Deny access by default, only allow explicitly listed DIDs.
  /// - `explicit_allow`: Allow access by default, only deny explicitly listed DIDs.
  ///
  /// This is a required field.
  final MediatorAclMode mediatorAclMode;

  /// Comma-separated list of administrator DIDs.
  ///
  /// These DIDs will have administrative privileges for the mediator instance.
  /// This is an optional field.
  final String? administratorDids;

  /// The human-readable name for the mediator instance.
  ///
  /// This is an optional field.
  final String? name;

  /// A description of the mediator instance.
  ///
  /// This is an optional field.
  final String? description;

  /// Creates a [DeployMediatorInstanceOptions] instance.
  const DeployMediatorInstanceOptions({
    required this.serviceSize,
    required this.mediatorAclMode,
    this.administratorDids,
    this.name,
    this.description,
  });

  /// Creates a [DeployMediatorInstanceOptions] from a JSON map.
  factory DeployMediatorInstanceOptions.fromJson(Map<String, dynamic> json) =>
      _$DeployMediatorInstanceOptionsFromJson(json);

  /// Converts the [DeployMediatorInstanceOptions] instance to JSON.
  Map<String, dynamic> toJson() => _$DeployMediatorInstanceOptionsToJson(this);
}
