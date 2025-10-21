import '../messages/vdip/credential_meta/credential_meta.dart';
import '../models/constants/credential_format.dart';
import '../models/constants/data_integrity_proof_suite.dart';
import '../models/constants/json_web_signature_algorithm.dart';

/// Sealed class representing the parameters for requesting credentials.
///
/// This ensures type-safe handling of two scenarios:
/// 1. Request with only proposalId
/// 2. Request with proposalId and holderDid
class RequestCredentialsParams {
  /// The ID of the proposal being referenced, provided by Issuer OOB
  final String proposalId;

  /// Optional secret. Allows Issuer to associate Holder with a conventional
  /// contact method (e.g., email or phone).
  final String? challenge;

  /// Optional configuration that specifies which type of VC Holder wants to receive.
  /// If not provided, Issuer can choose any from the list that it shares via discover-features.
  final CredentialFormat? credentialFormat;

  /// Optional configuration that specifies which data integrity proof suite Holder wants.
  /// It can be configured only for VC type that supports it.
  /// If not provided, Issuer can choose any from the list that it shares via discover-features.
  final DataIntegrityProofSuite? dataIntegrityProofSuite;

  /// Optional configuration that specifies which JSON web signature algorithm Holder wants.
  /// It can be configured only for VC type that supports it.
  /// If not provided, Issuer can choose any from the list that it shares via discover-features.
  final JsonWebSignatureAlgorithm? jsonWebSignatureAlgorithm;

  /// Optional comment for the request.
  final String? comment;

  /// Optional object that contains credential-only related meta information for issuance
  /// to pass preferred by Holder configuration of a credential.
  /// Issuer may ignore all of the fields inside, but for some practical use cases
  /// Issuer may want to know some specific details about credential from Holder.
  /// The content of this field is defined by the credential_format and suggests to Issuer
  /// which fields to use in the credential.
  /// For example, for w3c/ldv1, the field type is an array of strings,
  /// where all credential types are mentioned.
  final CredentialMeta? credentialMeta;

  const RequestCredentialsParams({
    required this.proposalId,
    this.challenge,
    this.credentialFormat,
    this.dataIntegrityProofSuite,
    this.jsonWebSignatureAlgorithm,
    this.comment,
    this.credentialMeta,
  });
}
