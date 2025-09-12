// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_mediator_requests_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorRequest _$MediatorRequestFromJson(Map<String, dynamic> json) =>
    MediatorRequest(
      requestId: json['requestId'] as String,
      mediatorId: json['mediatorId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      details: json['details'] == null
          ? null
          : RequestDetails.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediatorRequestToJson(MediatorRequest instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'mediatorId': instance.mediatorId,
      'timestamp': instance.timestamp.toIso8601String(),
      if (instance.details?.toJson() case final value?) 'details': value,
    };

GetMediatorRequestsResponseData _$GetMediatorRequestsResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetMediatorRequestsResponseData(
      requests: (json['requests'] as List<dynamic>)
          .map((e) => MediatorRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetMediatorRequestsResponseDataToJson(
        GetMediatorRequestsResponseData instance) =>
    <String, dynamic>{
      'requests': instance.requests.map((e) => e.toJson()).toList(),
    };
