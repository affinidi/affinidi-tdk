import 'package:json_annotation/json_annotation.dart';

/// Represents the format of a verifiable credential.
enum CredentialFormat {
  /// SD-JWT VC format
  @JsonValue('sd_jwt_vc')
  sdJwtVc('sd_jwt_vc'),

  /// W3C Verifiable Credentials v1 format
  @JsonValue('w3c/v1')
  w3cV1('w3c/v1'),

  /// W3C Verifiable Credentials v2 format
  @JsonValue('w3c/v2')
  w3cV2('w3c/v2'),

  /// JWT VC format
  @JsonValue('jwt_vc')
  jwtVc('jwt_vc');

  /// The string value of the credential format
  final String value;
  const CredentialFormat(this.value);
}
