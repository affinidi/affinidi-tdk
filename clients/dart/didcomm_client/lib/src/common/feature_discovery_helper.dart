import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

import '../models/constants/data_integrity_proof_suite.dart';
import '../models/constants/data_query_language.dart';
import '../models/constants/feature_type.dart';
import '../models/constants/json_web_signature_algorithm.dart';
import '../models/constants/credential_format.dart';

class FeatureDiscoveryHelper {
  static final List<Disclosure> vdspFeatureDisclosures = _vdspBaseConfig.entries
      .expand(
        (entry) => entry.value.map(
          (item) => Disclosure(
            featureType: entry.key.value,
            id: item,
          ),
        ),
      )
      .toList();

  static final List<Disclosure> defaultFeatureDisclosuresOfHolder =
      FeatureDiscoveryHelper.vdspFeatureDisclosures
          .map(
            (disclosure) => Disclosure(
              featureType: disclosure.featureType,
              id: disclosure.id,
              roles: disclosure.featureType == FeatureType.protocol.name
                  ? ['holder']
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

  static Map<String, List<Disclosure>> _groupDisclosuresByFeatureType(
    List<Disclosure> disclosures,
  ) {
    final groups = <String, List<Disclosure>>{};
    for (final disclosure in disclosures) {
      groups.putIfAbsent(disclosure.featureType, () => []).add(disclosure);
    }
    return groups;
  }

  static List<Disclosure> _getOrderedIntersection({
    required List<Disclosure> holderDisclosures,
    required List<Disclosure> verifierSupportedDisclosures,
  }) {
    final otherPartySet =
        holderDisclosures.map((d) => '${d.featureType}:${d.id}').toSet();

    return verifierSupportedDisclosures
        .where((holderDisc) => otherPartySet
            .contains('${holderDisc.featureType}:${holderDisc.id}'))
        .toList();
  }

  static VdspFeatureSelection negotiateFeatures({
    required DiscloseMessage discloseMessage,
    required List<Disclosure> holderSupportedDisclosures,
  }) {
    if (discloseMessage.body == null) {
      throw ArgumentError('DiscloseMessage body cannot be null');
    }

    final discloseBody = DiscloseBody.fromJson(discloseMessage.body!);
    final otherPartyDisclosures = discloseBody.disclosures;

    final orderedMatchedDisclosures = _getOrderedIntersection(
      holderDisclosures: otherPartyDisclosures,
      verifierSupportedDisclosures: holderSupportedDisclosures,
    );

    final selectedFeatures = _selectFirstSupportedPerFeatureType(
      orderedMatchedDisclosures,
    );

    return selectedFeatures;
  }

  static VdspFeatureSelection _selectFirstSupportedPerFeatureType(
    List<Disclosure> disclosures,
  ) {
    final grouped = _groupDisclosuresByFeatureType(disclosures);

    String? protocol;
    DataQueryLanguage? dataQueryLanguage;
    CredentialFormat? credentialFormat;
    DataIntegrityProofSuite? dataIntegrityProofSuite;
    JsonWebSignatureAlgorithm? jsonWebSignatureAlgorithm;
    String? operation;

    final protocolDisclosures = grouped[FeatureType.protocol.value];
    if (protocolDisclosures != null && protocolDisclosures.isNotEmpty) {
      protocol = protocolDisclosures.first.id;
    }

    final dqlDisclosures = grouped[FeatureType.dataQueryLanguage.value];
    if (dqlDisclosures != null && dqlDisclosures.isNotEmpty) {
      final dqlId = dqlDisclosures.first.id;
      dataQueryLanguage = DataQueryLanguage.values
          .cast<DataQueryLanguage?>()
          .firstWhere((e) => e?.value == dqlId, orElse: () => null);
    }

    final credentialFormatDisclosures =
        grouped[FeatureType.credentialFormat.value];
    if (credentialFormatDisclosures != null &&
        credentialFormatDisclosures.isNotEmpty) {
      final credentialFormatId = credentialFormatDisclosures.first.id;
      credentialFormat = CredentialFormat.values
          .cast<CredentialFormat?>()
          .firstWhere((e) => e?.value == credentialFormatId,
              orElse: () => null);
    }

    final proofSuiteDisclosures =
        grouped[FeatureType.dataIntegrityProofSuite.value];
    if (proofSuiteDisclosures != null && proofSuiteDisclosures.isNotEmpty) {
      final proofSuiteId = proofSuiteDisclosures.first.id;
      dataIntegrityProofSuite = DataIntegrityProofSuite.values
          .cast<DataIntegrityProofSuite?>()
          .firstWhere((e) => e?.value == proofSuiteId, orElse: () => null);
    }

    final jwsDisclosures = grouped[FeatureType.jsonWebSignatureAlgorithm.value];
    if (jwsDisclosures != null && jwsDisclosures.isNotEmpty) {
      final jwsId = jwsDisclosures.first.id;
      jsonWebSignatureAlgorithm = JsonWebSignatureAlgorithm.values
          .cast<JsonWebSignatureAlgorithm?>()
          .firstWhere((e) => e?.value == jwsId, orElse: () => null);
    }

    final operationDisclosures = grouped[FeatureType.operation.value];
    if (operationDisclosures != null && operationDisclosures.isNotEmpty) {
      operation = operationDisclosures.first.id;
    }

    return VdspFeatureSelection(
      protocol: protocol,
      dataQueryLanguage: dataQueryLanguage,
      credentialFormat: credentialFormat,
      dataIntegrityProofSuite: dataIntegrityProofSuite,
      jsonWebSignatureAlgorithm: jsonWebSignatureAlgorithm,
      operation: operation,
    );
  }

  static final _vdspBaseConfig = <FeatureType, List<String>>{
    FeatureType.protocol: [
      'https://affinidi.com/didcomm/protocols/vdsp/1.0',
    ],
    FeatureType.dataQueryLanguage: [
      DataQueryLanguage.dcql.value,
    ],
    FeatureType.credentialFormat: [
      CredentialFormat.sdJwtVc.value,
      CredentialFormat.w3cV1.value,
      CredentialFormat.w3cV2.value,
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
      JsonWebSignatureAlgorithm.EdDSA.value,
    ]
  };
}

class VdspFeatureSelection {
  VdspFeatureSelection({
    this.protocol,
    this.dataQueryLanguage,
    this.credentialFormat,
    this.dataIntegrityProofSuite,
    this.jsonWebSignatureAlgorithm,
    this.operation,
  });

  final String? protocol;
  final DataQueryLanguage? dataQueryLanguage;
  final CredentialFormat? credentialFormat;
  final DataIntegrityProofSuite? dataIntegrityProofSuite;
  final JsonWebSignatureAlgorithm? jsonWebSignatureAlgorithm;
  final String? operation;

  @override
  String toString() {
    return 'VdspFeatureSelection(protocol: $protocol, dataQueryLanguage: ${dataQueryLanguage?.value}, credentialFormat: ${credentialFormat?.value}, dataIntegrityProofSuite: ${dataIntegrityProofSuite?.value}, jsonWebSignatureAlgorithm: ${jsonWebSignatureAlgorithm?.value}, operation: $operation)';
  }
}
