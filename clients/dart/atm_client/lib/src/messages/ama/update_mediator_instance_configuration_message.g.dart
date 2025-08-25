// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_mediator_instance_configuration_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMediatorInstanceConfigurationResponse
    _$UpdateMediatorInstanceConfigurationResponseFromJson(
            Map<String, dynamic> json) =>
        UpdateMediatorInstanceConfigurationResponse(
          mediatorId: json['mediatorId'] as String,
          status: json['status'] as String,
        );

Map<String, dynamic> _$UpdateMediatorInstanceConfigurationResponseToJson(
        UpdateMediatorInstanceConfigurationResponse instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      'status': instance.status,
    };
