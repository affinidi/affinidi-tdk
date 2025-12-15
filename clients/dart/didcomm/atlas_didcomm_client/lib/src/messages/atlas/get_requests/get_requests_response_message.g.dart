// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_requests_response_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorRequest _$MediatorRequestFromJson(Map<String, dynamic> json) =>
    MediatorRequest(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$MediatorRequestToJson(MediatorRequest instance) =>
    <String, dynamic>{
      if (instance.createdAt?.toIso8601String() case final value?)
        'createdAt': value,
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

MpxRequest _$MpxRequestFromJson(Map<String, dynamic> json) => MpxRequest(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$MpxRequestToJson(MpxRequest instance) =>
    <String, dynamic>{
      if (instance.createdAt?.toIso8601String() case final value?)
        'createdAt': value,
      if (instance.createdBy case final value?) 'createdBy': value,
    };

GetMpxRequestsResponseData _$GetMpxRequestsResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetMpxRequestsResponseData(
      requests: (json['requests'] as List<dynamic>)
          .map((e) => MpxRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastEvaluatedKey: json['lastEvaluatedKey'] as String?,
    );

Map<String, dynamic> _$GetMpxRequestsResponseDataToJson(
        GetMpxRequestsResponseData instance) =>
    <String, dynamic>{
      'requests': instance.requests.map((e) => e.toJson()).toList(),
      if (instance.lastEvaluatedKey case final value?)
        'lastEvaluatedKey': value,
    };

TrRequest _$TrRequestFromJson(Map<String, dynamic> json) => TrRequest(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$TrRequestToJson(TrRequest instance) => <String, dynamic>{
      if (instance.createdAt?.toIso8601String() case final value?)
        'createdAt': value,
      if (instance.createdBy case final value?) 'createdBy': value,
    };

GetTrRequestsResponseData _$GetTrRequestsResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetTrRequestsResponseData(
      requests: (json['requests'] as List<dynamic>)
          .map((e) => TrRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastEvaluatedKey: json['lastEvaluatedKey'] as String?,
    );

Map<String, dynamic> _$GetTrRequestsResponseDataToJson(
        GetTrRequestsResponseData instance) =>
    <String, dynamic>{
      'requests': instance.requests.map((e) => e.toJson()).toList(),
      if (instance.lastEvaluatedKey case final value?)
        'lastEvaluatedKey': value,
    };
