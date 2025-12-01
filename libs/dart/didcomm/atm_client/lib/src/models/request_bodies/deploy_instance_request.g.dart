// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_instance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployInstanceRequest _$DeployInstanceRequestFromJson(
        Map<String, dynamic> json) =>
    DeployInstanceRequest(
      serviceSize: $enumDecode(_$ServiceSizeEnumMap, json['serviceSize']),
      administratorDids: json['administratorDids'] as String?,
      mediatorAclMode: json['mediatorAclMode'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DeployInstanceRequestToJson(
        DeployInstanceRequest instance) =>
    <String, dynamic>{
      'serviceSize': _$ServiceSizeEnumMap[instance.serviceSize]!,
      if (instance.administratorDids case final value?)
        'administratorDids': value,
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
