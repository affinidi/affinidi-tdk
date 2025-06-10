import 'package:ssi/ssi.dart';

import '../digital_credential.dart';
import '../helpers/vault_cancel_token.dart';
import 'page.dart';

/// Interface for managing verifiable credentials storage.
abstract class CredentialStorage {
  /// Unique identifier for credential storage.
  String get id;

  /// Allows retrieving a list of claimed credentials with pagination support
  /// Returns a [Page] containing the credentials and pagination information
  /// Throws for network connectivity
  Future<Page<DigitalCredential>> listCredentials({
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  });

  /// Allows saving verifiable credential data to claimed credentials
  /// Throws for network connectivity
  Future<void> saveCredential({
    required VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  });

  /// Allows deleting a verifiableCredential
  /// Throws if the id does not match any credentials
  /// Throws for network connectivity
  Future<void> deleteCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  });

  /// Retrieves a DigitalCredential credential content from its id
  /// Throws if the id does not match any stored credentials
  /// Throws for network connectivity
  Future<DigitalCredential> getCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  });

  /// Queries credentials using a PEX query.
  ///
  /// [pexQuery] - The PEX query string to filter credentials.
  /// Returns the query results.
  dynamic query(String pexQuery);
}
