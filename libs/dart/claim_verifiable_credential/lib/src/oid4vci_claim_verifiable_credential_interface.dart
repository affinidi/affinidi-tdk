import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:ssi/ssi.dart';

import 'models/oid4vci_claim_context.dart';
import 'models/oid4vci_credential_offer.dart';

/// Represents an interface for a credential claim service.
///
/// The [OID4VCIClaimVerifiableCredentialServiceInterface] defines the contract for services that load a credential offer
/// and claim a verifiable credential. Implementations of this interface are responsible for retrieving
/// and processing credential offers as well as claiming credentials based on the provided context.
///
/// Example:
/// ```dart
/// final service = OID4VCIClaimService();
/// final context = await service.loadCredentialOffer(
///   Uri.parse('https://example.com?credentialOfferUri=https://issuer.example.com/offers/123'),
/// );
/// final credential = await service.claimCredential(
///   claimContext: context,
///   txCode: 'optionalTxCode',
/// );
/// Log.info('YourComponent', 'Credential: $credential');
/// ```
abstract interface class OID4VCIClaimVerifiableCredentialServiceInterface {
  /// Loads a credential offer from the given [uri].
  ///
  /// The [uri] should contain query parameters referencing the credential offer.
  ///
  /// Returns a [OID4VCIClaimContext] that contains both the credential offer and the issuer metadata.
  ///
  /// Example:
  /// ```dart
  /// final context = await service.loadCredentialOffer(
  ///   Uri.parse('https://example.com?credentialOfferUri=https://issuer.example.com/offers/123'),
  /// );
  /// ```
  Future<OID4VCIClaimContext> loadCredentialOffer(
    Uri uri,
  );

  /// Claims a credential using the provided claim context.
  ///
  /// [claimContext] - The context containing the credential offer and issuer metadata.
  /// [txCode] (optional) - A transaction code that might be required for the claim process.
  /// The requirement for this code is determined by the [OID4VCICredentialOffer.isTxCodeRequired] property.
  ///
  /// Returns a [VerifiableCredential] representing the claimed credential.
  ///
  /// This is an asynchronous operation that communicates with a credential issuer server.
  ///
  /// Throws:
  /// - [TdkException] if the claim process fails
  /// - [TdkException] if the server response is invalid
  ///
  /// Example:
  /// ```dart
  /// final credential = await service.claimCredential(
  ///   claimContext: context,
  ///   txCode: 'optionalTxCode',
  /// );
  /// print(credential);
  /// ```
  Future<VerifiableCredential> claimCredential({
    required OID4VCIClaimContext claimContext,
    String? txCode,
  });
}
