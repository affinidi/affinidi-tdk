import 'package:json_annotation/json_annotation.dart';

enum FeatureType {
  @JsonValue('protocol')
  protocol('protocol'),
  @JsonValue('data_query_lang')
  dataQueryLanguage('data_query_lang'),
  @JsonValue('credential_format')
  credentialFormat('credential_format'),
  @JsonValue('data_integrity_proof_suite')
  dataIntegrityProofSuite('data_integrity_proof_suite'),
  @JsonValue('json_web_signature_algorithm')
  jsonWebSignatureAlgorithm('json_web_signature_algorithm'),
  @JsonValue('operation')
  operation('operation');

  final String value;
  const FeatureType(this.value);
}
