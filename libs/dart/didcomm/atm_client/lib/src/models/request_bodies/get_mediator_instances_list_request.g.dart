// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediator_instances_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMediatorInstancesListRequest _$GetMediatorInstancesListRequestFromJson(
        Map<String, dynamic> json) =>
    GetMediatorInstancesListRequest(
      limit: (json['limit'] as num?)?.toInt(),
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
    );

Map<String, dynamic> _$GetMediatorInstancesListRequestToJson(
        GetMediatorInstancesListRequest instance) =>
    <String, dynamic>{
      if (instance.limit case final value?) 'limit': value,
      if (instance.exclusiveStartKey case final value?)
        'exclusiveStartKey': value,
    };
