import 'package:json_annotation/json_annotation.dart';

part 'update_mediator_instance_deployment_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdateMediatorInstanceDeploymentRequest {
  final String mediatorId;
  final String? serviceSize;
  final String? mediatorAclMode;
  final String? name;
  final String? description;

  UpdateMediatorInstanceDeploymentRequest({
    required this.mediatorId,
    this.serviceSize,
    this.mediatorAclMode,
    this.name,
    this.description,
  });

  factory UpdateMediatorInstanceDeploymentRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceDeploymentRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateMediatorInstanceDeploymentRequestToJson(this);
}
