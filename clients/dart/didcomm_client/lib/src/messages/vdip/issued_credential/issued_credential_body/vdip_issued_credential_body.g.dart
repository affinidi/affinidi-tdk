// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdip_issued_credential_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdipIssuedCredentialBody _$VdipIssuedCredentialBodyFromJson(
        Map<String, dynamic> json) =>
    VdipIssuedCredentialBody._(
      credential: json['credential'] as String,
      credentialFormat:
          $enumDecode(_$CredentialFormatEnumMap, json['credential_format']),
      comment: json['comment'] as String? ?? '',
    );

Map<String, dynamic> _$VdipIssuedCredentialBodyToJson(
        VdipIssuedCredentialBody instance) =>
    <String, dynamic>{
      'credential': instance.credential,
      'credential_format':
          _$CredentialFormatEnumMap[instance.credentialFormat]!,
      'comment': instance.comment,
    };

const _$CredentialFormatEnumMap = {
  CredentialFormat.sdJwtVc: 'sd_jwt_vc',
  CredentialFormat.w3cV1: 'w3c/v1',
  CredentialFormat.w3cV2: 'w3c/v2',
  CredentialFormat.jwtVc: 'jwt_vc',
};
