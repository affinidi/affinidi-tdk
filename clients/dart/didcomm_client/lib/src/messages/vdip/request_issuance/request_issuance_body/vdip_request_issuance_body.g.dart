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
      credentialFormat: json['credential_format'] as String?,
      jsonWebSignatureAlgorithm:
          json['json_web_signature_algorithm'] as String?,
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
      if (instance.credentialFormat case final value?)
        'credential_format': value,
      if (instance.jsonWebSignatureAlgorithm case final value?)
        'json_web_signature_algorithm': value,
      if (instance.comment case final value?) 'comment': value,
      if (instance.credentialMeta?.toJson() case final value?)
        'credential_meta': value,
    };
