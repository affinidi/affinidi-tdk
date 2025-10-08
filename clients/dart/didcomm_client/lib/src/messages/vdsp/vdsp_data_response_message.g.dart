// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdsp_data_response_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdspDataResponseBody _$VdspDataResponseBodyFromJson(
        Map<String, dynamic> json) =>
    VdspDataResponseBody(
      dataQueryLanguage: $enumDecodeNullable(
              _$DataQueryLanguageEnumMap, json['data_query_lang']) ??
          DataQueryLanguage.dcql,
      responseFormat: json['response_format'] as String,
      dataResponse: json['data_response'] as Map<String, dynamic>,
      operation: json['operation'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$VdspDataResponseBodyToJson(
        VdspDataResponseBody instance) =>
    <String, dynamic>{
      if (instance.operation case final value?) 'operation': value,
      'data_query_lang':
          _$DataQueryLanguageEnumMap[instance.dataQueryLanguage]!,
      'response_format': instance.responseFormat,
      'data_response': instance.dataResponse,
      if (instance.comment case final value?) 'comment': value,
    };

const _$DataQueryLanguageEnumMap = {
  DataQueryLanguage.dcql: 'DCQL',
};
