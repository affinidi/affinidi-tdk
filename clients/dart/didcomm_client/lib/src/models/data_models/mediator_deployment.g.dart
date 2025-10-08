// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediator_deployment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorDeployment _$MediatorDeploymentFromJson(Map<String, dynamic> json) =>
    MediatorDeployment(
      instanceType: json['instanceType'] as String?,
      region: json['region'] as String?,
      availabilityZone: json['availabilityZone'] as String?,
      autoScaling: json['autoScaling'] as bool?,
      minInstances: (json['minInstances'] as num?)?.toInt(),
      maxInstances: (json['maxInstances'] as num?)?.toInt(),
      deploymentStatus: json['deploymentStatus'] as String?,
      deployedAt: json['deployedAt'] == null
          ? null
          : DateTime.parse(json['deployedAt'] as String),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$MediatorDeploymentToJson(MediatorDeployment instance) =>
    <String, dynamic>{
      if (instance.instanceType case final value?) 'instanceType': value,
      if (instance.region case final value?) 'region': value,
      if (instance.availabilityZone case final value?)
        'availabilityZone': value,
      if (instance.autoScaling case final value?) 'autoScaling': value,
      if (instance.minInstances case final value?) 'minInstances': value,
      if (instance.maxInstances case final value?) 'maxInstances': value,
      if (instance.deploymentStatus case final value?)
        'deploymentStatus': value,
      if (instance.deployedAt?.toIso8601String() case final value?)
        'deployedAt': value,
      if (instance.version case final value?) 'version': value,
    };
