// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_get_instances_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseGetInstancesListRequest _$BaseGetInstancesListRequestFromJson(
        Map<String, dynamic> json) =>
    BaseGetInstancesListRequest._(
      limit: (json['limit'] as num?)?.toInt(),
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
    );

Map<String, dynamic> _$BaseGetInstancesListRequestToJson(
        BaseGetInstancesListRequest instance) =>
    <String, dynamic>{
      if (instance.limit case final value?) 'limit': value,
      if (instance.exclusiveStartKey case final value?)
        'exclusiveStartKey': value,
    };
