// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediator_acl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorAcl _$MediatorAclFromJson(Map<String, dynamic> json) => MediatorAcl(
      allowedDids: (json['allowedDids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deniedDids: (json['deniedDids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      defaultAllow: json['defaultAllow'] as bool?,
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      policyVersion: json['policyVersion'] as String?,
    );

Map<String, dynamic> _$MediatorAclToJson(MediatorAcl instance) =>
    <String, dynamic>{
      if (instance.allowedDids case final value?) 'allowedDids': value,
      if (instance.deniedDids case final value?) 'deniedDids': value,
      if (instance.defaultAllow case final value?) 'defaultAllow': value,
      if (instance.lastUpdated?.toIso8601String() case final value?)
        'lastUpdated': value,
      if (instance.policyVersion case final value?) 'policyVersion': value,
    };
