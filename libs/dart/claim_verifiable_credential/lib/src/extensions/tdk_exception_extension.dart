import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import '../dto/claim_verifiable_credential_error_response.dart';
import '../dto/error_response.dart';
import '../exceptions/tdk_exception_type.dart';

/// Extension on [TdkException] to provide additional functionality or
/// utility methods specific to handling TdkException instances.
extension TdkExceptionExtension on TdkException {
  /// Creates a [TdkException] instance from the provided [ErrorResponse].
  ///
  /// - [response] (required) -  [ErrorResponse] object containing details about the error.
  ///
  /// Returns a [TdkException] instance representing the error.
  static TdkException fromErrorResponse(ErrorResponse response) {
    return TdkException(
        message: response.message ?? '', code: response.type.code);
  }

  /// Creates a [TdkException] instance from a [ClaimVerifiableCredentialErrorResponse].
  ///
  /// This method takes an error response of type [ClaimVerifiableCredentialErrorResponse]
  /// and converts it into a [TdkException] that can be used to represent the error
  /// in a more structured and meaningful way.
  ///
  /// - [errorResponse] (required) - [ClaimVerifiableCredentialErrorResponse object containing details about the
  ///   claim verifiable credential error.
  ///
  /// Returns a [TdkException] instance representing the error.
  static TdkException fromClaimVerifiableCredentialErrorResponse(
      ClaimVerifiableCredentialErrorResponse errorResponse) {
    switch (errorResponse.error) {
      case 'tx_code does not match':
        return TdkException(
          message: errorResponse.error,
          code: TdkExceptionType.unmatchedTxCode.code,
        );
      case 'invalid_request':
        if (errorResponse.errorDescription ==
            'Invalid status of pre-authorized statue VC_CLAIMED') {
          return TdkException(
            message: errorResponse.errorDescription!,
            code: TdkExceptionType.credentialOfferClaimed.code,
          );
        }
        return TdkException(
          message: errorResponse.error,
          code: TdkExceptionType.other.code,
        );
      case 'serverError':
        return TdkException(
          message: errorResponse.errorDescription ?? errorResponse.error,
          code: TdkExceptionType.serverError.code,
        );
      default:
        return TdkException(
          message: errorResponse.error,
          code: TdkExceptionType.other.code,
        );
    }
  }
}
