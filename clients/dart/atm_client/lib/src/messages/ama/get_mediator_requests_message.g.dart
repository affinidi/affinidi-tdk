// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediator_requests_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorRequest _$MediatorRequestFromJson(Map<String, dynamic> json) =>
    MediatorRequest(
      createdAt: json['createdAt'] as String?,
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$MediatorRequestToJson(MediatorRequest instance) =>
    <String, dynamic>{
      if (instance.createdAt case final value?) 'createdAt': value,
      if (instance.createdBy case final value?) 'createdBy': value,
    };

GetMediatorRequestsResponseData _$GetMediatorRequestsResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetMediatorRequestsResponseData(
      requests: (json['requests'] as List<dynamic>)
          .map((e) => MediatorRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastEvaluatedKey: json['lastEvaluatedKey'] as String?,
    );

Map<String, dynamic> _$GetMediatorRequestsResponseDataToJson(
        GetMediatorRequestsResponseData instance) =>
    <String, dynamic>{
      'requests': instance.requests.map((e) => e.toJson()).toList(),
      if (instance.lastEvaluatedKey case final value?)
        'lastEvaluatedKey': value,
    };
