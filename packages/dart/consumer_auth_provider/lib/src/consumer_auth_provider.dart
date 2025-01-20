import 'dart:convert';

import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'consumer_token_provider.dart';

class ConsumerAuthProvider {
  final String _encryptedSeed;
  final String _encryptionKey;

  late final AesCbcEncryptionService _aesCbcEncryptionService;

  String? _consumerToken;

  ConsumerAuthProvider({
    required String encryptedSeed,
    required String encryptionKey,
  })  : _encryptedSeed = encryptedSeed,
        _encryptionKey = encryptionKey {
    _aesCbcEncryptionService = AesCbcEncryptionService();
  }

  Future<String> fetchConsumerToken() async {
    try {
      if (_consumerToken != null && !_isTokenExpired(_consumerToken!)) {
        return _consumerToken!;
      }

      final seed = _aesCbcEncryptionService.decryptSeed(
        encryptedSeedHex: _encryptedSeed,
        encryptionKeyHex: _encryptionKey,
      );

      // TODO: dependency-inject this tokenProvider
      ConsumerTokenProvider tokenProvider = ConsumerTokenProvider();
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
