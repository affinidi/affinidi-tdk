import 'package:json_annotation/json_annotation.dart';

/// Represents types of features for capability discovery.
enum FeatureType {
  /// Protocol feature type
  @JsonValue('protocol')
  protocol('protocol'),

  /// Data query language feature type
  @JsonValue('data_query_lang')
  dataQueryLanguage('data_query_lang'),

  /// Credential format feature type
  @JsonValue('credential_format')
  credentialFormat('credential_format'),

  /// Data integrity proof suite feature type
  @JsonValue('data_integrity_proof_suite')
  dataIntegrityProofSuite('data_integrity_proof_suite'),

  /// JSON Web Signature algorithm feature type
  @JsonValue('json_web_signature_algorithm')
  jsonWebSignatureAlgorithm('json_web_signature_algorithm'),

  /// Operation feature type
  @JsonValue('operation')
  operation('operation');

  /// The string value of the feature type
  final String value;
  const FeatureType(this.value);
}
