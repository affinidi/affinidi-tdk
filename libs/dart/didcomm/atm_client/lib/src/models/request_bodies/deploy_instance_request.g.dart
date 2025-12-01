// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_instance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployInstanceRequest _$BaseDeployInstanceRequestFromJson(
        Map<String, dynamic> json) =>
    DeployInstanceRequest(
      administratorDids: json['administratorDids'] as String?,
      serviceSize: $enumDecode(_$ServiceSizeEnumMap, json['serviceSize']),
      mediatorAclMode: json['mediatorAclMode'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BaseDeployInstanceRequestToJson(
        DeployInstanceRequest instance) =>
    <String, dynamic>{
      if (instance.administratorDids case final value?)
        'administratorDids': value,
      'serviceSize': _$ServiceSizeEnumMap[instance.serviceSize]!,
      if (instance.mediatorAclMode case final value?) 'mediatorAclMode': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
    };

const _$ServiceSizeEnumMap = {
  ServiceSize.tiny: 'tiny',
  ServiceSize.small: 'small',
  ServiceSize.medium: 'medium',
  ServiceSize.large: 'large',
};
