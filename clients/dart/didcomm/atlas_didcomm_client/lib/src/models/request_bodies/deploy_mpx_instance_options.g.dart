// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_mpx_instance_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployMpxInstanceOptions _$DeployMpxInstanceOptionsFromJson(
        Map<String, dynamic> json) =>
    DeployMpxInstanceOptions(
      serviceSize: $enumDecode(_$ServiceSizeEnumMap, json['serviceSize']),
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DeployMpxInstanceOptionsToJson(
        DeployMpxInstanceOptions instance) =>
    <String, dynamic>{
      'serviceSize': _$ServiceSizeEnumMap[instance.serviceSize]!,
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
