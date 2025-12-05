// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_mediator_instance_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployMediatorInstanceOptions _$DeployMediatorInstanceOptionsFromJson(
        Map<String, dynamic> json) =>
    DeployMediatorInstanceOptions(
      serviceSize: $enumDecode(_$ServiceSizeEnumMap, json['serviceSize']),
      mediatorAclMode:
          $enumDecode(_$MediatorAclModeEnumMap, json['mediatorAclMode']),
      administratorDids: json['administratorDids'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DeployMediatorInstanceOptionsToJson(
        DeployMediatorInstanceOptions instance) =>
    <String, dynamic>{
      'serviceSize': _$ServiceSizeEnumMap[instance.serviceSize]!,
      'mediatorAclMode': _$MediatorAclModeEnumMap[instance.mediatorAclMode]!,
      if (instance.administratorDids case final value?)
        'administratorDids': value,
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

const _$MediatorAclModeEnumMap = {
  MediatorAclMode.explicitDeny: 'explicit_deny',
  MediatorAclMode.explicitAllow: 'explicit_allow',
};
