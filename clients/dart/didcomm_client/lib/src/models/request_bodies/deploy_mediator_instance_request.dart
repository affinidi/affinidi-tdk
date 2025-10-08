import 'package:json_annotation/json_annotation.dart';

part 'deploy_mediator_instance_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class DeployMediatorInstanceRequest {
  final String? administratorDids;
  final String serviceSize;
  final String mediatorAclMode;
  final String? name;
  final String? description;

  DeployMediatorInstanceRequest({
    this.administratorDids,
    required this.serviceSize,
    required this.mediatorAclMode,
    this.name,
    this.description,
  });

  factory DeployMediatorInstanceRequest.fromJson(Map<String, dynamic> json) =>
      _$DeployMediatorInstanceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeployMediatorInstanceRequestToJson(this);
}
