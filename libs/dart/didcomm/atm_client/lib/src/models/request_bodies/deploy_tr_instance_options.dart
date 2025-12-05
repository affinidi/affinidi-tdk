import 'package:json_annotation/json_annotation.dart';

import '../service_size/service_size.dart';

part 'deploy_tr_instance_options.g.dart';

/// Options for deploying a Trust Registry (TR) instance.
///
/// This defines the configuration for deploying a new Affinidi Messaging Trust Registry service instance.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeployTrInstanceOptions {
  /// The size of the service instance to deploy.
  ///
  /// Available sizes: dev, tiny, small, medium, large.
  /// This is a required field.
  final ServiceSize serviceSize;

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
  /// This is a required field.
  final String defaultMediatorDid;

  /// Comma-separated list of administrator DIDs.
  ///
  /// These DIDs will have administrative privileges for the TR instance.
  /// This is a required field.
  final String administratorDids;

  /// Comma-separated list of allowed origins for CORS (Cross-Origin Resource Sharing).
  ///
  /// Specify exact origins (e.g., 'https://example.com,https://app.example.com')
  /// or use '*' to allow all origins.
  ///
  /// Warning: Using '*' in production may pose security risks.
  /// This is a required field.
  final String corsAllowedOrigins;

  /// Creates a [DeployTrInstanceOptions] instance.
  const DeployTrInstanceOptions({
    required this.serviceSize,
    required this.defaultMediatorDid,
    required this.administratorDids,
    required this.corsAllowedOrigins,
    this.name,
    this.description,
  });

  /// Creates a [DeployTrInstanceOptions] from a JSON map.
  factory DeployTrInstanceOptions.fromJson(Map<String, dynamic> json) =>
      _$DeployTrInstanceOptionsFromJson(json);

  /// Converts the [DeployTrInstanceOptions] instance to JSON.
  Map<String, dynamic> toJson() => _$DeployTrInstanceOptionsToJson(this);
}
