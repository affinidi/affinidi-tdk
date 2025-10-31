import 'package:json_annotation/json_annotation.dart';

import 'credential_meta.dart';

part 'vdip_request_issuance_body.g.dart';

/// Body payload for a VDIP request issuance message defining requested
/// credential parameters and optional holder-bound assertion.
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class VdipRequestIssuanceMessageBody {
  /// Identifier referencing an credential proposal.
  @JsonKey(name: 'proposal_id')
  final String proposalId;

  /// Optional DID of a specific holder the credential should be issued to.
  /// If specified, assertion MUST also be provided to prove control of the DID.
  /// If not specified, the credential is issued to `message.from`.
  @JsonKey(name: 'holder_did')
  final String? holderDid;

  /// Signed assertion proving holder control.
  /// Required if [holderDid] is specified.
  final String? assertion;

  /// Optional challenge value.
  final String? challenge;

  /// Requested credential format (W3c, JWT VC, SD-JWT VC, etc.).
  @JsonKey(name: 'credential_format')
  final String? credentialFormat;

  /// JSON Web Signature algorithm to be used for signing (if applicable).
  @JsonKey(name: 'json_web_signature_algorithm')
  final String? jsonWebSignatureAlgorithm;

  /// Optional human-readable comment from the requester.
  final String? comment;

  /// Optional credential metadata assisting the issuer in creation.
  @JsonKey(name: 'credential_meta')
  final CredentialMeta? credentialMeta;

  /// Creates a new request issuance body.
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

  /// Deserializes from JSON.
  factory VdipRequestIssuanceMessageBody.fromJson(Map<String, dynamic> json) =>
      _$VdipRequestIssuanceMessageBodyFromJson(json);

  /// Serializes to JSON.
  Map<String, dynamic> toJson() => _$VdipRequestIssuanceMessageBodyToJson(this);
}
