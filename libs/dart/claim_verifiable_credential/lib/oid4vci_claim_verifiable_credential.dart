/// This library allows retrieving credential offers and claiming them
library;

export 'package:affinidi_tdk_common/affinidi_tdk_common.dart' show TdkException;
export 'package:ssi/ssi.dart' show CredentialSchema, VerifiableCredential;

export 'src/models/oid4vci_claim_context.dart';
export 'src/models/oid4vci_credential_offer.dart';
export 'src/models/oid4vci_issuer_metadata.dart';
export 'src/oid4vci_claim_verifiable_credential.dart';
