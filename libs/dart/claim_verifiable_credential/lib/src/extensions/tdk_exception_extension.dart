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

  /// Creates a [TdkException] instance from an error response.
  ///
  /// This method handles both token endpoint errors and credential endpoint errors.
  /// It can process both formats:
  /// 1. Token endpoint errors: { "error": "error_code", "error_description": "description" }
  /// 2. Credential endpoint errors: { "name": "error_name", "message": "message"}
  ///
  /// - [errorData] (required) - Map containing the error data from the response.
  ///
  /// Returns a [TdkException] instance representing the error.
  static TdkException fromError(Map<String, dynamic> errorData) {
    // Handle token endpoint errors (OAuth style)
    if (errorData.containsKey('error')) {
      return fromClaimCredentialAccessTokenErrorResponse(
          ClaimCredentialAccessTokenErrorResponse.fromJson(errorData));
    }

    // Handle credential endpoint errors
    if (errorData['name'] == 'InvalidCredentialRequestError') {
      final details = errorData['details'] as List<dynamic>?;
      if (details != null &&
          details.any((detail) {
            final detailMap = detail as Map<String, dynamic>;
            return detailMap['issue'] == 'Credential offer has been expired.';
          })) {
        return TdkException(
          message: errorData['message'] as String? ??
              'The credential offer has expired',
          code: TdkExceptionType.credentialOfferExpired.code,
        );
      }
    }

    // If no specific error case is matched, create a generic error response
    final errorResponse = ErrorResponse.fromJson(errorData);
    return fromErrorResponse(errorResponse);
  }

  /// Creates a [TdkException] instance from a [ClaimCredentialAccessTokenErrorResponse].
  ///
  /// This method handles errors that occur during the access token request phase.
  /// These errors are typically OAuth-style errors with an error code and description.
  ///
  /// - [errorResponse] (required) - The error response from the access token request.
  ///
  /// Returns a [TdkException] instance representing the error.
  static TdkException fromClaimCredentialAccessTokenErrorResponse(
      ClaimCredentialAccessTokenErrorResponse errorResponse) {
    switch (errorResponse.error) {
      case 'tx_code does not match':
        return TdkException(
          message: errorResponse.error,
          code: TdkExceptionType.unmatchedTxCode.code,
        );
      case 'invalid_proof':
        return TdkException(
          message: errorResponse.errorDescription ??
              'The proof in the Credential Request is invalid',
          code: TdkExceptionType.invalidCredentialProof.code,
        );
      case 'expired_token':
        return TdkException(
          message:
              errorResponse.errorDescription ?? 'The access token has expired',
          code: TdkExceptionType.expiredToken.code,
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
