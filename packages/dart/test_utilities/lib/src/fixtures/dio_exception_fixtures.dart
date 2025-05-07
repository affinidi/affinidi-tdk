import 'dart:io';

import 'package:dio/dio.dart';

/// Provides factory methods for creating DioException instances.
class DioExceptionFixtures {
  /// Creates a DioException with a status code.
  ///
  /// [statusCode] - The status code to include in the exception.
  /// [url] - The URL where the error occurred.
  /// [data] - Optional response data to include in the exception.
  static DioException withStatusCode(
    int statusCode, {
    required String url,
    Object? data,
  }) {
    final requestOptions = RequestOptions(path: url);
    final response = Response(
      data: data,
      statusCode: statusCode,
      requestOptions: requestOptions,
    );

    return DioException(
      requestOptions: requestOptions,
      response: response,
    );
  }

  /// A DioException with a SocketException.
  static final socketException = socketExceptionWithMessage();

  /// Creates a DioException with a SocketException.
  ///
  /// [message] - The error message for the SocketException.
  static DioException socketExceptionWithMessage(
          {String message = 'Failed to connect'}) =>
      DioException(
        requestOptions: RequestOptions(),
        error: SocketException(message),
      );

  /// A DioException with an HttpException.
  static final httpException = httpExceptionWithMessage();

  /// Creates a DioException with an HttpException.
  ///
  /// [message] - The error message for the HttpException.
  static DioException httpExceptionWithMessage(
          {String message = 'Connection failed'}) =>
      DioException(
        requestOptions: RequestOptions(),
        error: HttpException(message),
      );

  /// A DioException for connection timeout.
  static final timeoutException = DioException(
    requestOptions: RequestOptions(),
    type: DioExceptionType.connectionTimeout,
  );
}
