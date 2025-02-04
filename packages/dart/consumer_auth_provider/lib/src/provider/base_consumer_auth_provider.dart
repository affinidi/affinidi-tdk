import 'dart:typed_data';

import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:base_codecs/base_codecs.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'consumer_auth_provider_abstract.dart';
import 'token_provider.dart';

class BaseConsumerAuthProvider implements ConsumerAuthProviderAbstract {
  final String _encryptedSeed;
  final String _encryptionKey;

  late final CryptographyService _cryptographyService;
  late final ConsumerTokenProvider _consumerTokenProvider;
  late final CisTokenProvider _cisTokenProvider;
  late final Uint8List _seedBytes = hexDecode(_cryptographyService.decryptSeed(
    encryptedSeedHex: _encryptedSeed,
    encryptionKeyHex: _encryptionKey,
  ));

  String? _consumerToken;

  BaseConsumerAuthProvider({
    required String encryptedSeed,
    required String encryptionKey,
  })  : _encryptedSeed = encryptedSeed,
        _encryptionKey = encryptionKey {
    _cryptographyService = CryptographyService();
    _consumerTokenProvider = ConsumerTokenProvider();
    _cisTokenProvider = CisTokenProvider();
  }

  @override
  Future<String> fetchConsumerToken() async {
    try {
      if (_consumerToken != null && !_isTokenExpired(_consumerToken!)) {
        return _consumerToken!;
      }

      _consumerToken = await _consumerTokenProvider.getToken(_seedBytes);

      return _consumerToken!;
    } catch (e) {
      throw Exception('Failed to fetch consumer token');
    }
  }

  @override
  Future<String> fetchCisToken() async {
    return await _cisTokenProvider.getToken(_seedBytes);
  }

  bool _isTokenExpired(String token) {
    return JwtDecoder.isExpired(token);
  }
}
