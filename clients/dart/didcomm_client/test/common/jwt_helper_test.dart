import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_didcomm_client/src/common/jwt_helper.dart';
import 'package:mocktail/mocktail.dart';
import 'package:selective_disclosure_jwt/selective_disclosure_jwt.dart';
import 'package:test/test.dart';

// Mock Signer for testing
class MockSigner extends Mock implements Signer {}

void main() {
  group('JwtHelper', () {
    late JwtHelper jwtHelper;
    late MockSigner mockSigner;

    setUpAll(() {
      // Register fallback value for Uint8List to support mocktail's any() matcher
      registerFallbackValue(Uint8List(0));
    });

    setUp(() {
      jwtHelper = JwtHelper();
      mockSigner = MockSigner();
    });

    group('createAndSignJwt', () {
      test('should strip disclosure part from SD-JWT', () async {
        // Arrange
        final claims = {
          'sub': 'test-subject',
          'selective_data': 'sensitive',
        };

        when(() => mockSigner.algIanaName).thenReturn('ES256K');
        when(() => mockSigner.keyId).thenReturn('test-key-id');
        when(() => mockSigner.sign(any())).thenAnswer(
          (_) async => Uint8List.fromList(List.generate(64, (i) => i)),
        );

        final result = await jwtHelper.createAndSignJwt(claims, mockSigner);
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

        when(() => mockSigner.algIanaName).thenReturn('ES256K');
        when(() => mockSigner.keyId).thenReturn('test-key-id');
        when(() => mockSigner.sign(any())).thenAnswer(
          (_) async => Uint8List.fromList(List.generate(64, (i) => i)),
        );

        final result = await jwtHelper.createAndSignJwt(claims, mockSigner);

        final parts = result.split('.');
        final payloadJson = utf8.decode(
          base64Url.decode(base64Url.normalize(parts[1])),
        );
        final payload = json.decode(payloadJson) as Map<String, dynamic>;

        // Verify all input claims are present in the payload
        expect(payload['sub'], equals(claims['sub']));
        expect(payload['iss'], equals(claims['iss']));
        expect(payload['aud'], equals(claims['aud']));
        expect(payload['custom_claim'], equals(claims['custom_claim']));
      });
    });
  });
}
