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
          maxMessageSize: (json['maxMessageSize'] as num?)?.toInt(),
          messageRetentionDays: (json['messageRetentionDays'] as num?)?.toInt(),
          enableEncryption: json['enableEncryption'] as bool?,
          enableLogging: json['enableLogging'] as bool?,
          logLevel: json['logLevel'] as String?,
        );

Map<String, dynamic> _$UpdateMediatorInstanceConfigurationRequestToJson(
        UpdateMediatorInstanceConfigurationRequest instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      if (instance.maxMessageSize case final value?) 'maxMessageSize': value,
      if (instance.messageRetentionDays case final value?)
        'messageRetentionDays': value,
      if (instance.enableEncryption case final value?)
        'enableEncryption': value,
      if (instance.enableLogging case final value?) 'enableLogging': value,
      if (instance.logLevel case final value?) 'logLevel': value,
    };
