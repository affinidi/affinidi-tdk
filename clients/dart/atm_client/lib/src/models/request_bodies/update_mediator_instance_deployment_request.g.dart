// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_mediator_instance_deployment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMediatorInstanceDeploymentRequest
    _$UpdateMediatorInstanceDeploymentRequestFromJson(
            Map<String, dynamic> json) =>
        UpdateMediatorInstanceDeploymentRequest(
          mediatorId: json['mediatorId'] as String,
          serviceSize: json['serviceSize'] as String?,
          mediatorAclMode: json['mediatorAclMode'] as String?,
          name: json['name'] as String?,
          description: json['description'] as String?,
        );

Map<String, dynamic> _$UpdateMediatorInstanceDeploymentRequestToJson(
        UpdateMediatorInstanceDeploymentRequest instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      if (instance.serviceSize case final value?) 'serviceSize': value,
      if (instance.mediatorAclMode case final value?) 'mediatorAclMode': value,
      if (instance.name case final value?) 'name': value,
      if (instance.description case final value?) 'description': value,
    };
