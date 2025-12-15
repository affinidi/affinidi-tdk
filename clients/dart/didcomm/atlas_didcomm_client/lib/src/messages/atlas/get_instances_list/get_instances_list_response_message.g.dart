// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_instances_list_response_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListInstancesOptions _$ListInstancesOptionsFromJson(
        Map<String, dynamic> json) =>
    ListInstancesOptions(
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$ListInstancesOptionsToJson(
        ListInstancesOptions instance) =>
    <String, dynamic>{
      if (instance.exclusiveStartKey case final value?)
        'exclusiveStartKey': value,
      if (instance.limit case final value?) 'limit': value,
    };

MediatorInstanceBodyData _$MediatorInstanceBodyDataFromJson(
        Map<String, dynamic> json) =>
    MediatorInstanceBodyData(
      instances: (json['instances'] as List<dynamic>)
          .map((e) =>
              MediatorInstanceMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastEvaluatedKey: json['lastEvaluatedKey'] as String?,
    );

Map<String, dynamic> _$MediatorInstanceBodyDataToJson(
        MediatorInstanceBodyData instance) =>
    <String, dynamic>{
      'instances': instance.instances.map((e) => e.toJson()).toList(),
      if (instance.lastEvaluatedKey case final value?)
        'lastEvaluatedKey': value,
    };

MpxInstanceBodyData _$MpxInstanceBodyDataFromJson(Map<String, dynamic> json) =>
    MpxInstanceBodyData(
      instances: (json['instances'] as List<dynamic>)
          .map((e) => MpxInstanceMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastEvaluatedKey: json['lastEvaluatedKey'] as String?,
    );

Map<String, dynamic> _$MpxInstanceBodyDataToJson(
        MpxInstanceBodyData instance) =>
    <String, dynamic>{
      'instances': instance.instances.map((e) => e.toJson()).toList(),
      if (instance.lastEvaluatedKey case final value?)
        'lastEvaluatedKey': value,
    };

TrInstanceBodyData _$TrInstanceBodyDataFromJson(Map<String, dynamic> json) =>
    TrInstanceBodyData(
      instances: (json['instances'] as List<dynamic>)
          .map((e) => TrInstanceMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastEvaluatedKey: json['lastEvaluatedKey'] as String?,
    );

Map<String, dynamic> _$TrInstanceBodyDataToJson(TrInstanceBodyData instance) =>
    <String, dynamic>{
      'instances': instance.instances.map((e) => e.toJson()).toList(),
      if (instance.lastEvaluatedKey case final value?)
        'lastEvaluatedKey': value,
    };
