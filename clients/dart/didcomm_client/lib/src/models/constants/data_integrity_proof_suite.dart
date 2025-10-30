import 'package:json_annotation/json_annotation.dart';

enum DataIntegrityProofSuite {
  @JsonValue('secp256k1-signature-2019')
  secp256k1_signature_2019('secp256k1-signature-2019'),
  @JsonValue('ecdsa-rdfc-2019')
  ecdsa_rdfc_2019('ecdsa-rdfc-2019'),
  @JsonValue('ecdsa-jcs-2019')
  ecdsa_jcs_2019('ecdsa-jcs-2019'),
  @JsonValue('eddsa-rdfc-2022')
  eddsa_rdfc_2022('eddsa-rdfc-2022'),
  @JsonValue('eddsa-jcs-2022')
  eddsa_jcs_2022('eddsa-jcs-2022');

  final String value;
  const DataIntegrityProofSuite(this.value);
}
