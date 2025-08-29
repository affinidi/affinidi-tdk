import 'package:json_annotation/json_annotation.dart';

part 'deploy_mediator_instance_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeployMediatorInstanceRequest {
  final String? name;
  final String? description;
  final String? region;
  final String? instanceType;

  DeployMediatorInstanceRequest({
    this.name,
    this.description,
    this.region,
    this.instanceType,
  });

  factory DeployMediatorInstanceRequest.fromJson(Map<String, dynamic> json) =>
      _$DeployMediatorInstanceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeployMediatorInstanceRequestToJson(this);
}