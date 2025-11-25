// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_deploy_instance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseDeployInstanceRequest _$BaseDeployInstanceRequestFromJson(
        Map<String, dynamic> json) =>
    BaseDeployInstanceRequest._(
      administratorDids: json['administratorDids'] as String?,
      serviceSize: json['serviceSize'] as String,
      mediatorAclMode: json['mediatorAclMode'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$BaseDeployInstanceRequestToJson(
        BaseDeployInstanceRequest instance) =>
    <String, dynamic>{
      if (instance.administratorDids case final value?)
        'administratorDids': value,
      'serviceSize': instance.serviceSize,
      if (instance.mediatorAclMode case final value?) 'mediatorAclMode': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
    };
