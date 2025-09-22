// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdsp_query_data_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdspQueryDataBody _$VdspQueryDataBodyFromJson(Map<String, dynamic> json) =>
    VdspQueryDataBody(
      operation: json['operation'] as String,
      dataQueryLanguage: json['data_query_lang'] as String,
      responseFormat: json['response_format'] as String,
      query: json['query'] as Map<String, dynamic>,
      comment: json['comment'] as String?,
      proofContext: json['proof_context'] == null
          ? null
          : VdspQueryDataProofContext.fromJson(
              json['proof_context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VdspQueryDataBodyToJson(VdspQueryDataBody instance) =>
    <String, dynamic>{
      'operation': instance.operation,
      'data_query_lang': instance.dataQueryLanguage,
      'response_format': instance.responseFormat,
      if (instance.comment case final value?) 'comment': value,
      'query': instance.query,
      if (instance.proofContext?.toJson() case final value?)
        'proof_context': value,
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
