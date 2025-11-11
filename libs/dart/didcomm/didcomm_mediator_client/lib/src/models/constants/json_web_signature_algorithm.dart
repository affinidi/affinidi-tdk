import 'package:json_annotation/json_annotation.dart';

/// Represents JSON Web Signature (JWS) algorithms for signing credentials.
enum JsonWebSignatureAlgorithm {
  /// ECDSA using P-256 curve and SHA-256
  @JsonValue('ES256')
  es256('ES256'),

  /// ECDSA using P-384 curve and SHA-384
  @JsonValue('ES384')
  es384('ES384'),

  /// ECDSA using P-521 curve and SHA-512
  @JsonValue('ES512')
  es512('ES512'),

  /// ECDSA using secp256k1 curve and SHA-256
  @JsonValue('ES256K')
  es256K('ES256K'),

  /// EdDSA signature algorithm
  @JsonValue('EdDSA')
  edDSA('EdDSA');

  /// The string value of the signature algorithm
  final String value;
  const JsonWebSignatureAlgorithm(this.value);
}
