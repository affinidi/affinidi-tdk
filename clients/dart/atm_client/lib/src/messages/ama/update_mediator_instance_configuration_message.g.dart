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
          message: json['message'] as String,
          serviceRequestId: json['serviceRequestId'] as String?,
        );

Map<String, dynamic> _$UpdateMediatorInstanceConfigurationResponseToJson(
        UpdateMediatorInstanceConfigurationResponse instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      'message': instance.message,
      if (instance.serviceRequestId case final value?)
        'serviceRequestId': value,
    };
