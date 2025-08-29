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
          instanceType: json['instanceType'] as String?,
          region: json['region'] as String?,
          autoScaling: json['autoScaling'] as bool?,
          minInstances: (json['minInstances'] as num?)?.toInt(),
          maxInstances: (json['maxInstances'] as num?)?.toInt(),
        );

Map<String, dynamic> _$UpdateMediatorInstanceDeploymentRequestToJson(
        UpdateMediatorInstanceDeploymentRequest instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      if (instance.instanceType case final value?) 'instanceType': value,
      if (instance.region case final value?) 'region': value,
      if (instance.autoScaling case final value?) 'autoScaling': value,
      if (instance.minInstances case final value?) 'minInstances': value,
      if (instance.maxInstances case final value?) 'maxInstances': value,
    };
