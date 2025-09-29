//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:affinidi_tdk_credential_issuance_client/src/api_util.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_response.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/get_credential_offer400_response.dart';

class OfferApi {
  final Dio _dio;

  final Serializers _serializers;

  const OfferApi(this._dio, this._serializers);

  /// getCredentialOffer
  /// Endpoint used to return Credential Offer details, used with &#x60;credential_offer_uri&#x60; response
  ///
  /// Parameters:
  /// * [projectId] - Affinidi project id
  /// * [issuanceId] - issuanceId from credential_offer_uri
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CredentialOfferResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CredentialOfferResponse>> getCredentialOffer({
    required String projectId,
    required String issuanceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/{projectId}/offers/{issuanceId}'
        .replaceAll(
            '{' r'projectId' '}',
            encodeQueryParameter(
                    _serializers, projectId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'issuanceId' '}',
            encodeQueryParameter(
                    _serializers, issuanceId, const FullType(String))
                .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
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

    CredentialOfferResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(CredentialOfferResponse),
            ) as CredentialOfferResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CredentialOfferResponse>(
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
