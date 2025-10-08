import 'package:json_annotation/json_annotation.dart';

part 'update_mediator_instance_configuration_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdateMediatorInstanceConfigurationRequest {
  final String mediatorId;
  final Map<String, num>? acl;

  UpdateMediatorInstanceConfigurationRequest({
    required this.mediatorId,
    this.acl,
  });

  factory UpdateMediatorInstanceConfigurationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceConfigurationRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateMediatorInstanceConfigurationRequestToJson(this);
}
