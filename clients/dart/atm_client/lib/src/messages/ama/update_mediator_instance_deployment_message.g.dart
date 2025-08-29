// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_mediator_instance_deployment_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMediatorInstanceDeploymentResponse
    _$UpdateMediatorInstanceDeploymentResponseFromJson(
            Map<String, dynamic> json) =>
        UpdateMediatorInstanceDeploymentResponse(
          mediatorId: json['mediatorId'] as String,
          status: json['status'] as String,
        );

Map<String, dynamic> _$UpdateMediatorInstanceDeploymentResponseToJson(
        UpdateMediatorInstanceDeploymentResponse instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      'status': instance.status,
    };
