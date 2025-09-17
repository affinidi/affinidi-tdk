import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:ssi/ssi.dart';

import '../../affinidi_tdk_consumer_auth_provider.dart';
import '../exceptions/tdk_exception_type.dart';
import '../mixins/jwt_token_did_checker.dart';

/// A provider class that extends [TokenProvider] to handle delegated token operations.
class DelegatedTokenProvider extends TokenProvider with JwtTokenDidChecker {
  final DidSigner _signer;
  final Dio _dioInstance;
  final EnvironmentType? _envType;
  final ElementsRegion _region;

  static final int _delegatedTokenExpiration = 5 * 60; // 5 minutes
  static final int? _apiTimeOutInMilliseconds =
      Environment.apiTimeOutInMilliseconds;

  /// Constructor for [DelegatedTokenProvider].
  ///
  /// - [signer] (required): Instance of [DidSigner] used for signing operations.
  /// - [client] (optional): Optional instance of [Dio] for handling HTTP requests. If not provided,
  ///   a default client will be used.
  /// - [envType] (optional): The [EnvironmentType] to specify the environment (e.g., local, dev, prod).
  ///   If not provided, the value will be taken from the `AFFINIDI_TDK_ENVIRONMENT` environment variable,
  ///   or will default to `prod` if not set.
  /// - [region] (optional): The [ElementsRegion] to specify the AWS region (e.g., apSoutheast1, apSouth1).
  ///   Defaults to [ElementsRegion.apSoutheast1] if not provided.
  DelegatedTokenProvider({
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

  /// Retrieves a token for the specified profile DID.
  ///
  /// - [profileDid] (required) - The decentralized identifier (DID) of the profile
  ///
  /// Returns a [Future] that resolves to a [String] containing the token.
  Future<String> getToken({required String profileDid}) async {
    final token = await getJwtToken(
      signer: _signer,
      expiration: _delegatedTokenExpiration,
      audience: _tokenEndpoint,
      subject: profileDid,
    );
    final did = _signer.did;
    final delegatedToken =
        await _fetchDelegatedToken(clientAssertion: token, did: did);

    final decodedToken = JwtDecoder.decode(delegatedToken);
    if (!hasMatchingDid(
      decodedToken: decodedToken,
      did: profileDid,
    )) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Delegated token DID does not match profile DID',
            code: TdkExceptionType.delegatedTokenDidMismatch.code),
        StackTrace.current,
      );
    }

    if (!hasMatchingGrantee(
      decodedToken: decodedToken,
      granteeDid: _signer.did,
    )) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Delegated token DID does not match grantee DID',
            code: TdkExceptionType.delegatedTokenGranteeDidMismatch.code),
        StackTrace.current,
      );
    }

    return delegatedToken;
  }

  Future<String> _fetchDelegatedToken({
    required String clientAssertion,
    required String did,
  }) async {
    final data = {
      'grant_type': 'affinidi_delegation',
      'client_assertion_type':
          'urn:ietf:params:oauth:delegation-assertion-type:jwt-bearer',
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
