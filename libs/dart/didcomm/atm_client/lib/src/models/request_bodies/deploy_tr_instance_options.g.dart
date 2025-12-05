// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_tr_instance_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployTrInstanceOptions _$DeployTrInstanceOptionsFromJson(
        Map<String, dynamic> json) =>
    DeployTrInstanceOptions(
      serviceSize: $enumDecode(_$ServiceSizeEnumMap, json['serviceSize']),
      defaultMediatorDid: json['defaultMediatorDid'] as String,
      administratorDids: json['administratorDids'] as String,
      corsAllowedOrigins: json['corsAllowedOrigins'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DeployTrInstanceOptionsToJson(
        DeployTrInstanceOptions instance) =>
    <String, dynamic>{
      'serviceSize': _$ServiceSizeEnumMap[instance.serviceSize]!,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      'defaultMediatorDid': instance.defaultMediatorDid,
      'administratorDids': instance.administratorDids,
      'corsAllowedOrigins': instance.corsAllowedOrigins,
    };

const _$ServiceSizeEnumMap = {
  ServiceSize.dev: 'dev',
  ServiceSize.tiny: 'tiny',
  ServiceSize.small: 'small',
  ServiceSize.medium: 'medium',
  ServiceSize.large: 'large',
};
