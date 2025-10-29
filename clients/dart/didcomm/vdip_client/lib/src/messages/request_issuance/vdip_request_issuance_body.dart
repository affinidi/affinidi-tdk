import 'package:json_annotation/json_annotation.dart';

import 'credential_meta.dart';

part 'vdip_request_issuance_body.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdipRequestIssuanceMessageBody {
  @JsonKey(name: 'proposal_id')
  final String proposalId;

  @JsonKey(name: 'holder_did')
  final String? holderDid;
  final String? assertion;
  final String? challenge;

  @JsonKey(name: 'credential_format')
  final String? credentialFormat;

  @JsonKey(name: 'json_web_signature_algorithm')
  final String? jsonWebSignatureAlgorithm;
  final String? comment;

  @JsonKey(name: 'credential_meta')
  final CredentialMeta? credentialMeta;

  VdipRequestIssuanceMessageBody({
    required this.proposalId,
    this.holderDid,
    this.assertion,
    this.challenge,
    this.credentialFormat,
    this.jsonWebSignatureAlgorithm,
    this.comment,
    this.credentialMeta,
  });

  factory VdipRequestIssuanceMessageBody.fromJson(Map<String, dynamic> json) =>
      _$VdipRequestIssuanceMessageBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VdipRequestIssuanceMessageBodyToJson(this);
}
