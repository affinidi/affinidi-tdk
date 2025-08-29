import 'package:json_annotation/json_annotation.dart';

part 'update_mediator_instance_deployment_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdateMediatorInstanceDeploymentRequest {
  final String mediatorId;
  final String? instanceType;
  final String? region;
  final bool? autoScaling;
  final int? minInstances;
  final int? maxInstances;

  UpdateMediatorInstanceDeploymentRequest({
    required this.mediatorId,
    this.instanceType,
    this.region,
    this.autoScaling,
    this.minInstances,
    this.maxInstances,
  });

  factory UpdateMediatorInstanceDeploymentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceDeploymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateMediatorInstanceDeploymentRequestToJson(this);
}