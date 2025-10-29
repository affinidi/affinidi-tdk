import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:selective_disclosure_jwt/selective_disclosure_jwt.dart';
import 'package:ssi/ssi.dart';

part 'vdip_issued_credential_body.g.dart';

@JsonSerializable(includeIfNull: false, explicitToJson: true, constructor: '_')
class VdipIssuedCredentialBody {
  final String credential;

  @JsonKey(name: 'credential_format')
  final CredentialFormat credentialFormat;
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
      credential: credential.toJson().toString(),
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
      credential: credential.toJson().toString(),
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

  factory VdipIssuedCredentialBody.fromJson(Map<String, dynamic> json) =>
      _$VdipIssuedCredentialBodyFromJson(json);

  Map<String, dynamic> toJson() => _$VdipIssuedCredentialBodyToJson(this);
}
