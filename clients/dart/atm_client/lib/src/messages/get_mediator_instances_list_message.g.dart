// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediator_instances_list_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorInstance _$MediatorInstanceFromJson(Map<String, dynamic> json) =>
    MediatorInstance();

Map<String, dynamic> _$MediatorInstanceToJson(MediatorInstance instance) =>
    <String, dynamic>{};

MediatorInstanceBodyData _$MediatorInstanceBodyDataFromJson(
        Map<String, dynamic> json) =>
    MediatorInstanceBodyData(
      instances: (json['instances'] as List<dynamic>)
          .map((e) => MediatorInstance.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediatorInstanceBodyDataToJson(
        MediatorInstanceBodyData instance) =>
    <String, dynamic>{
      'instances': instance.instances.map((e) => e.toJson()).toList(),
    };
