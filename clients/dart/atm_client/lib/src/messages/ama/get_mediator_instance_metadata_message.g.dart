// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediator_instance_metadata_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorInstanceMetadata _$MediatorInstanceMetadataFromJson(
        Map<String, dynamic> json) =>
    MediatorInstanceMetadata(
      mediatorId: json['mediatorId'] as String,
      status: json['status'] as String,
      configuration: json['configuration'] == null
          ? null
          : MediatorConfiguration.fromJson(
              json['configuration'] as Map<String, dynamic>),
      deployment: json['deployment'] == null
          ? null
          : MediatorDeployment.fromJson(
              json['deployment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediatorInstanceMetadataToJson(
        MediatorInstanceMetadata instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      'status': instance.status,
      if (instance.configuration?.toJson() case final value?)
        'configuration': value,
      if (instance.deployment?.toJson() case final value?) 'deployment': value,
    };
