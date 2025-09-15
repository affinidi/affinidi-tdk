// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_mediator_instance_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeployMediatorInstanceResponse _$DeployMediatorInstanceResponseFromJson(
        Map<String, dynamic> json) =>
    DeployMediatorInstanceResponse(
      mediatorId: json['mediatorId'] as String,
      serviceRequestId: json['serviceRequestId'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DeployMediatorInstanceResponseToJson(
        DeployMediatorInstanceResponse instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      'serviceRequestId': instance.serviceRequestId,
      if (instance.message case final value?) 'message': value,
    };
