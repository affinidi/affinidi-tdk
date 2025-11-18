// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdsp_request_service_message_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdspRequestServiceMessageBody _$VdspRequestServiceMessageBodyFromJson(
        Map<String, dynamic> json) =>
    VdspRequestServiceMessageBody(
      operation: json['operation'] as String,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$VdspRequestServiceMessageBodyToJson(
        VdspRequestServiceMessageBody instance) =>
    <String, dynamic>{
      'operation': instance.operation,
      if (instance.comment case final value?) 'comment': value,
    };
