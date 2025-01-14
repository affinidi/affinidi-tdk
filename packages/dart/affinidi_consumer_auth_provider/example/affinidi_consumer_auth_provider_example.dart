import 'dart:convert';

import 'package:affinidi_consumer_auth_provider/affinidi_consumer_auth_provider.dart';
import 'package:affinidi_cryptography_service/affinidi_cryptography_service.dart';

Future<void> main() async {
  const seed = 'user_seed';
  const nonce = 'fixed_nonce_per_client';
  final nonceBytes = utf8.encode(nonce);

  final cryptographyService = CryptographyService();
  final seedEncryptionKey = await cryptographyService.Pbkdf2(
    password: seed,
    nonce: nonceBytes,
  );
  final encryptionKey = cryptographyService.getRandomBytes(32);
  final encryptedSeed = await cryptographyService.Aes256Encrypt(
    key: encryptionKey,
    data: seedEncryptionKey,
  );

  final consumerAuthProvider = ConsumerAuthProvider(
    encryptedSeed: encryptedSeed,
    encryptionKey: encryptionKey,
  );
  final token = await consumerAuthProvider.fetchConsumerToken();
  print('Consumer token: $token');
}
