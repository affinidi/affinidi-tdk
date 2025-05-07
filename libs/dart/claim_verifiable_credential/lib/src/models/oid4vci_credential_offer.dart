import '../../oid4vci_claim_verifiable_credential.dart';
import '../exceptions/tdk_exception_type.dart';

/// Represents a credential offer from an issuer.
///
/// This class contains the necessary information to claim a credential,
/// including the pre-authorization code, credential identifier, and
/// whether a transaction code is required for the claim process.
///
/// Example:
/// ```dart
/// final offer = OID4VCICredentialOffer(
///   credentialIdentifier: 'credential123',
///   preAuthCode: 'auth456',
///   isTxCodeRequired: false,
/// );
/// ```

class OID4VCICredentialOffer {
  /// The unique identifier for the credential being offered.
  final String credentialIdentifier;

  /// The pre-authorized code required to claim the credential.
  final String preAuthCode;

  /// Whether a transaction code is required to claim the credential.
  final bool isTxCodeRequired;

  /// Creates a new [OID4VCICredentialOffer] instance.
  ///
  /// Parameters:
  /// - [preAuthCode] - Pre-authorization code required for claiming the credential
  /// - [credentialIdentifier] - Unique identifier for the credential being offered
  /// - [isTxCodeRequired] - Indicates if a transaction code is required for claiming
  const OID4VCICredentialOffer({
    required this.preAuthCode,
    required this.credentialIdentifier,
    required this.isTxCodeRequired,
  });

  /// Creates a [OID4VCICredentialOffer] instance from json data
  ///
  /// Parameters:
  /// - [json] - Json data
  ///
  /// Throws:
  ///   - [TdkException] if it is unable to parse data.
  ///     - failed_to_load_credential_offer: when it cannot find a credential identifier or a pre-authorization code
  factory OID4VCICredentialOffer.fromJson(Map<String, dynamic> json) {
    final credentialIdentifier =
        (json[_CredentialOfferKey.configurationIds.value] as List<dynamic>?)
            ?.firstOrNull as String?;

    final grant = (json[_CredentialOfferKey.grants.value] as Map<String,
            dynamic>?)?[_CredentialOfferKey.preAuthorizationCodeUrn.value]
        as Map<String, dynamic>?;
    final preAuthCode =
        grant?[_CredentialOfferKey.preAuthorizationCode.value] as String?;
    final transactionCode = grant?[_CredentialOfferKey.transactionCode.value]
        as Map<String, dynamic>?;
    final isTxCodeRequired = transactionCode != null &&
        Map<String, dynamic>.from(transactionCode).isNotEmpty;

    if (credentialIdentifier == null) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Failed to parse credential offer, missing required credential identifier',
            code: TdkExceptionType.failedToLoadCredentialOffer.code),
        StackTrace.current,
      );
    }

    if (preAuthCode == null) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Failed to parse credential offer, missing required pre authorization code',
            code: TdkExceptionType.failedToLoadCredentialOffer.code),
        StackTrace.current,
      );
    }

    return OID4VCICredentialOffer(
      preAuthCode: preAuthCode,
      credentialIdentifier: credentialIdentifier,
      isTxCodeRequired: isTxCodeRequired,
    );
  }
}

enum _CredentialOfferKey {
  grants('grants'),
  configurationIds('credential_configuration_ids'),
  preAuthorizationCodeUrn(
      'urn:ietf:params:oauth:grant-type:pre-authorized_code'),
  preAuthorizationCode('pre-authorized_code'),
  transactionCode('tx_code'),
  ;

  const _CredentialOfferKey(this.value);

  final String value;
}
