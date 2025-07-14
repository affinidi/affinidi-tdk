import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'fixtures/did_signer_fixture.dart';

void main() {
  group('When retrieving a CIS token', () {
    group('and uses a DidSigner with an invalid algorithm', () {
      test('it throws an exception with code unableToGetSignatureScheme',
          () async {
        final didSigner = await DidSignerFixture.withInvalidAlgorithm(
            'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd');

        final provider = ConsumerAuthProvider(signer: didSigner);

        await expectLater(
            provider.fetchCisToken(),
            throwsA(isA<SsiException>().having((error) => error.code, 'code',
                SsiExceptionType.unsupportedSignatureScheme.code)));
      });
    });

    group('and a token is returned', () {
      test('it contains all the required fields', () async {
        final didSigner = await DidSignerFixture.withSeed(
            'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd');

        final provider = ConsumerAuthProvider(signer: didSigner);

        final currentTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
        final cisToken = await provider.fetchCisToken();
        expect(cisToken, isNotNull);

        final isTokenExpired = JwtDecoder.isExpired(cisToken);
        expect(isTokenExpired, isFalse);

        final expectedDid =
            'did:key:zQ3sha56jgL3375utvumTafCFeLMMCRmvsggy6LYdaYsz1QJ1';
        final expectedAudience = 'https://apse1.api.affinidi.io/cis';
        final expectedValidTimeInSeconds = 5 * 60;

        final decodedToken = JwtDecoder.decode(cisToken);
        final iat = decodedToken['iat'] as int;

        expect(decodedToken['iss'], expectedDid);
        expect(decodedToken['sub'], expectedDid);
        expect(decodedToken['aud'], expectedAudience);
        expect(decodedToken['jti'], isNotEmpty);
        expect(iat, isPositive);
        expect(iat - currentTime <= 2, isTrue);
        expect(decodedToken['exp'], iat + expectedValidTimeInSeconds);
      });
    });
  });
}
