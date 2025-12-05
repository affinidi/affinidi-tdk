// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_instances_list_request_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInstancesListRequestOptions _$GetInstancesListRequestOptionsFromJson(
        Map<String, dynamic> json) =>
    GetInstancesListRequestOptions(
      limit: (json['limit'] as num?)?.toInt(),
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
    );

Map<String, dynamic> _$GetInstancesListRequestOptionsToJson(
        GetInstancesListRequestOptions instance) =>
    <String, dynamic>{
      if (instance.limit case final value?) 'limit': value,
      if (instance.exclusiveStartKey case final value?)
        'exclusiveStartKey': value,
    };
