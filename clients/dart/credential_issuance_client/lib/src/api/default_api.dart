//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:affinidi_tdk_credential_issuance_client/src/api_util.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/change_credential_status_input.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/flow_data.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/list_issuance_record_response.dart';

class DefaultApi {
  final Dio _dio;

  final Serializers _serializers;

  const DefaultApi(this._dio, this._serializers);

  /// change credential status.
  /// change credential status.
  ///
  /// Parameters:
  /// * [projectId] - project id
  /// * [configurationId] - configuration id
  /// * [changeCredentialStatusInput] - Request body for changing credential status
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FlowData] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FlowData>> changeCredentialStatus({
    required String projectId,
    required String configurationId,
    required ChangeCredentialStatusInput changeCredentialStatusInput,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/v1/{projectId}/configurations/{configurationId}/issuance/change-status'
            .replaceAll(
                '{' r'projectId' '}',
                encodeQueryParameter(
                        _serializers, projectId, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'configurationId' '}',
                encodeQueryParameter(
                        _serializers, configurationId, const FullType(String))
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
      const _type = FullType(ChangeCredentialStatusInput);
      _bodyData = _serializers.serialize(changeCredentialStatusInput,
          specifiedType: _type);
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

    FlowData? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(FlowData),
            ) as FlowData;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FlowData>(
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

  /// List records
  /// Retrieve a list of issuance data records.
  ///
  /// Parameters:
  /// * [projectId] - Affinidi project id
  /// * [configurationId] - The id of the issuance configuration
  /// * [limit] - Maximum number of records to fetch in a list
  /// * [exclusiveStartKey] - exclusiveStartKey for retrieving the next batch of data.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ListIssuanceRecordResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ListIssuanceRecordResponse>> listIssuanceDataRecords({
    required String projectId,
    required String configurationId,
    int? limit = 10,
    String? exclusiveStartKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records'
            .replaceAll(
                '{' r'projectId' '}',
                encodeQueryParameter(
                        _serializers, projectId, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'configurationId' '}',
                encodeQueryParameter(
                        _serializers, configurationId, const FullType(String))
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

    final _queryParameters = <String, dynamic>{
      if (limit != null)
        r'limit':
            encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (exclusiveStartKey != null)
        r'exclusiveStartKey': encodeQueryParameter(
            _serializers, exclusiveStartKey, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ListIssuanceRecordResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(ListIssuanceRecordResponse),
            ) as ListIssuanceRecordResponse;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ListIssuanceRecordResponse>(
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
