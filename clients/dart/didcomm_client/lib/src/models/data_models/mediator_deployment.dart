import 'package:json_annotation/json_annotation.dart';

part 'mediator_deployment.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class MediatorDeployment {
  final String? instanceType;
  final String? region;
  final String? availabilityZone;
  final bool? autoScaling;
  final int? minInstances;
  final int? maxInstances;
  final String? deploymentStatus;
  final DateTime? deployedAt;
  final String? version;

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

  factory MediatorDeployment.fromJson(Map<String, dynamic> json) =>
      _$MediatorDeploymentFromJson(json);

  Map<String, dynamic> toJson() => _$MediatorDeploymentToJson(this);
}
