import 'package:json_annotation/json_annotation.dart';

part 'update_mediator_instance_configuration_request.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class UpdateMediatorInstanceConfigurationRequest {
  final String mediatorId;
  final int? maxMessageSize;
  final int? messageRetentionDays;
  final bool? enableEncryption;
  final bool? enableLogging;
  final String? logLevel;

  UpdateMediatorInstanceConfigurationRequest({
    required this.mediatorId,
    this.maxMessageSize,
    this.messageRetentionDays,
    this.enableEncryption,
    this.enableLogging,
    this.logLevel,
  });

  factory UpdateMediatorInstanceConfigurationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMediatorInstanceConfigurationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateMediatorInstanceConfigurationRequestToJson(this);
}