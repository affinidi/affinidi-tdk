import 'package:affinidi_tdk_atm_client/src/clients/vdsp_verifier_client.dart';
import 'package:affinidi_tdk_atm_client/src/common/vdsp_ssi_alignment.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

void main() {
  group('SSI alignment surfaces exact capabilities', () {
    test('JWS alg set equals expected', () {
      expect(
        supportedJwsAlgs.toSet(),
        equals({'EdDSA', 'ES256', 'ES256K', 'ES384', 'ES512'}),
      );
    });

    test('Data Integrity suites equal SSI cryptosuite keys', () {
      final expected = cryptosuiteToScheme.keys.toSet();
      expect(supportedDataIntegritySuites.toSet(), equals(expected));
      expect(supportedDataIntegritySuites.length, expected.length);
    });

    test('VC type ids are stable and complete', () {
      final expected = {'w3c/v1', 'w3c/v2', 'sd_jwt_vc'};
      expect(supportedVcTypeIds.toSet(), equals(expected));
      expect(supportedVcTypeIds.length, expected.length);
    });
  });

  group('Verifier discover-features query assembly', () {
    test('structure, fields, and alignment', () {
      final queries = VdspVerifierClient.buildDiscoverFeaturesQueries();

      expect(queries.isNotEmpty, isTrue);
      expect(queries.first['feature-type'], 'protocol');
      expect(queries.first['match'],
          'https://affinidi.com/didcomm/protocols/vdsp/1.*');
      expect(queries[1]['feature-type'], 'data_query_lang');
      expect(queries[1]['id'], 'DCQL');

      final allowedTypes = {
        'protocol',
        'data_query_lang',
        'vc_type',
        'data_integrity_proof_suite',
        'json_web_signature_algorithm',
        'operation',
      };
      for (final q in queries) {
        expect(allowedTypes.contains(q['feature-type']), isTrue);
      }

      final vcTypeIds = queries
          .where((q) => q['feature-type'] == 'vc_type')
          .map((q) => q['id'] as String)
          .toSet();
      expect(vcTypeIds, equals(supportedVcTypeIds.toSet()));

      final diSuites = queries
          .where((q) => q['feature-type'] == 'data_integrity_proof_suite')
          .map((q) => q['id'] as String)
          .toSet();
      expect(diSuites, equals(supportedDataIntegritySuites.toSet()));

      final jwsAlgs = queries
          .where((q) => q['feature-type'] == 'json_web_signature_algorithm')
          .map((q) => q['id'] as String)
          .toSet();
      expect(jwsAlgs, equals(supportedJwsAlgs.toSet()));

      for (final q in queries) {
        final t = q['feature-type'];
        if (t == 'vc_type' ||
            t == 'data_integrity_proof_suite' ||
            t == 'json_web_signature_algorithm' ||
            t == 'operation' ||
            t == 'data_query_lang') {
          expect(q.containsKey('id'), isTrue);
          expect(q.containsKey('match'), isFalse);
        }
        if (t == 'protocol') {
          expect(q.containsKey('match'), isTrue);
          expect(q.containsKey('id'), isFalse);
        }
      }
    });

    test('operation entry present only when provided', () {
      final withoutOp = VdspVerifierClient.buildDiscoverFeaturesQueries();
      expect(
        withoutOp.any((q) => q['feature-type'] == 'operation'),
        isFalse,
      );

      const op = 'present_credentials';
      final withOp =
          VdspVerifierClient.buildDiscoverFeaturesQueries(operation: op);
      final opEntry = withOp.firstWhere(
        (q) => q['feature-type'] == 'operation',
      );
      expect(opEntry['id'], op);
      expect(opEntry.containsKey('match'), isFalse);
    });
  });

  group('Holder disclose-features assembly', () {
    test('enumerates SSI-aligned ids only', () {
      final disclosures = buildSupportedFeatureDisclosures();
      final byType = <String, Set<String>>{};
      for (final d in disclosures) {
        final type = d['feature-type'];
        final id = d['id'];
        expect(type, isNotNull);
        expect(id, isNotNull);
        expect(d.containsKey('match'), isFalse);
        byType.putIfAbsent(type!, () => <String>{}).add(id!);
      }

      expect(byType['vc_type'], equals(supportedVcTypeIds.toSet()));
      expect(byType['data_integrity_proof_suite'],
          equals(supportedDataIntegritySuites.toSet()));
      expect(byType['json_web_signature_algorithm'],
          equals(supportedJwsAlgs.toSet()));
    });
  });
}
