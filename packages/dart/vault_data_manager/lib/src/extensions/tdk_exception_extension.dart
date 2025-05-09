import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import '../dto/error_response.dart';

/// Extension on [TdkException] to provide additional functionality or
/// helper methods specific to handling TDK exceptions.
extension TdkExceptionExtension on TdkException {
  /// Creates a [TdkException] instance from the given [ErrorResponse].
  ///
  /// - [response] (required) - [ErrorResponse] object containing error
  /// information to be transformed into a [TdkException].
  ///
  /// Returns [TdkException] instance representing the error.
  static TdkException fromErrorResponse(ErrorResponse response) {
    return TdkException(
        message: response.message ?? '', code: response.type.code);
  }
}
