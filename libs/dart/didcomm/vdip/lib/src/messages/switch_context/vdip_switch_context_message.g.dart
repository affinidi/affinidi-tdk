// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdip_switch_context_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdipSwitchContextBody _$VdipSwitchContextBodyFromJson(
        Map<String, dynamic> json) =>
    VdipSwitchContextBody(
      baseIssuerUrl: json['base_issuer_url'] as String,
      nonce: json['nonce'] as String,
    );

Map<String, dynamic> _$VdipSwitchContextBodyToJson(
        VdipSwitchContextBody instance) =>
    <String, dynamic>{
      'base_issuer_url': instance.baseIssuerUrl,
      'nonce': instance.nonce,
    };
