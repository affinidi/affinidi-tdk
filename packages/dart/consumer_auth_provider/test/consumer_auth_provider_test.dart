import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:test/test.dart';

void main() {
  group('Cryptography Unit Tests', () {
    test('Decrypt seed', () async {
      final mockEncryptedSeed = '';
      final mockEncryptionKey = '';

      final provider = ConsumerAuthProvider(
          encryptedSeed: mockEncryptedSeed, encryptionKey: mockEncryptionKey);

      final cisToken = await provider.fetchCisToken();
      expect(cisToken, isNotNull);
    });
  });
}
