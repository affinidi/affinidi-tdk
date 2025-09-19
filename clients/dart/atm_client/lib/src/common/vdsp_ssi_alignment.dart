import 'package:ssi/ssi.dart';

final Map<SignatureScheme, List<String>> schemeToDataIntegritySuites = () {
  final byScheme = <SignatureScheme, List<String>>{};
  for (final entry in cryptosuiteToScheme.entries) {
    final suiteId = entry.key;
    final schemes = entry.value as Iterable<SignatureScheme>;
    for (final scheme in schemes) {
      byScheme.putIfAbsent(scheme, () => <String>[]).add(suiteId);
    }
  }
  return byScheme;
}();

const Map<SignatureScheme, String> schemeToJwsAlg = {
  SignatureScheme.ecdsa_p256_sha256: 'ES256',
  SignatureScheme.ecdsa_p384_sha384: 'ES384',
  SignatureScheme.ecdsa_p521_sha512: 'ES512',
  SignatureScheme.ecdsa_secp256k1_sha256: 'ES256K',
  SignatureScheme.ed25519: 'EdDSA',
};

const Map<Type, String> ssiVcModelTypeToVcTypeId = {
  VcDataModelV1: 'w3c/v1',
  VcDataModelV2: 'w3c/v2',
  SdJwtDataModelV2: 'sd_jwt_vc',
};

final List<String> supportedDataIntegritySuites =
    (schemeToDataIntegritySuites.values.expand((v) => v).toSet().toList())
      ..sort();

final List<String> supportedJwsAlgs = (schemeToJwsAlg.values.toSet().toList())
  ..sort();

final List<String> supportedVcTypeIds =
    (ssiVcModelTypeToVcTypeId.values.toSet().toList())..sort();

List<Map<String, String>> buildSupportedFeatureDisclosures() {
  final entries = <Map<String, String>>[];
  for (final id in supportedVcTypeIds) {
    entries.add({'feature-type': 'vc_type', 'id': id});
  }
  for (final id in supportedDataIntegritySuites) {
    entries.add({'feature-type': 'data_integrity_proof_suite', 'id': id});
  }
  for (final id in supportedJwsAlgs) {
    entries.add({'feature-type': 'json_web_signature_algorithm', 'id': id});
  }
  return entries;
}
