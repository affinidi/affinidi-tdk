// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_mpx_instance_deployment_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMpxInstanceDeploymentOptions _$UpdateMpxInstanceDeploymentOptionsFromJson(
        Map<String, dynamic> json) =>
    UpdateMpxInstanceDeploymentOptions(
      serviceSize:
          $enumDecodeNullable(_$ServiceSizeEnumMap, json['serviceSize']),
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UpdateMpxInstanceDeploymentOptionsToJson(
        UpdateMpxInstanceDeploymentOptions instance) =>
    <String, dynamic>{
      if (_$ServiceSizeEnumMap[instance.serviceSize] case final value?)
        'serviceSize': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
    };

const _$ServiceSizeEnumMap = {
  ServiceSize.dev: 'dev',
  ServiceSize.tiny: 'tiny',
  ServiceSize.small: 'small',
  ServiceSize.medium: 'medium',
  ServiceSize.large: 'large',
};
