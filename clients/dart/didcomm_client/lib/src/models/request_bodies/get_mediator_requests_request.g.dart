// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediator_requests_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMediatorRequestsRequest _$GetMediatorRequestsRequestFromJson(
        Map<String, dynamic> json) =>
    GetMediatorRequestsRequest(
      mediatorId: json['mediatorId'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
    );

Map<String, dynamic> _$GetMediatorRequestsRequestToJson(
        GetMediatorRequestsRequest instance) =>
    <String, dynamic>{
      if (instance.mediatorId case final value?) 'mediatorId': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.exclusiveStartKey case final value?)
        'exclusiveStartKey': value,
    };
