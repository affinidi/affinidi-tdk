// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdsp_query_data_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdspQueryDataBody _$VdspQueryDataBodyFromJson(Map<String, dynamic> json) =>
    VdspQueryDataBody(
      dataQueryLanguage:
          $enumDecode(_$DataQueryLanguageEnumMap, json['data_query_lang']),
      responseFormat: json['response_format'] as String,
      query: json['query'] as Map<String, dynamic>,
      operation: json['operation'] as String?,
      comment: json['comment'] as String?,
      proofContext: json['proof_context'] == null
          ? null
          : VdspQueryDataProofContext.fromJson(
              json['proof_context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VdspQueryDataBodyToJson(VdspQueryDataBody instance) =>
    <String, dynamic>{
      if (instance.operation case final value?) 'operation': value,
      'data_query_lang':
          _$DataQueryLanguageEnumMap[instance.dataQueryLanguage]!,
      'response_format': instance.responseFormat,
      if (instance.comment case final value?) 'comment': value,
      'query': instance.query,
      if (instance.proofContext?.toJson() case final value?)
        'proof_context': value,
    };

const _$DataQueryLanguageEnumMap = {
  DataQueryLanguage.dcql: 'DCQL',
};

VdspQueryDataProofContext _$VdspQueryDataProofContextFromJson(
        Map<String, dynamic> json) =>
    VdspQueryDataProofContext(
      challenge: json['challenge'] as String,
      domain: json['domain'] as String,
    );

Map<String, dynamic> _$VdspQueryDataProofContextToJson(
        VdspQueryDataProofContext instance) =>
    <String, dynamic>{
      'challenge': instance.challenge,
      'domain': instance.domain,
    };
