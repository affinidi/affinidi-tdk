// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdsp_data_response_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdspDataResponseBody _$VdspDataResponseBodyFromJson(
        Map<String, dynamic> json) =>
    VdspDataResponseBody(
      operation: json['operation'] as String,
      dataQueryLanguage: json['data_query_lang'] as String,
      responseFormat: json['response_format'] as String,
      dataResponse: json['data_response'] as Map<String, dynamic>,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$VdspDataResponseBodyToJson(
        VdspDataResponseBody instance) =>
    <String, dynamic>{
      'operation': instance.operation,
      'data_query_lang': instance.dataQueryLanguage,
      'response_format': instance.responseFormat,
      'data_response': instance.dataResponse,
      if (instance.comment case final value?) 'comment': value,
    };
