import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../fixtures/dio_exception_fixtures.dart';

/// Enum representing the different HTTP methods that can be used in requests.
enum HttpMethod {
  /// DELETE method
  delete,

  /// GET method
  get,

  /// PATCH method
  patch,

  /// POST method
  post,

  /// PUT method
  put,
  ;
}

const _defaultHeaders = {
  'content-type': 'application/json',
};

/// Extension methods for DioAdapter to simplify mocking HTTP requests.
extension DioAdapterExtensions on DioAdapter {
  /// Mocks a request that will throw an exception.
  ///
  /// [url] - endpoint URL to mock.
  /// [statusCode] - HTTP status code to return.
  /// [exception] - DioException to throw.
  /// [httpMethod] - HTTP method to use.
  /// [data] - request data.
  ///
  /// Throws [ArgumentError] if both statusCode and exception are null.
  void mockRequestWithException({
    required String url,
    int? statusCode,
    DioException? exception,
    HttpMethod httpMethod = HttpMethod.get,
    Object? data,
  }) {
    if (statusCode == null && exception == null) {
      throw ArgumentError('Either statusCode or exception must be provided');
    }
    final dioException = exception ??
        DioExceptionFixtures.withStatusCode(statusCode!, url: url, data: data);
    final responseStatus = statusCode ?? 0;

    switch (httpMethod) {
      case HttpMethod.delete:
        onDelete(
          url,
          (server) => server.throws(responseStatus, dioException),
        );
      case HttpMethod.get:
        onGet(
          url,
          (server) => server.throws(responseStatus, dioException),
        );
      case HttpMethod.patch:
        onPatch(
          url,
          (server) => server.throws(responseStatus, dioException),
        );
      case HttpMethod.post:
        onPost(
          url,
          (server) => server.throws(responseStatus, dioException),
        );
      case HttpMethod.put:
        onPut(
          url,
          (server) => server.throws(responseStatus, dioException),
        );
    }
  }

  /// Mocks a request that will return a successful response.
  ///
  /// [url] - endpoint URL to mock.
  /// [statusCode] - HTTP status code to return.
  /// [data] - response data to return.
  /// [httpMethod] - HTTP method to use.
  void mockRequestWithReply({
    required String url,
    required int statusCode,
    required Object data,
    HttpMethod httpMethod = HttpMethod.get,
  }) {
    switch (httpMethod) {
      case HttpMethod.delete:
        onDelete(
          url,
          (server) {
            server.reply(statusCode, data);
          },
          data: Matchers.any,
          headers: _defaultHeaders,
        );
      case HttpMethod.get:
        onGet(
          url,
          (server) {
            server.reply(statusCode, data);
          },
          data: Matchers.any,
          headers: _defaultHeaders,
        );
      case HttpMethod.patch:
        onPatch(
          url,
          (server) {
            server.reply(statusCode, data);
          },
          data: Matchers.any,
          headers: _defaultHeaders,
        );
      case HttpMethod.post:
        onPost(
          url,
          (server) {
            server.reply(statusCode, data);
          },
          data: Matchers.any,
          headers: _defaultHeaders,
        );
      case HttpMethod.put:
        onPut(
          url,
          (server) {
            server.reply(statusCode, data);
          },
          data: Matchers.any,
          headers: _defaultHeaders,
        );
    }
  }
}
