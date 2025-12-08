// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestDetails _$RequestDetailsFromJson(Map<String, dynamic> json) =>
    RequestDetails(
      requestMethod: json['requestMethod'] as String?,
      requestPath: json['requestPath'] as String?,
      requestBody: json['requestBody'] as String?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      statusCode: (json['statusCode'] as num?)?.toInt(),
      responseBody: json['responseBody'] as String?,
      responseTime: (json['responseTime'] as num?)?.toInt(),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$RequestDetailsToJson(RequestDetails instance) =>
    <String, dynamic>{
      if (instance.requestMethod case final value?) 'requestMethod': value,
      if (instance.requestPath case final value?) 'requestPath': value,
      if (instance.requestBody case final value?) 'requestBody': value,
      if (instance.headers case final value?) 'headers': value,
      if (instance.statusCode case final value?) 'statusCode': value,
      if (instance.responseBody case final value?) 'responseBody': value,
      if (instance.responseTime case final value?) 'responseTime': value,
      if (instance.errorMessage case final value?) 'errorMessage': value,
    };
