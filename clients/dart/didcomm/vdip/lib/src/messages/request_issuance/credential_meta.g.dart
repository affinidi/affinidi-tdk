// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CredentialMeta _$CredentialMetaFromJson(Map<String, dynamic> json) =>
    CredentialMeta(
      context: (json['@context'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      issuer: json['issuer'] as String?,
      validFrom: json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CredentialMetaToJson(CredentialMeta instance) =>
    <String, dynamic>{
      if (instance.context case final value?) '@context': value,
      if (instance.issuer case final value?) 'issuer': value,
      if (instance.validFrom?.toIso8601String() case final value?)
        'valid_from': value,
      if (instance.data case final value?) 'data': value,
    };
