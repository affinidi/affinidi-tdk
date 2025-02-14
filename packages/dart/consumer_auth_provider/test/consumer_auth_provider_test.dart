import 'dart:typed_data';

import 'package:base_codecs/base_codecs.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:test/test.dart';

void main() {
  group('Cryptography Unit Tests', () {
    test('Decrypt seed', () async {
      final seedBytes = [
        127,
        207,
        117,
        151,
        251,
        83,
        173,
        138,
        126,
        164,
        8,
        230,
        146,
        6,
        194,
        84,
        244,
        160,
        132,
        252,
        138,
        118,
        178,
        144,
        207,
        241,
        7,
        61,
        120,
        124,
        22,
        82,
      ];

      final mockDid =
          'did:key:zQ3shpqTRqPjMV2S3kowWNayqd9ugQHAeajMv65yG92PC2M7u';
      final mockAudience = 'https://apse1.api.affinidi.io/cis';
      final validTimeInSeconds = 5 * 60;

      final provider =
          ConsumerAuthProvider(seedBytes: Uint8List.fromList(seedBytes));

      final currentTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final cisToken = await provider.fetchCisToken();
      expect(cisToken, isNotNull);

      bool isTokenExpired = JwtDecoder.isExpired(cisToken);
      expect(isTokenExpired, isFalse);

      Map<String, dynamic> decodedToken = JwtDecoder.decode(cisToken);
      expect(decodedToken['iss'], mockDid);
      expect(decodedToken['sub'], mockDid);
      expect(decodedToken['aud'], mockAudience);
      expect(decodedToken['jti'], isNotEmpty);
      expect(decodedToken['iat'], isPositive);
      expect(decodedToken['iat'] - currentTime <= 2, isTrue);
      expect(decodedToken['exp'], decodedToken['iat'] + validTimeInSeconds);
    });
  });
}
