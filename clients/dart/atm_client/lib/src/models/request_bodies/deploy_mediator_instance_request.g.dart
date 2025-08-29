// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_mediator_instance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployMediatorInstanceRequest _$DeployMediatorInstanceRequestFromJson(
        Map<String, dynamic> json) =>
    DeployMediatorInstanceRequest(
      name: json['name'] as String?,
      description: json['description'] as String?,
      region: json['region'] as String?,
      instanceType: json['instanceType'] as String?,
    );

Map<String, dynamic> _$DeployMediatorInstanceRequestToJson(
        DeployMediatorInstanceRequest instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
      if (instance.region case final value?) 'region': value,
      if (instance.instanceType case final value?) 'instanceType': value,
    };
