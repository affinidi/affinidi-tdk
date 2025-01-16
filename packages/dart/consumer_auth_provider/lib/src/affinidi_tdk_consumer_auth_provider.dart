import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_cryptography_service/affinidi_cryptography_service.dart';
import 'package:basic_token_provider/basic_token_provider.dart';
import 'package:convert/convert.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class ConsumerAuthProvider {
  final String _encryptedSeed;
  final String _encryptionKey;

  String? _consumerToken;

  static const didMethodSeparator = '++';

  ConsumerAuthProvider({
    required String encryptedSeed,
    required String encryptionKey,
  })  : _encryptedSeed = encryptedSeed,
        _encryptionKey = encryptionKey;

  Future<String> fetchConsumerToken() async {
    try {
      if (_consumerToken != null && !_isTokenExpired(_consumerToken!)) {
        return _consumerToken!;
      }

      final List<int> walletSeedBuff = hex.decode(_encryptedSeed);
      final nonce = walletSeedBuff.sublist(0, 16);
      final ciphertextAndMac = walletSeedBuff.sublist(16);
      final key = hex.decode(_encryptionKey);

      final cryptographyService = CryptographyService();
      final decryptedSeed = cryptographyService.aesCbcDecrypt(
        Uint8List.fromList(key),
        Uint8List.fromList(nonce),
        Uint8List.fromList(ciphertextAndMac),
      );

      // TODO: dependency-inject this tokenProvider
      ConsumerTokenProvider tokenProvider = ConsumerTokenProvider();
      final decryptedSeedEncoded = utf8.decode(decryptedSeed);
      final [seed, ...didMethod] = decryptedSeedEncoded.split(
        didMethodSeparator,
      );
      _consumerToken = await tokenProvider.getToken(utf8.encode(seed));

      return _consumerToken!;
    } catch (e) {
      throw Exception('Failed to fetch consumer token');
    }
  }

  bool _isTokenExpired(String token) {
    return JwtDecoder.isExpired(token);
  }
}
