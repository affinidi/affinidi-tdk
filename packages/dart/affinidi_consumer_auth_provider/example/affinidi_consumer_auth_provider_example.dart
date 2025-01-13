import 'dart:convert';

import 'package:affinidi_consumer_auth_provider/affinidi_consumer_auth_provider.dart';
import 'package:affinidi_cryptography_service/affinidi_cryptography_service.dart';

Future<void> main() async {
  final authProvider = ConsumerAuthProvider();
  final cryptographyService = CryptographyService();

  const seed = '12345678';
  const nonce = 'fixed_nonce_per_client';
  final nonceBytes = utf8.encode(nonce);

  final seedEncryptionKey = await cryptographyService.Pbkdf2(
    password: seed,
    nonce: nonceBytes,
  );
  final encryptionKey = cryptographyService.getRandomBytes(32);

  final encryptedSeed = await cryptographyService.Aes256Encrypt(
    key: encryptionKey,
    data: seedEncryptionKey,
  );

  final token = await authProvider.fetchConsumerToken(
    encryptedSeed: encryptedSeed,
    encryptionKey: encryptionKey,
  );
  print('Consumer token: $token');
}
