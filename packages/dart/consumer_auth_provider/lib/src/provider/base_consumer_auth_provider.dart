import 'dart:typed_data';

import 'package:jwt_decoder/jwt_decoder.dart';

import 'consumer_auth_provider_abstract.dart';
import 'token_provider.dart';

/// Base class for consumer authentication provider. It handles the decryption
/// of the seed, and generation of tokens, and validation of tokens.
class BaseConsumerAuthProvider implements ConsumerAuthProviderAbstract {
  final Uint8List _seedBytes;

  late final ConsumerTokenProvider _consumerTokenProvider;
  late final CisTokenProvider _cisTokenProvider;

  String? _consumerToken;

  /// Constructor for [BaseConsumerAuthProvider] from encrypted seed and encryption key.
  BaseConsumerAuthProvider({
    required Uint8List seedBytes,
  }) : _seedBytes = seedBytes {
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
