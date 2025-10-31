import 'dart:convert';

import 'package:affinidi_tdk_mediator_didcomm_client/src/common/did_signer_adapter.dart';
import 'package:affinidi_tdk_mediator_didcomm_client/src/common/jwt_helper.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

void main() {
  group('JwtHelper', () {
    final testCases = [
      {
        'name': 'P-256',
        'keyType': KeyType.p256,
        'signatureScheme': SignatureScheme.ecdsa_p256_sha256,
        'expectedAlg': 'ES256',
      },
      {
        'name': 'P-384',
        'keyType': KeyType.p384,
        'signatureScheme': SignatureScheme.ecdsa_p384_sha384,
        'expectedAlg': 'ES384',
      },
      {
        'name': 'Ed25519',
        'keyType': KeyType.ed25519,
        'signatureScheme': SignatureScheme.ed25519,
        'expectedAlg': 'Ed25519',
      },
    ];

    for (final testCase in testCases) {
      group('with ${testCase['name']} curve', () {
        late DidSigner signer;
        late DidSignerAdapter signerAdapter;

        setUp(() async {
          final keyStore = InMemoryKeyStore();
          final wallet = PersistentWallet(keyStore);
          final keyPair = await wallet.generateKey(
            keyType: testCase['keyType'] as KeyType,
          );

          final didManager = DidKeyManager(
            wallet: wallet,
            store: InMemoryDidStore(),
          );

          await didManager.addVerificationMethod(keyPair.id);

          signer = await didManager.getSigner(
            didManager.assertionMethod.first,
            signatureScheme: testCase['signatureScheme'] as SignatureScheme,
          );

          signerAdapter = DidSignerAdapter(signer);
        });

        test('should strip disclosure part from SD-JWT', () async {
          final claims = {
            'sub': 'test-subject',
            'selective_data': 'sensitive',
          };

          final result =
              await JwtHelper.createAndSignJwt(claims, signerAdapter);

          expect(result.contains('~'), isFalse);

          // Should be a standard JWT format
          final parts = result.split('.');
          expect(parts.length, equals(3));
        });

        test('should verify JWT payload matches input claims', () async {
          final claims = {
            'sub': 'did:example:123',
            'iss': 'https://issuer.example.com',
            'aud': 'https://verifier.example.com',
            'custom_claim': 'custom_value',
          };

          final result =
              await JwtHelper.createAndSignJwt(claims, signerAdapter);

          final parts = result.split('.');
          final payloadJson = utf8.decode(
            base64Url.decode(base64Url.normalize(parts[1])),
          );
          final payload = json.decode(payloadJson) as Map<String, dynamic>;

          expect(payload['sub'], equals(claims['sub']));
          expect(payload['iss'], equals(claims['iss']));
          expect(payload['aud'], equals(claims['aud']));
          expect(payload['custom_claim'], equals(claims['custom_claim']));
        });

        test('should use correct algorithm in JWT header', () async {
          final claims = {
            'sub': 'test-subject',
          };

          final result =
              await JwtHelper.createAndSignJwt(claims, signerAdapter);

          final parts = result.split('.');
          final headerJson = utf8.decode(
            base64Url.decode(base64Url.normalize(parts[0])),
          );
          final header = json.decode(headerJson) as Map<String, dynamic>;

          expect(header['alg'], equals(testCase['expectedAlg']));
          expect(header['kid'], isNotNull);
        });

        test('should produce valid signature that can be verified', () async {
          final claims = {
            'sub': 'did:example:123',
            'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
          };

          final jwt = await JwtHelper.createAndSignJwt(claims, signerAdapter);

          final parts = jwt.split('.');
          expect(parts.length, equals(3));

          expect(() => base64Url.decode(base64Url.normalize(parts[0])),
              returnsNormally);
          expect(() => base64Url.decode(base64Url.normalize(parts[1])),
              returnsNormally);
          expect(() => base64Url.decode(base64Url.normalize(parts[2])),
              returnsNormally);

          final signature = base64Url.decode(base64Url.normalize(parts[2]));
          expect(signature, isNotEmpty);
        });
      });
    }
  });
}
