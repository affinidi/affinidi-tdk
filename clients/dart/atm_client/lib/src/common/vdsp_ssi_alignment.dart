import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
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

const Map<Type, String> ssiVcModelTypeToVcTypeId = {
  VcDataModelV1: 'w3c/v1',
  VcDataModelV2: 'w3c/v2',
  SdJwtDataModelV2: 'sd_jwt_vc',
};

final List<String> supportedDataIntegritySuites =
    (schemeToDataIntegritySuites.values.expand((v) => v).toSet().toList())
      ..sort();

final List<String> supportedJwsAlgs = (schemeToDataIntegritySuites.keys
    .map((scheme) => scheme.alg!)
    .toSet()
    .toList())
  ..sort();

final List<String> supportedVcTypeIds =
    (ssiVcModelTypeToVcTypeId.values.toSet().toList())..sort();

List<Disclosure> buildSupportedFeatureDisclosures() {
  final disclosures = <Disclosure>[];
  for (final id in supportedVcTypeIds) {
    disclosures.add(Disclosure(featureType: 'vc_type', id: id));
  }
  for (final id in supportedDataIntegritySuites) {
    disclosures
        .add(Disclosure(featureType: 'data_integrity_proof_suite', id: id));
  }
  for (final id in supportedJwsAlgs) {
    disclosures
        .add(Disclosure(featureType: 'json_web_signature_algorithm', id: id));
  }
  return disclosures;
}
