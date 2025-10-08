// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_mediator_instance_configuration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMediatorInstanceConfigurationRequest
    _$UpdateMediatorInstanceConfigurationRequestFromJson(
            Map<String, dynamic> json) =>
        UpdateMediatorInstanceConfigurationRequest(
          mediatorId: json['mediatorId'] as String,
          acl: (json['acl'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num),
          ),
        );

Map<String, dynamic> _$UpdateMediatorInstanceConfigurationRequestToJson(
        UpdateMediatorInstanceConfigurationRequest instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      if (instance.acl case final value?) 'acl': value,
    };
