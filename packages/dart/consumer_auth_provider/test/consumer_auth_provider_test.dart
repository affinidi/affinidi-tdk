import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:test/test.dart';

void main() {
  group('Cryptography Unit Tests', () {
    test('Decrypt seed', () async {
      final mockEncryptedSeed =
          '79efaac991d5814392b7184493066bb96e6ca8dc04f19d5d9eb3ce13dd886ee10531dc05af6d2705be32e601d241bc66f6bb8af91540718b79a12a79c93e73bf3206adca84a1b0e37abd85604cfe2483729468210298d991f540928ec8b2ccc2';
      final mockEncryptionKey =
          '236c9c6ad782504a7472b1b1d701b946b5be6cec965282d451eae1ef9ddb0a1f';
      final mockDid =
          'did:key:zQ3shpqTRqPjMV2S3kowWNayqd9ugQHAeajMv65yG92PC2M7u';
      final mockAudience = 'https://apse1.api.affinidi.io/cis';
      final validTimeInSeconds = 5 * 60;

      final provider = ConsumerAuthProvider(
          encryptedSeed: mockEncryptedSeed, encryptionKey: mockEncryptionKey);

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
