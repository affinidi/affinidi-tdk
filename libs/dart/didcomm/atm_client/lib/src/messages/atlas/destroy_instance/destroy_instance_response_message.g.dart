// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destroy_instance_response_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestroyInstanceResponse _$DestroyInstanceResponseFromJson(
        Map<String, dynamic> json) =>
    DestroyInstanceResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DestroyInstanceResponseToJson(
        DestroyInstanceResponse instance) =>
    <String, dynamic>{
      if (instance.message case final value?) 'message': value,
    };
