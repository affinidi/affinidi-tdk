import 'package:json_annotation/json_annotation.dart';

import '../service_size/service_size.dart';

part 'update_tr_instance_deployment_options.g.dart';

/// Options for updating the deployment configuration of a Trust Registry instance.
///
/// All fields are optional to support partial updates.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdateTrInstanceDeploymentOptions {
  /// The size of the service instance.
  ///
  /// Available sizes: dev, tiny, small, medium, large.
  /// This is an optional field.
  final ServiceSize? serviceSize;

  /// The human-readable name for the TR instance.
  ///
  /// This is an optional field.
  final String? name;

  /// A description of the TR instance.
  ///
  /// This is an optional field.
  final String? description;

  /// The default or initial mediator DID for the trust registry.
  ///
  /// This is an optional field.
  final String? defaultMediatorDid;

  /// Comma-separated list of administrator DIDs.
  ///
  /// This is an optional field.
  final String? administratorDids;

  /// Comma-separated list of allowed origins for CORS (Cross-Origin Resource Sharing).
  ///
  /// This is an optional field.
  final String? corsAllowedOrigins;

  /// Creates a [UpdateTrInstanceDeploymentOptions] instance.
  const UpdateTrInstanceDeploymentOptions({
    this.serviceSize,
    this.name,
    this.description,
    this.defaultMediatorDid,
    this.administratorDids,
    this.corsAllowedOrigins,
  });

  /// Creates a [UpdateTrInstanceDeploymentOptions] from a JSON map.
  factory UpdateTrInstanceDeploymentOptions.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateTrInstanceDeploymentOptionsFromJson(json);

  /// Converts the [UpdateTrInstanceDeploymentOptions] instance to JSON.
  Map<String, dynamic> toJson() =>
      _$UpdateTrInstanceDeploymentOptionsToJson(this);
}
