// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseBody _$ResponseBodyFromJson(Map<String, dynamic> json) => ResponseBody(
  response: json['response'] as String,
  headers: (json['headers'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  statusCode: (json['status_code'] as num).toInt(),
);

Map<String, dynamic> _$ResponseBodyToJson(ResponseBody instance) =>
    <String, dynamic>{
      'response': instance.response,
      'headers': ?instance.headers,
      'status_code': instance.statusCode,
    };
