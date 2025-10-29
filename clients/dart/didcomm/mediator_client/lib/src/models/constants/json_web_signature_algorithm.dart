import 'package:json_annotation/json_annotation.dart';

enum JsonWebSignatureAlgorithm {
  @JsonValue('ES256')
  ES256('ES256'),
  @JsonValue('ES384')
  ES384('ES384'),
  @JsonValue('ES512')
  ES512('ES512'),
  @JsonValue('ES256K')
  ES256K('ES256K'),
  @JsonValue('EdDSA')
  EdDSA('EdDSA');

  final String value;
  const JsonWebSignatureAlgorithm(this.value);
}
