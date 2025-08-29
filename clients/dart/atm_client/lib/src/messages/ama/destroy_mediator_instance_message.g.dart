// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destroy_mediator_instance_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestroyMediatorInstanceResponse _$DestroyMediatorInstanceResponseFromJson(
        Map<String, dynamic> json) =>
    DestroyMediatorInstanceResponse(
      mediatorId: json['mediatorId'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$DestroyMediatorInstanceResponseToJson(
        DestroyMediatorInstanceResponse instance) =>
    <String, dynamic>{
      'mediatorId': instance.mediatorId,
      'status': instance.status,
    };
