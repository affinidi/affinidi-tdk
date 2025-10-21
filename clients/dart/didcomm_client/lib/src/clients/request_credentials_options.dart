import '../messages/vdip/credential_meta/credential_meta.dart';
import '../models/constants/credential_format.dart';
import '../models/constants/data_integrity_proof_suite.dart';
import '../models/constants/json_web_signature_algorithm.dart';

class RequestCredentialsOptions {
  final String proposalId;

  final String? challenge;

  final CredentialFormat? credentialFormat;

  final DataIntegrityProofSuite? dataIntegrityProofSuite;

  final JsonWebSignatureAlgorithm? jsonWebSignatureAlgorithm;

  final String? comment;

  final CredentialMeta? credentialMeta;

  final Duration tokenExpiration;

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
