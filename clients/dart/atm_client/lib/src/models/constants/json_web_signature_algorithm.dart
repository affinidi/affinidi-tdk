import 'package:json_annotation/json_annotation.dart';

enum JsonWebSignatureAlgorithm {
  @JsonValue('ES256')
  esS256('ES256'),
  @JsonValue('ES384')
  es384('ES384'),
  @JsonValue('Ed25519')
  ed25519('Ed25519');

  final String value;
  const JsonWebSignatureAlgorithm(this.value);
}
