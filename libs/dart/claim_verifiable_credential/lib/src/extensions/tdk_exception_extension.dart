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

  /// Creates a [TdkException] instance from a credential response error.
  ///
  /// This method handles error responses from the credential endpoint, including
  /// expired credential offers, invalid proofs, and expired tokens.
  ///
  /// [errorData] - Map containing the error data from the response.
  ///
  /// Returns a [TdkException] instance representing the error.
  static TdkException fromCredentialResponseError(
      Map<String, dynamic> errorData) {
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
    } else if (errorData['error'] == 'invalid_proof') {
      return TdkException(
        message: (errorData['error_description'] as String?) ??
            'The proof in the Credential Request is invalid',
        code: TdkExceptionType.invalidCredentialProof.code,
      );
    } else if (errorData['error'] == 'expired_token') {
      return TdkException(
        message: (errorData['error_description'] as String?) ??
            'The access token has expired',
        code: TdkExceptionType.expiredToken.code,
      );
    }

    final errorResponse = ErrorResponse.fromJson(errorData);
    return fromErrorResponse(errorResponse);
  }
}
