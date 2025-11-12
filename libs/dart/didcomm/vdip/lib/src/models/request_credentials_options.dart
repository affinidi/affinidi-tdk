import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';

import '../messages/request_issuance/credential_meta.dart';

/// Options configuring a credential issuance request sent via VDIP.
class RequestCredentialsOptions {
  /// ID referencing a credential proposal.
  final String proposalId;

  /// Optional challenge value.
  final String? challenge;

  /// Desired credential format (e.g. W3C, JWT VC, SD-JWT VC).
  final CredentialFormat? credentialFormat;

  /// Data integrity proof suite to request.
  final DataIntegrityProofSuite? dataIntegrityProofSuite;

  /// JWS algorithm for signing (if requesting JWT-based credentials).
  final JsonWebSignatureAlgorithm? jsonWebSignatureAlgorithm;

  /// Optional human-readable comment.
  final String? comment;

  /// Additional metadata to assist issuer in constructing the credential.
  final CredentialMeta? credentialMeta;

  /// Expiration duration for an assertion token when requesting for a specific holder.
  final Duration tokenExpiration;

  /// Creates a new set of request credential options.
  const RequestCredentialsOptions({
    required this.proposalId,
    this.challenge,
    this.credentialFormat,
    this.dataIntegrityProofSuite,
    this.jsonWebSignatureAlgorithm,
    this.comment,
    this.tokenExpiration = const Duration(minutes: 5),
    this.credentialMeta,
  });
}
