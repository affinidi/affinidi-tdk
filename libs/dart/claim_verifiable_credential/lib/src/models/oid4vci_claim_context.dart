import 'oid4vci_credential_offer.dart';
import 'oid4vci_issuer_metadata.dart';

/// Represents the context required to claim a credential.
///
/// This class combines the issuer metadata and credential offer information
/// required to successfully claim a verifiable credential from an issuer.
///
/// Example:
/// ```dart
/// final context = OID4VCIClaimContext(
///   issuerMetadata: OID4VCIIssuerMetadata(
///     tokenEndpoint: 'https://issuer.example.com/token',
///     credentialEndpoint: 'https://issuer.example.com/credential',
///     returnUris: [],
///   ),
///   credentialOffer: OID4VCICredentialOffer(
///     credentialIdentifier: 'credential123',
///     preAuthCode: 'auth456',
///     isTxCodeRequired: false,
///   ),
/// );
/// ```

class OID4VCIClaimContext {
  /// Provides information about the credential issuer.
  final OID4VCIIssuerMetadata issuerMetadata;

  /// Contains the details of the credential being offered.
  final OID4VCICredentialOffer credentialOffer;

  /// Creates a new [OID4VCIClaimContext] instance.
  ///
  /// [issuerMetadata] - provides information about the credential issuer.
  /// [credentialOffer] - contains the details of the credential being offered.
  const OID4VCIClaimContext({
    required this.issuerMetadata,
    required this.credentialOffer,
  });
}
