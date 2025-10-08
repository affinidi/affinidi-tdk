// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_mediator_instance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployMediatorInstanceRequest _$DeployMediatorInstanceRequestFromJson(
        Map<String, dynamic> json) =>
    DeployMediatorInstanceRequest(
      administratorDids: json['administratorDids'] as String?,
      serviceSize: json['serviceSize'] as String,
      mediatorAclMode: json['mediatorAclMode'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DeployMediatorInstanceRequestToJson(
        DeployMediatorInstanceRequest instance) =>
    <String, dynamic>{
      if (instance.administratorDids case final value?)
        'administratorDids': value,
      'serviceSize': instance.serviceSize,
      'mediatorAclMode': instance.mediatorAclMode,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
    };
