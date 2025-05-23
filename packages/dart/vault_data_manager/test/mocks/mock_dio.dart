import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

import '../fixtures/api_service/test_data_fixtures.dart';

class MockDio extends Mock implements Dio {
  @override
  BaseOptions get options => BaseOptions();

  bool _shouldThrowError = false;

  void setShouldThrowError(bool value) {
    _shouldThrowError = value;
  }

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    Object? data,
  }) async {
    if (path == TestDataFixtures.schemaUrl) {
      return Response<T>(
        data: {
          'person': {'type': 'object'}
        } as T,
        statusCode: 200,
        requestOptions: RequestOptions(path: path),
      );
    }
    if (path == TestDataFixtures.jwksUrl) {
      return Response<T>(
        data: {
          'keys': [
            {
              'kty': 'RSA',
              'kid': TestDataFixtures.testKid,
              'use': 'sig',
              'n': 'test-n',
              'e': 'AQAB',
            }
          ]
        } as T,
        statusCode: 200,
        requestOptions: RequestOptions(path: path),
      );
    }
    return Response<T>(
      data: null as T,
      statusCode: 200,
      requestOptions: RequestOptions(path: path),
    );
  }

  @override
  Future<Response<T>> fetch<T>(RequestOptions requestOptions) async {
    // Handle download requests
    if (requestOptions.method == 'GET' &&
        requestOptions.responseType == ResponseType.bytes) {
      return Response<T>(
        data: Uint8List.fromList([1, 2, 3]) as T,
        statusCode: 200,
        requestOptions: requestOptions,
      );
    }

    if (requestOptions.method == 'POST' &&
        requestOptions.path.contains(TestDataFixtures.uploadUrl)) {
      if (_shouldThrowError) {
        throw DioException(
          requestOptions: requestOptions,
          error: TestDataFixtures.uploadFailed,
          response: Response(
            requestOptions: requestOptions,
            statusCode: 500,
            data: {'error': TestDataFixtures.uploadFailed},
          ),
        );
      }
      return Response<T>(
        data: null as T,
        statusCode: 200,
        requestOptions: requestOptions,
      );
    }

    return Response<T>(
      data: null as T,
      statusCode: 200,
      requestOptions: requestOptions,
    );
  }
}
