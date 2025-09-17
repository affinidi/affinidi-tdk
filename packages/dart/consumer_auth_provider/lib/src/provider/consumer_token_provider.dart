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
  final EnvironmentType? _envType;
  final ElementsRegion _region;

  static final int _consumerTokenExpiration = 5 * 60; // 5 minutes
  static final int? _apiTimeOutInMilliseconds =
      Environment.apiTimeOutInMilliseconds;

  /// Constructor for [ConsumerTokenProvider].
  ///
  /// - [signer] (required): Instance of [DidSigner] used for signing operations.
  /// - [client] (optional): Optional instance of [Dio] for handling HTTP requests. If not provided,
  ///   a default client will be used.
  /// - [envType] (optional): The [EnvironmentType] to specify the environment (e.g., local, dev, prod).
  ///   If not provided, the value will be taken from the `AFFINIDI_TDK_ENVIRONMENT` environment variable,
  ///   or will default to `prod` if not set.
  /// - [region] (optional): The [ElementsRegion] to specify the AWS region (e.g., apSoutheast1, apSouth1).
  ///   Defaults to [ElementsRegion.apSoutheast1] if not provided.
  ConsumerTokenProvider({
    required DidSigner signer,
    Dio? client,
    EnvironmentType? envType,
    ElementsRegion region = ElementsRegion.apSoutheast1,
  })  : _signer = signer,
        _dioInstance = client ??
            ((_apiTimeOutInMilliseconds != null)
                ? Dio(BaseOptions(
                    connectTimeout:
                        Duration(milliseconds: _apiTimeOutInMilliseconds!),
                    receiveTimeout:
                        Duration(milliseconds: _apiTimeOutInMilliseconds!),
                  ))
                : Dio()),
        _envType = envType,
        _region = region;

  String get _tokenEndpoint =>
      Environment.fetchConsumerAudienceUrl(null, _envType, _region);

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
