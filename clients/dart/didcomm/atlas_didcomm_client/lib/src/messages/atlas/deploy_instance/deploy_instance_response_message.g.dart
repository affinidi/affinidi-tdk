// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploy_instance_response_message.dart';

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

DeployMpxInstanceResponse _$DeployMpxInstanceResponseFromJson(
        Map<String, dynamic> json) =>
    DeployMpxInstanceResponse(
      mpxId: json['mpxId'] as String,
      serviceRequestId: json['serviceRequestId'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DeployMpxInstanceResponseToJson(
        DeployMpxInstanceResponse instance) =>
    <String, dynamic>{
      'mpxId': instance.mpxId,
      'serviceRequestId': instance.serviceRequestId,
      if (instance.message case final value?) 'message': value,
    };

DeployTrustRegistryInstanceResponse
    _$DeployTrustRegistryInstanceResponseFromJson(Map<String, dynamic> json) =>
        DeployTrustRegistryInstanceResponse(
          trId: json['trId'] as String,
          serviceRequestId: json['serviceRequestId'] as String,
          message: json['message'] as String?,
        );

Map<String, dynamic> _$DeployTrustRegistryInstanceResponseToJson(
        DeployTrustRegistryInstanceResponse instance) =>
    <String, dynamic>{
      'trId': instance.trId,
      'serviceRequestId': instance.serviceRequestId,
      if (instance.message case final value?) 'message': value,
    };
