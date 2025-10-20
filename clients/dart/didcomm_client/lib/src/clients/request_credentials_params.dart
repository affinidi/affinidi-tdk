import 'package:ssi/ssi.dart';

import '../messages/vdip/credential_meta/credential_meta.dart';
import '../models/constants/credential_format.dart';
import '../models/constants/data_integrity_proof_suite.dart';
import '../models/constants/json_web_signature_algorithm.dart';

/// Sealed class representing the parameters for requesting credentials.
///
/// This ensures type-safe handling of two scenarios:
/// 1. Request with only proposalId
/// 2. Request with proposalId and holderDid
sealed class RequestCredentialsParams {
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

  const RequestCredentialsParams._({
    required this.proposalId,
    this.challenge,
    this.credentialFormat,
    this.dataIntegrityProofSuite,
    this.jsonWebSignatureAlgorithm,
    this.comment,
    this.credentialMeta,
  });

  /// Creates a request with only proposalId
  const factory RequestCredentialsParams.byProposalId({
    required String proposalId,
    String? challenge,
    CredentialFormat? credentialFormat,
    DataIntegrityProofSuite? dataIntegrityProofSuite,
    JsonWebSignatureAlgorithm? jsonWebSignatureAlgorithm,
    String? comment,
    CredentialMeta? credentialMeta,
  }) = _RequestWithProposalOnly;

  /// Creates a request with proposalId and holderDid
  const factory RequestCredentialsParams.byProposalIdFor({
    required String proposalId,
    required String holderDid,
    required DidSigner didSigner,
    String? challenge,
    CredentialFormat? credentialFormat,
    DataIntegrityProofSuite? dataIntegrityProofSuite,
    JsonWebSignatureAlgorithm? jsonWebSignatureAlgorithm,
    String? comment,
    CredentialMeta? credentialMeta,
  }) = _RequestWithHolderDid;

  /// Pattern matching helper
  T when<T>({
    required T Function(
            String proposalId,
            String? challenge,
            CredentialFormat? credentialFormat,
            DataIntegrityProofSuite? dataIntegrityProofSuite,
            JsonWebSignatureAlgorithm? jsonWebSignatureAlgorithm,
            String? comment,
            CredentialMeta? credentialMeta)
        byProposalId,
    required T Function(
            String proposalId,
            String holderDid,
            DidSigner didSigner,
            String? challenge,
            CredentialFormat? credentialFormat,
            DataIntegrityProofSuite? dataIntegrityProofSuite,
            JsonWebSignatureAlgorithm? jsonWebSignatureAlgorithm,
            String? comment,
            CredentialMeta? credentialMeta)
        byProposalIdFor,
  }) {
    return switch (this) {
      _RequestWithProposalOnly(
        :final proposalId,
      ) =>
        byProposalId(
            proposalId,
            challenge,
            credentialFormat,
            dataIntegrityProofSuite,
            jsonWebSignatureAlgorithm,
            comment,
            credentialMeta),
      _RequestWithHolderDid(
        :final proposalId,
        :final holderDid,
        :final didSigner
      ) =>
        byProposalIdFor(
            proposalId,
            holderDid,
            didSigner,
            challenge,
            credentialFormat,
            dataIntegrityProofSuite,
            jsonWebSignatureAlgorithm,
            comment,
            credentialMeta),
    };
  }
}

/// Internal class for request with only proposalId
final class _RequestWithProposalOnly extends RequestCredentialsParams {
  const _RequestWithProposalOnly({
    required super.proposalId,
    super.challenge,
    super.credentialFormat,
    super.dataIntegrityProofSuite,
    super.jsonWebSignatureAlgorithm,
    super.comment,
    super.credentialMeta,
  }) : super._();
}

/// Internal class for request with proposalId and holderDid
final class _RequestWithHolderDid extends RequestCredentialsParams {
  final String holderDid;
  final DidSigner didSigner;

  const _RequestWithHolderDid({
    required super.proposalId,
    required this.holderDid,
    required this.didSigner,
    super.challenge,
    super.credentialFormat,
    super.dataIntegrityProofSuite,
    super.jsonWebSignatureAlgorithm,
    super.comment,
    super.credentialMeta,
  }) : super._();
}
