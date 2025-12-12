import 'package:json_annotation/json_annotation.dart';

part 'mediator_deployment.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
/// Deployment details for a mediator instance.
class MediatorDeployment {
  /// Type of the instance.
  final String? instanceType;
  /// Region where the instance is deployed.
  final String? region;
  /// Availability zone of the deployment.
  final String? availabilityZone;
  /// Whether auto-scaling is enabled.
  final bool? autoScaling;
  /// Minimum number of instances.
  final int? minInstances;
  /// Maximum number of instances.
  final int? maxInstances;
  /// Current deployment status.
  final String? deploymentStatus;
  /// Timestamp when the instance was deployed.
  final DateTime? deployedAt;
  /// Version of the deployed instance.
  final String? version;

  /// Creates a [MediatorDeployment] instance.
  MediatorDeployment({
    this.instanceType,
    this.region,
    this.availabilityZone,
    this.autoScaling,
    this.minInstances,
    this.maxInstances,
    this.deploymentStatus,
    this.deployedAt,
    this.version,
  });

  /// Creates a [MediatorDeployment] instance from JSON.
  factory MediatorDeployment.fromJson(Map<String, dynamic> json) =>
      _$MediatorDeploymentFromJson(json);

  /// Converts the [MediatorDeployment] instance to JSON. 
  Map<String, dynamic> toJson() => _$MediatorDeploymentToJson(this);
}
