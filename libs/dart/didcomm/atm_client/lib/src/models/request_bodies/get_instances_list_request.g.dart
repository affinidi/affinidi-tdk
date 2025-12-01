// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_instances_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInstancesListRequest _$BaseGetInstancesListRequestFromJson(
        Map<String, dynamic> json) =>
    GetInstancesListRequest(
      limit: (json['limit'] as num?)?.toInt(),
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
    );

Map<String, dynamic> _$BaseGetInstancesListRequestToJson(
        GetInstancesListRequest instance) =>
    <String, dynamic>{
      if (instance.limit case final value?) 'limit': value,
      if (instance.exclusiveStartKey case final value?)
        'exclusiveStartKey': value,
    };
