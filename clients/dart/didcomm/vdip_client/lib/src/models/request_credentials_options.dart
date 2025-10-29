import 'package:affinidi_tdk_mediator_didcomm_client/mediator_client.dart';

import '../messages/request_issuance/credential_meta.dart';

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
