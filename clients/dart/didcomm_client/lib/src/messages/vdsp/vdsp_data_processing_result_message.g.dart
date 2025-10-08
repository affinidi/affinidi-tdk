// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdsp_data_processing_result_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdspDataProcessingResultBody _$VdspDataProcessingResultBodyFromJson(
        Map<String, dynamic> json) =>
    VdspDataProcessingResultBody(
      operation: json['operation'] as String?,
      result: json['result'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$VdspDataProcessingResultBodyToJson(
        VdspDataProcessingResultBody instance) =>
    <String, dynamic>{
      if (instance.operation case final value?) 'operation': value,
      'result': instance.result,
    };
