// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tr_instance_deployment_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTrInstanceDeploymentOptions _$UpdateTrInstanceDeploymentOptionsFromJson(
        Map<String, dynamic> json) =>
    UpdateTrInstanceDeploymentOptions(
      serviceSize:
          $enumDecodeNullable(_$ServiceSizeEnumMap, json['serviceSize']),
      name: json['name'] as String?,
      description: json['description'] as String?,
      defaultMediatorDid: json['defaultMediatorDid'] as String?,
      administratorDids: json['administratorDids'] as String?,
      corsAllowedOrigins: json['corsAllowedOrigins'] as String?,
    );

Map<String, dynamic> _$UpdateTrInstanceDeploymentOptionsToJson(
        UpdateTrInstanceDeploymentOptions instance) =>
    <String, dynamic>{
      if (_$ServiceSizeEnumMap[instance.serviceSize] case final value?)
        'serviceSize': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      if (instance.defaultMediatorDid case final value?)
        'defaultMediatorDid': value,
      if (instance.administratorDids case final value?)
        'administratorDids': value,
      if (instance.corsAllowedOrigins case final value?)
        'corsAllowedOrigins': value,
    };

const _$ServiceSizeEnumMap = {
  ServiceSize.dev: 'dev',
  ServiceSize.tiny: 'tiny',
  ServiceSize.small: 'small',
  ServiceSize.medium: 'medium',
  ServiceSize.large: 'large',
};
