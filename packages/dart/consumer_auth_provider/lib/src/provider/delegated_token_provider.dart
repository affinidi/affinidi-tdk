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

  static final String _tokenEndpoint = Environment.fetchConsumerAudienceUrl();
  static final int _delegatedTokenExpiration = 5 * 60; // 5 minutes
  static final int? _apiTimeOutInMilliseconds =
      Environment.apiTimeOutInMilliseconds;

  /// Constructor for [DelegatedTokenProvider] using the [signer] and optional [Dio] http client.
  DelegatedTokenProvider({
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
