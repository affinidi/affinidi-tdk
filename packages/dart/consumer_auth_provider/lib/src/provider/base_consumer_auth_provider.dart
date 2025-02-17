import 'dart:typed_data';

import 'package:jwt_decoder/jwt_decoder.dart';

import '../consumer_auth_provider_interface.dart';
import 'token_provider.dart';

/// Base class for consumer authentication provider. It handles the  generation and validation of tokens.
class BaseConsumerAuthProvider implements ConsumerAuthProviderInterface {
  final Uint8List _seed;

  late final ConsumerTokenProvider _consumerTokenProvider;
  late final CisTokenProvider _cisTokenProvider;

  String? _consumerToken;

  /// Constructor for [BaseConsumerAuthProvider] using the [seed] in bytes
  BaseConsumerAuthProvider({required Uint8List seed}) : _seed = seed {
    _consumerTokenProvider = ConsumerTokenProvider();
    _cisTokenProvider = CisTokenProvider();
  }

  @override
  Future<String> fetchConsumerToken() async {
    try {
      if (_consumerToken != null && !_isTokenExpired(_consumerToken!)) {
        return _consumerToken!;
      }

      _consumerToken = await _consumerTokenProvider.getToken(_seed);

      return _consumerToken!;
    } catch (e) {
      throw Exception('Failed to fetch consumer token');
    }
  }

  @override
  Future<String> fetchCisToken() async {
    return await _cisTokenProvider.getToken(_seed);
  }

  bool _isTokenExpired(String token) {
    return JwtDecoder.isExpired(token);
  }
}
