import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:ssi/ssi.dart';

import '../exceptions/tdk_exception_type.dart';
import '../mixins/jwt_token_did_checker.dart';
import 'token_provider.dart';

/// A provider class that extends `TokenProvider` to handle consumer-specific
/// token management functionality.
class ConsumerTokenProvider extends TokenProvider with JwtTokenDidChecker {
  final DidSigner _signer;
  final Dio _dioInstance;

  static final String _tokenEndpoint = Environment.fetchConsumerAudienceUrl();
  static final int _consumerTokenExpiration = 5 * 60; // 5 minutes
  static final int? _apiTimeOutInMilliseconds =
      Environment.apiTimeOutInMilliseconds;

  /// Constructor for [ConsumerTokenProvider] using the [signer] and optional [Dio] http client.
  ConsumerTokenProvider({
    required DidSigner signer,
    Dio? client,
  })  : _signer = signer,
        _dioInstance = client ??
            ((_apiTimeOutInMilliseconds != null)
                ? Dio(BaseOptions(
                    connectTimeout:
                        Duration(milliseconds: _apiTimeOutInMilliseconds!),
                    receiveTimeout:
                        Duration(milliseconds: _apiTimeOutInMilliseconds!),
                  ))
                : Dio());

  /// Method to retrieve a consumer token.
  ///
  /// Returns [Future] that resolves to a [String] representing the token.
  Future<String> getToken() async {
    final token = await getJwtToken(
      signer: _signer,
      expiration: _consumerTokenExpiration,
      audience: _tokenEndpoint,
    );
    final did = _signer.did;
    final consumerToken =
        await _fetchConsumerToken(clientAssertion: token, did: did);

    final decodedToken = JwtDecoder.decode(consumerToken);
    if (!hasMatchingDid(decodedToken: decodedToken, did: did)) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Consumer token DID does not match user DID',
            code: TdkExceptionType.consumerTokenDidMismatch.code),
        StackTrace.current,
      );
    }

    return consumerToken;
  }

  Future<String> _fetchConsumerToken({
    required String clientAssertion,
    required String did,
  }) async {
    final data = {
      'grant_type': 'client_credentials',
      'client_assertion_type':
          'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
      'client_assertion': clientAssertion,
      'client_id': did,
    };

    final response = await _dioInstance.post<Map<String, dynamic>>(
      _tokenEndpoint,
      data: data,
      options: Options(
        contentType: 'application/json',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    return response.data!['access_token'] as String;
  }
}
