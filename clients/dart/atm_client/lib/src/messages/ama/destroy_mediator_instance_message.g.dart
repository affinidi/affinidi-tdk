// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destroy_mediator_instance_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestroyMediatorInstanceResponse _$DestroyMediatorInstanceResponseFromJson(
        Map<String, dynamic> json) =>
    DestroyMediatorInstanceResponse(
      mediatorId: json['mediatorId'] as String,
      message: json['message'] as String,
      serviceRequestId: json['serviceRequestId'] as String?,
    );

Map<String, dynamic> _$DestroyMediatorInstanceResponseToJson(
        DestroyMediatorInstanceResponse instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      'message': instance.message,
      if (instance.serviceRequestId case final value?)
        'serviceRequestId': value,
    };
