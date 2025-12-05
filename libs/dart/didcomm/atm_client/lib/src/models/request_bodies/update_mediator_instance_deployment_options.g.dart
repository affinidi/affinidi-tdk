// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_mediator_instance_deployment_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMediatorInstanceDeploymentOptions
    _$UpdateMediatorInstanceDeploymentOptionsFromJson(
            Map<String, dynamic> json) =>
        UpdateMediatorInstanceDeploymentOptions(
          serviceSize:
              $enumDecodeNullable(_$ServiceSizeEnumMap, json['serviceSize']),
          mediatorAclMode: $enumDecodeNullable(
              _$MediatorAclModeEnumMap, json['mediatorAclMode']),
          name: json['name'] as String?,
          description: json['description'] as String?,
        );

Map<String, dynamic> _$UpdateMediatorInstanceDeploymentOptionsToJson(
        UpdateMediatorInstanceDeploymentOptions instance) =>
    <String, dynamic>{
      if (_$ServiceSizeEnumMap[instance.serviceSize] case final value?)
        'serviceSize': value,
      if (_$MediatorAclModeEnumMap[instance.mediatorAclMode] case final value?)
        'mediatorAclMode': value,
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
