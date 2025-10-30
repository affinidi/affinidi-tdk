import 'package:json_annotation/json_annotation.dart';

/// Represents data integrity proof suites for verifiable credentials.
enum DataIntegrityProofSuite {
  /// SECP256K1 signature suite (2019)
  @JsonValue('secp256k1-signature-2019')
  secp256k1_signature_2019('secp256k1-signature-2019'),

  /// ECDSA RDFC signature suite (2019)
  @JsonValue('ecdsa-rdfc-2019')
  ecdsa_rdfc_2019('ecdsa-rdfc-2019'),

  /// ECDSA JCS signature suite (2019)
  @JsonValue('ecdsa-jcs-2019')
  ecdsa_jcs_2019('ecdsa-jcs-2019'),

  /// EdDSA RDFC signature suite (2022)
  @JsonValue('eddsa-rdfc-2022')
  eddsa_rdfc_2022('eddsa-rdfc-2022'),

  /// EdDSA JCS signature suite (2022)
  @JsonValue('eddsa-jcs-2022')
  eddsa_jcs_2022('eddsa-jcs-2022');

  /// The string value of the proof suite
  final String value;
  const DataIntegrityProofSuite(this.value);
}
