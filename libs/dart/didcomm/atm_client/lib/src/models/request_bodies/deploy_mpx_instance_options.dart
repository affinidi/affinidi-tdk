import 'package:json_annotation/json_annotation.dart';

import '../service_size/service_size.dart';

part 'deploy_mpx_instance_options.g.dart';

/// Options for deploying an MPX (Meeting Place) instance.
///
/// This defines the configuration for deploying a new Affinidi Messaging MPX service instance.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeployMpxInstanceOptions {
  /// The size of the service instance to deploy.
  ///
  /// Available sizes: dev, tiny, small, medium, large.
  /// This is a required field.
  final ServiceSize serviceSize;

  /// The human-readable name for the MPX instance.
  ///
  /// This is an optional field.
  final String? name;

  /// A description of the MPX instance.
  ///
  /// This is an optional field.
  final String? description;

  /// Creates a [DeployMpxInstanceOptions] instance.
  const DeployMpxInstanceOptions({
    required this.serviceSize,
    this.name,
    this.description,
  });

  /// Creates a [DeployMpxInstanceOptions] from a JSON map.
  factory DeployMpxInstanceOptions.fromJson(Map<String, dynamic> json) =>
      _$DeployMpxInstanceOptionsFromJson(json);

  /// Converts the [DeployMpxInstanceOptions] instance to JSON.
  Map<String, dynamic> toJson() => _$DeployMpxInstanceOptionsToJson(this);
}
