import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

const String _vdspProtocolId =
    'https://affinidi.com/didcomm/protocols/vdsp/1.0';
const List<String> _vdspHolderRoles = ['holder'];
const List<String> _supportedDataQueryLanguageIds = ['DCQL'];

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

final List<Disclosure> _supportedProtocolDisclosures = List.unmodifiable(
  <Disclosure>[
    Disclosure(
      featureType: 'protocol',
      id: _vdspProtocolId,
      roles: _vdspHolderRoles,
    ),
  ],
);

final List<Disclosure> _supportedDataQueryLanguageDisclosures =
    _buildDisclosures('data_query_lang', _supportedDataQueryLanguageIds);

final List<Disclosure> _supportedVcTypeDisclosures =
    _buildDisclosures('vc_type', supportedVcTypeIds);

final List<Disclosure> _supportedDataIntegrityDisclosures = _buildDisclosures(
    'data_integrity_proof_suite', supportedDataIntegritySuites);

final List<Disclosure> _supportedJwsDisclosures = _buildDisclosures(
  'json_web_signature_algorithm',
  supportedJwsAlgs,
);

final Map<String, List<Disclosure>> _supportedFeatureDisclosuresByType = {
  'protocol': _supportedProtocolDisclosures,
  'data_query_lang': _supportedDataQueryLanguageDisclosures,
  'vc_type': _supportedVcTypeDisclosures,
  'data_integrity_proof_suite': _supportedDataIntegrityDisclosures,
  'json_web_signature_algorithm': _supportedJwsDisclosures,
};

Set<Disclosure> matchSupportedDisclosuresToQueries(
  Iterable<Query> queries,
) {
  final matched = <Disclosure>{};

  for (final query in queries) {
    final supported = _supportedFeatureDisclosuresByType[query.featureType];
    if (supported == null) {
      continue;
    }

    final requestedId = query.match;

    Disclosure? matchedDisclosure;
    for (final disclosure in supported) {
      if (disclosure.id == requestedId) {
        matchedDisclosure = disclosure;
        break;
      }
    }

    if (matchedDisclosure != null) {
      matched.add(matchedDisclosure);
    }
  }

  return matched;
}

List<Disclosure> _buildDisclosures(
  String featureType,
  Iterable<String> ids,
) {
  final disclosures = <Disclosure>[];
  for (final id in ids) {
    disclosures.add(Disclosure(featureType: featureType, id: id));
  }
  return List.unmodifiable(disclosures);
}
