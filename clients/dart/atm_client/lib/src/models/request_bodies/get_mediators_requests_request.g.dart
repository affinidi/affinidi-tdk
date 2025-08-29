// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediators_requests_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMediatorsRequestsRequest _$GetMediatorsRequestsRequestFromJson(
        Map<String, dynamic> json) =>
    GetMediatorsRequestsRequest(
      mediatorId: json['mediatorId'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      exclusiveStartKey: json['exclusiveStartKey'] as String?,
    );

Map<String, dynamic> _$GetMediatorsRequestsRequestToJson(
        GetMediatorsRequestsRequest instance) =>
    <String, dynamic>{
      if (instance.mediatorId case final value?) 'mediatorId': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.exclusiveStartKey case final value?)
        'exclusiveStartKey': value,
    };
