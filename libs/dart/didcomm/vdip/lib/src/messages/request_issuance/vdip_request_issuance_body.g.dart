// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vdip_request_issuance_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VdipRequestIssuanceMessageBody _$VdipRequestIssuanceMessageBodyFromJson(
        Map<String, dynamic> json) =>
    VdipRequestIssuanceMessageBody(
      proposalId: json['proposal_id'] as String,
      holderDid: json['holder_did'] as String?,
      assertion: json['assertion'] as String?,
      challenge: json['challenge'] as String?,
      credentialFormat: $enumDecodeNullable(
          _$CredentialFormatEnumMap, json['credential_format']),
      jsonWebSignatureAlgorithm: $enumDecodeNullable(
          _$JsonWebSignatureAlgorithmEnumMap,
          json['json_web_signature_algorithm']),
      comment: json['comment'] as String?,
      credentialMeta: json['credential_meta'] == null
          ? null
          : CredentialMeta.fromJson(
              json['credential_meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VdipRequestIssuanceMessageBodyToJson(
        VdipRequestIssuanceMessageBody instance) =>
    <String, dynamic>{
      'proposal_id': instance.proposalId,
      if (instance.holderDid case final value?) 'holder_did': value,
      if (instance.assertion case final value?) 'assertion': value,
      if (instance.challenge case final value?) 'challenge': value,
      if (_$CredentialFormatEnumMap[instance.credentialFormat]
          case final value?)
        'credential_format': value,
      if (_$JsonWebSignatureAlgorithmEnumMap[instance.jsonWebSignatureAlgorithm]
          case final value?)
        'json_web_signature_algorithm': value,
      if (instance.comment case final value?) 'comment': value,
      if (instance.credentialMeta?.toJson() case final value?)
        'credential_meta': value,
    };

const _$CredentialFormatEnumMap = {
  CredentialFormat.sdJwtVc: 'sd_jwt_vc',
  CredentialFormat.w3cV1: 'w3c/v1',
  CredentialFormat.w3cV2: 'w3c/v2',
  CredentialFormat.jwtVc: 'jwt_vc',
};

const _$JsonWebSignatureAlgorithmEnumMap = {
  JsonWebSignatureAlgorithm.es256: 'ES256',
  JsonWebSignatureAlgorithm.es384: 'ES384',
  JsonWebSignatureAlgorithm.es512: 'ES512',
  JsonWebSignatureAlgorithm.es256K: 'ES256K',
  JsonWebSignatureAlgorithm.edDSA: 'EdDSA',
};
