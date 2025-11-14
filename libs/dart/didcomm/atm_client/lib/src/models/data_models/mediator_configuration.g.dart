// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediator_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediatorConfiguration _$MediatorConfigurationFromJson(
        Map<String, dynamic> json) =>
    MediatorConfiguration(
      maxMessageSize: (json['maxMessageSize'] as num?)?.toInt(),
      messageRetentionDays: (json['messageRetentionDays'] as num?)?.toInt(),
      enableEncryption: json['enableEncryption'] as bool?,
      enableLogging: json['enableLogging'] as bool?,
      logLevel: json['logLevel'] as String?,
      version: json['version'] as String?,
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$MediatorConfigurationToJson(
        MediatorConfiguration instance) =>
    <String, dynamic>{
      if (instance.maxMessageSize case final value?) 'maxMessageSize': value,
      if (instance.messageRetentionDays case final value?)
        'messageRetentionDays': value,
      if (instance.enableEncryption case final value?)
        'enableEncryption': value,
      if (instance.enableLogging case final value?) 'enableLogging': value,
      if (instance.logLevel case final value?) 'logLevel': value,
      if (instance.version case final value?) 'version': value,
      if (instance.lastUpdated?.toIso8601String() case final value?)
        'lastUpdated': value,
    };
