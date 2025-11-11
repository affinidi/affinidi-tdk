import '../../affinidi_tdk_didcomm_mediator_client.dart';

/// A helper class for feature discovery in DIDComm protocols.
class FeatureDiscoveryHelper {
  static final _commonBaseConfig = <FeatureType, List<String>>{
    FeatureType.credentialFormat: [
      CredentialFormat.sdJwtVc.value,
      CredentialFormat.w3cV1.value,
      CredentialFormat.w3cV2.value,
      CredentialFormat.jwtVc.value,
    ],
    FeatureType.dataIntegrityProofSuite: [
      DataIntegrityProofSuite.ecdsaRdfc2019.value,
      DataIntegrityProofSuite.eddsaRdfc2022.value,
      DataIntegrityProofSuite.ecdsaJcs2019.value,
      DataIntegrityProofSuite.eddsaJcs2022.value,
    ],
    FeatureType.jsonWebSignatureAlgorithm: [
      JsonWebSignatureAlgorithm.es256.value,
      JsonWebSignatureAlgorithm.es384.value,
      JsonWebSignatureAlgorithm.es512.value,
      JsonWebSignatureAlgorithm.es256K.value,
      JsonWebSignatureAlgorithm.edDSA.value,
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

  /// List of [Disclosure]s for VDSP holder.
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

  /// List of [Disclosure]s for VDIP issuer.
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

  /// Returns a list of [Query] objects for the given [disclosures].
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

  /// Returns the list of supported [Disclosure]s from [discloses] that match the given [queries].
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

  /// Returns the list of [Disclosure]s from [expectedFeatureDisclosures] that are not present in [actualFeatureDisclosures].
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
