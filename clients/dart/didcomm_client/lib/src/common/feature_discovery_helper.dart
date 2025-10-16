import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

import '../models/constants/credential_format.dart';
import '../models/constants/data_integrity_proof_suite.dart';
import '../models/constants/data_query_language.dart';
import '../models/constants/feature_type.dart';
import '../models/constants/json_web_signature_algorithm.dart';

class FeatureDiscoveryHelper {
  static final _commonBaseConfig = <FeatureType, List<String>>{
    FeatureType.credentialFormat: [
      CredentialFormat.sdJwtVc.value,
      CredentialFormat.w3cV1.value,
      CredentialFormat.w3cV2.value,
      CredentialFormat.jwtVc.value,
    ],
    FeatureType.dataIntegrityProofSuite: [
      DataIntegrityProofSuite.ecdsa_rdfc_2019.value,
      DataIntegrityProofSuite.eddsa_rdfc_2022.value,
      DataIntegrityProofSuite.ecdsa_jcs_2019.value,
      DataIntegrityProofSuite.eddsa_jcs_2022.value,
    ],
    FeatureType.jsonWebSignatureAlgorithm: [
      JsonWebSignatureAlgorithm.ES256.value,
      JsonWebSignatureAlgorithm.ES384.value,
      JsonWebSignatureAlgorithm.ES512.value,
      JsonWebSignatureAlgorithm.ES256K.value,
      JsonWebSignatureAlgorithm.EdDSA.value,
    ]
  };

  static final _vdspBaseConfig = <FeatureType, List<String>>{
    FeatureType.protocol: [
      'https://affinidi.com/didcomm/protocols/vdsp/1.0',
    ],
    FeatureType.dataQueryLanguage: [
      DataQueryLanguage.dcql.value,
    ],
    ..._commonBaseConfig,
  };

  static final _vdipBaseConfig = <FeatureType, List<String>>{
    FeatureType.protocol: [
      'https://affinidi.com/didcomm/protocols/vdip/1.0',
    ],
    ..._commonBaseConfig,
  };

  static final List<Disclosure> vdspHolderDisclosures = _vdspBaseConfig.entries
      .expand(
        (entry) => entry.value.map(
          (item) => Disclosure(
            featureType: entry.key.value,
            id: item,
            roles: entry.key.value == FeatureType.protocol.name
                ? ['holder']
                : null,
          ),
        ),
      )
      .toList();

  static final List<Disclosure> vdipIssuerDisclosures = _vdipBaseConfig.entries
      .expand(
        (entry) => entry.value.map(
          (item) => Disclosure(
            featureType: entry.key.value,
            id: item,
          ),
        ),
      )
      .map(
        (disclosure) => Disclosure(
          featureType: disclosure.featureType,
          id: disclosure.id,
          roles: disclosure.featureType == FeatureType.protocol.name
              ? ['issuer']
              : null,
        ),
      )
      .toList();

  static List<Query> getFeatureQueriesByDisclosures(
          List<Disclosure> disclosures) =>
      disclosures
          .map(
            (disclosure) => Query(
              featureType: disclosure.featureType,
              match: disclosure.id,
            ),
          )
          .toList();

  static List<Disclosure> getSupportedFeatures(
    List<Disclosure> discloses,
    List<Query> queries,
  ) =>
      discloses
          .where(
            (disclose) => queries.any(
              (query) =>
                  query.featureType == disclose.featureType &&
                  query.match == disclose.id,
            ),
          )
          .toList();

  static List<Disclosure> getUnsupportedFeatures({
    required List<Disclosure> expectedFeatureDisclosures,
    required List<Disclosure> actualFeatureDisclosures,
  }) =>
      expectedFeatureDisclosures
          .where(
            (expectedDisclosure) => !actualFeatureDisclosures.any(
              (actualDisclosure) =>
                  actualDisclosure.featureType ==
                      expectedDisclosure.featureType &&
                  actualDisclosure.id == expectedDisclosure.id,
              // TODO: handle roles
            ),
          )
          .toList();
}
