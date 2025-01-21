import 'dart:convert';

import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'consumer_auth_provider_abstract.dart';
import 'consumer_token_provider.dart';

class BaseConsumerAuthProvider implements ConsumerAuthProviderAbstract {
  final String _encryptedSeed;
  final String _encryptionKey;

  late final AesCbcEncryptionService _aesCbcEncryptionService;
  late final ConsumerTokenProvider _tokenProvider;

  String? _consumerToken;

  BaseConsumerAuthProvider({
    required String encryptedSeed,
    required String encryptionKey,
  })  : _encryptedSeed = encryptedSeed,
        _encryptionKey = encryptionKey {
    _aesCbcEncryptionService = AesCbcEncryptionService();
    _tokenProvider = ConsumerTokenProvider();
  }

  @override
  Future<String> fetchConsumerToken() async {
    try {
      if (_consumerToken != null && !_isTokenExpired(_consumerToken!)) {
        return _consumerToken!;
      }

      final seed = _aesCbcEncryptionService.decryptSeed(
        encryptedSeedHex: _encryptedSeed,
        encryptionKeyHex: _encryptionKey,
      );

      _consumerToken = await _tokenProvider.getToken(utf8.encode(seed));

      return _consumerToken!;
    } catch (e) {
      throw Exception('Failed to fetch consumer token');
    }
  }

  bool _isTokenExpired(String token) {
    return JwtDecoder.isExpired(token);
  }
}
