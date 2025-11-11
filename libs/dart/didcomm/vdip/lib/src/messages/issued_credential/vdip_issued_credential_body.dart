import 'dart:convert';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:selective_disclosure_jwt/selective_disclosure_jwt.dart';
import 'package:ssi/ssi.dart';

part 'vdip_issued_credential_body.g.dart';

/// Body payload for a VDIP issued credential message containing the
/// serialized credential and associated metadata.
@JsonSerializable(includeIfNull: false, explicitToJson: true, constructor: '_')
class VdipIssuedCredentialBody {
  /// Serialized credential payload. Depending on [credentialFormat] this may
  /// be a JSON-encoded W3C VC string, JWT, or SD-JWT.
  final String credential;

  /// Format indicator describing the type of credential issued.
  @JsonKey(name: 'credential_format')
  final CredentialFormat credentialFormat;

  /// Optional human-readable comment supplied by the issuer.
  final String? comment;

  VdipIssuedCredentialBody._({
    required this.credential,
    required this.credentialFormat,
    this.comment,
  });

  /// Creates an instance for SD-JWT VC format credentials.
  /// For SD-JWT VC format, the credential must be a String.
  factory VdipIssuedCredentialBody.sdJwtVc({
    required SdJwt credential,
    String? comment,
  }) {
    return VdipIssuedCredentialBody._(
      credential: credential.serialized,
      credentialFormat: CredentialFormat.sdJwtVc,
      comment: comment,
    );
  }

  /// Creates an instance for W3C V1 format credentials.
  /// For W3C V1 format, the credential can be a String or Map.
  factory VdipIssuedCredentialBody.w3cV1({
    required VcDataModelV1 credential,
    String? comment,
  }) {
    return VdipIssuedCredentialBody._(
      credential: jsonEncode(credential.toJson()),
      credentialFormat: CredentialFormat.w3cV1,
      comment: comment,
    );
  }

  /// Creates an instance for W3C V2 format credentials.
  /// For W3C V2 format, the credential can be a String or Map.
  factory VdipIssuedCredentialBody.w3cV2({
    required VcDataModelV2 credential,
    String? comment,
  }) {
    return VdipIssuedCredentialBody._(
      credential: jsonEncode(credential.toJson()),
      credentialFormat: CredentialFormat.w3cV2,
      comment: comment,
    );
  }

  /// Creates an instance for JWT VC format credentials.
  /// For JWT VC format, the credential can be a String or Map.
  factory VdipIssuedCredentialBody.jwtVc({
    required Jws credential,
    String? comment,
  }) {
    return VdipIssuedCredentialBody._(
      credential: credential.serialized,
      credentialFormat: CredentialFormat.jwtVc,
      comment: comment,
    );
  }

  /// Creates an instance from JSON.
  factory VdipIssuedCredentialBody.fromJson(Map<String, dynamic> json) =>
      _$VdipIssuedCredentialBodyFromJson(json);

  /// Converts this body into JSON.
  Map<String, dynamic> toJson() => _$VdipIssuedCredentialBodyToJson(this);
}
