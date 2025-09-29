import 'package:json_annotation/json_annotation.dart';

enum CredentialFormat {
  @JsonValue('sd_jwt_vc')
  sdJwtVc('sd_jwt_vc'),
  @JsonValue('w3c/v1')
  w3cV1('w3c/v1'),
  @JsonValue('w3c/v2')
  w3cV2('w3c/v2');

  final String value;
  const CredentialFormat(this.value);
}
