// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdip_issued_credential_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdipIssuedCredentialMessage _$VdipIssuedCredentialMessageFromJson(
        Map<String, dynamic> json) =>
    VdipIssuedCredentialMessage(
      id: json['id'] as String,
      body: VdipIssuedCredentialBody.fromJson(
          json['body'] as Map<String, dynamic>),
      from: json['from'] as String?,
      to: (json['to'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdTime: _$JsonConverterFromJson<int, DateTime>(
          json['created_time'], const EpochSecondsConverter().fromJson),
      expiresTime: _$JsonConverterFromJson<int, DateTime>(
          json['expires_time'], const EpochSecondsConverter().fromJson),
      threadId: json['thid'] as String?,
    );

Map<String, dynamic> _$VdipIssuedCredentialMessageToJson(
        VdipIssuedCredentialMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.from case final value?) 'from': value,
      if (instance.to case final value?) 'to': value,
      if (instance.threadId case final value?) 'thid': value,
      if (_$JsonConverterToJson<int, DateTime>(
              instance.createdTime, const EpochSecondsConverter().toJson)
          case final value?)
        'created_time': value,
      if (_$JsonConverterToJson<int, DateTime>(
              instance.expiresTime, const EpochSecondsConverter().toJson)
          case final value?)
        'expires_time': value,
      if (instance.body case final value?) 'body': value,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
