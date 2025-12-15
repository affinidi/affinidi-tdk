// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_instance_configuration_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateInstanceConfigurationOptions _$UpdateInstanceConfigurationOptionsFromJson(
        Map<String, dynamic> json) =>
    UpdateInstanceConfigurationOptions(
      acl: (json['acl'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as num),
      ),
    );

Map<String, dynamic> _$UpdateInstanceConfigurationOptionsToJson(
        UpdateInstanceConfigurationOptions instance) =>
    <String, dynamic>{
      if (instance.acl case final value?) 'acl': value,
    };
