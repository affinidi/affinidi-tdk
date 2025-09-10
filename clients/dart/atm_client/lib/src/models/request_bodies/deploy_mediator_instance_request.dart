import 'package:json_annotation/json_annotation.dart';

part 'deploy_mediator_instance_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeployMediatorInstanceRequest {
  final String? serviceSize;
  final String? mediatorAclMode;

  DeployMediatorInstanceRequest({
    this.serviceSize,
    this.mediatorAclMode,
  });

  factory DeployMediatorInstanceRequest.fromJson(Map<String, dynamic> json) =>
      _$DeployMediatorInstanceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeployMediatorInstanceRequestToJson(this);
}
