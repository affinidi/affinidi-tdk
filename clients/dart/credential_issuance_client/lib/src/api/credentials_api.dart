//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:affinidi_tdk_credential_issuance_client/src/api_util.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/create_credential_input.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/generate_credentials400_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/invalid_jwt_token_error.dart';

class CredentialsApi {

  final Dio _dio;

  final Serializers _serializers;

  const CredentialsApi(this._dio, this._serializers);

  /// generateCredentials
  /// Issue credential for end user upon presentation a valid access token. Since we don&#39;t immediate issue credential It&#39;s expected to return &#x60;transaction_id&#x60; and use this &#x60;transaction_id&#x60; to get the deferred credentials
  ///
  /// Parameters:
  /// * [projectId] - Affinidi project id
  /// * [createCredentialInput] - Request body to issue credentials
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CredentialResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CredentialResponse>> generateCredentials({ 
    required String projectId,
    required CreateCredentialInput createCredentialInput,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/{projectId}/credential'.replaceAll('{' r'projectId' '}', encodeQueryParameter(_serializers, projectId, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(CreateCredentialInput);
      _bodyData = _serializers.serialize(createCredentialInput, specifiedType: _type);

    } catch(error, stackTrace) {
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

    CredentialResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(CredentialResponse),
      ) as CredentialResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CredentialResponse>(
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

}
