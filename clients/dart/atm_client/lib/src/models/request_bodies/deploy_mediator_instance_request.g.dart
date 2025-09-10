// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_mediator_instance_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployMediatorInstanceRequest _$DeployMediatorInstanceRequestFromJson(
        Map<String, dynamic> json) =>
    DeployMediatorInstanceRequest(
      serviceSize: json['serviceSize'] as String?,
      mediatorAclMode: json['mediatorAclMode'] as String?,
    );

Map<String, dynamic> _$DeployMediatorInstanceRequestToJson(
        DeployMediatorInstanceRequest instance) =>
    <String, dynamic>{
      if (instance.serviceSize case final value?) 'serviceSize': value,
      if (instance.mediatorAclMode case final value?) 'mediatorAclMode': value,
    };
