import 'package:json_annotation/json_annotation.dart';

import '../service_size/service_size.dart';

part 'update_mpx_instance_deployment_options.g.dart';

/// Options for updating the deployment configuration of an MPX instance.
///
/// All fields are optional to support partial updates.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdateMpxInstanceDeploymentOptions {
  /// The size of the service instance.
  ///
  /// Available sizes: dev, tiny, small, medium, large.
  /// This is an optional field.
  final ServiceSize? serviceSize;

  /// The human-readable name for the MPX instance.
  ///
  /// This is an optional field.
  final String? name;

  /// A description of the MPX instance.
  ///
  /// This is an optional field.
  final String? description;

  /// Creates a [UpdateMpxInstanceDeploymentOptions] instance.
  const UpdateMpxInstanceDeploymentOptions({
    this.serviceSize,
    this.name,
    this.description,
  });

  /// Creates a [UpdateMpxInstanceDeploymentOptions] from a JSON map.
  factory UpdateMpxInstanceDeploymentOptions.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMpxInstanceDeploymentOptionsFromJson(json);

  /// Converts the [UpdateMpxInstanceDeploymentOptions] instance to JSON.
  Map<String, dynamic> toJson() =>
      _$UpdateMpxInstanceDeploymentOptionsToJson(this);
}
