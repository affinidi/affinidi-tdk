import 'dart:io';

import 'package:dio/dio.dart';

import '../../oid4vci_claim_verifiable_credential.dart';
import '../exceptions/tdk_exception_type.dart';

/// Extension on `DioException` to provide additional functionality
/// related to connectivity errors.
extension DioErrorConnectivity on DioException {
  /// Checks if the exception is related to connectivity issues.
  ///
  /// Returns `true` is exception is related to connectivity issues
  bool get isConnectivityError {
    if (type == DioExceptionType.connectionTimeout ||
        type == DioExceptionType.receiveTimeout ||
        type == DioExceptionType.sendTimeout) {
      return true;
    }

    if (error is SocketException) {
      return true;
    }

    if (error is HttpException) {
      final errorMessage = error.toString().toLowerCase();
      return errorMessage.contains('connection') ||
          errorMessage.contains('timed out') ||
          errorMessage.contains('socket') ||
          errorMessage.contains('failed') ||
          errorMessage.contains('reset') ||
          errorMessage.contains('bad file descriptor') ||
          errorMessage.contains('can\'t assign requested address');
    }

    if (response?.statusCode == 504) {
      return true;
    }

    return false;
  }

  /// Extension property to determine if the exception corresponds to a server error.
  ///
  /// Returns `true` if the status code indicates a server error, otherwise `false`.
  bool get isServerError =>
      response?.statusCode != null && response!.statusCode! >= 500;

  /// Converts a [DioException] into a[TdkException] if possible.
  ///
  /// This method attempts to map a DioException to a corresponding [TdkException]
  ///
  /// Returns:
  /// - A [TdkException] if the conversion is successful.
  /// - `null` if the exception cannot be mapped to a [TdkException].
  TdkException? asTdkException() {
    if (isConnectivityError) {
      return TdkException(
        message: 'Network connectivity error',
        originalMessage: toString(),
        code: TdkExceptionType.networkError.code,
      );
    }
    if (isServerError) {
      return TdkException(
        message: 'Server error',
        originalMessage: toString(),
        code: TdkExceptionType.serverError.code,
      );
    }
    return null;
  }
}
