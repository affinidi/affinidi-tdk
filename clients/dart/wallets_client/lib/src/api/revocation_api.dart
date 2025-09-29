//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:affinidi_tdk_wallets_client/src/api_util.dart';
import 'package:affinidi_tdk_wallets_client/src/model/entity_not_found_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/get_revocation_list_credential_result_dto.dart';
import 'package:affinidi_tdk_wallets_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/not_found_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/operation_forbidden_error.dart';
import 'package:affinidi_tdk_wallets_client/src/model/revoke_credential_input.dart';

class RevocationApi {
  final Dio _dio;

  final Serializers _serializers;

  const RevocationApi(this._dio, this._serializers);

  /// getRevocationCredentialStatus
  /// Get revocation status list as RevocationListCredential
  ///
  /// Parameters:
  /// * [projectId] - Description for projectId.
  /// * [walletId] - Description for walletId.
  /// * [statusId] - Description for statusId.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetRevocationListCredentialResultDto] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetRevocationListCredentialResultDto>>
      getRevocationCredentialStatus({
    required String projectId,
    required String walletId,
    required String statusId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId}'
            .replaceAll(
                '{' r'projectId' '}',
                encodeQueryParameter(
                        _serializers, projectId, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'walletId' '}',
                encodeQueryParameter(
                        _serializers, walletId, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'statusId' '}',
                encodeQueryParameter(
                        _serializers, statusId, const FullType(String))
                    .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ProjectTokenAuth',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetRevocationListCredentialResultDto? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(GetRevocationListCredentialResultDto),
            ) as GetRevocationListCredentialResultDto;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetRevocationListCredentialResultDto>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Return revocation list credential.
  /// Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.
  ///
  /// Parameters:
  /// * [listId]
  /// * [walletId] - id of the wallet
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetRevocationListCredentialResultDto] as data
  /// Throws [DioException] if API call or serialization fails
  @Deprecated('This operation has been deprecated')
  Future<Response<GetRevocationListCredentialResultDto>>
      getRevocationListCredential({
    required String listId,
    required String walletId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/wallets/{walletId}/revocation-list/{listId}'
        .replaceAll(
            '{' r'listId' '}',
            encodeQueryParameter(_serializers, listId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'walletId' '}',
            encodeQueryParameter(_serializers, walletId, const FullType(String))
                .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ProjectTokenAuth',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetRevocationListCredentialResultDto? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType:
                  const FullType(GetRevocationListCredentialResultDto),
            ) as GetRevocationListCredentialResultDto;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetRevocationListCredentialResultDto>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Revoke Credential.
  /// Update index/credetial at appropriate revocation list (set revoken is true).
  ///
  /// Parameters:
  /// * [walletId] - id of the wallet
  /// * [revokeCredentialInput] - RevokeCredential
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> revokeCredential({
    required String walletId,
    required RevokeCredentialInput revokeCredentialInput,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/wallets/{walletId}/revoke'.replaceAll(
        '{' r'walletId' '}',
        encodeQueryParameter(_serializers, walletId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ProjectTokenAuth',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(RevokeCredentialInput);
      _bodyData =
          _serializers.serialize(revokeCredentialInput, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }
}
