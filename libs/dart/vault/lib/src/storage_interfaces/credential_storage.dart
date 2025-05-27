import 'package:ssi/ssi.dart';

import '../digital_credential.dart';
import '../helpers/cancel_token_interface.dart';

/// Interface for managing verifiable credentials storage.
abstract class CredentialStorage {
  /// Unique identifier for credential storage.
  String get id;

  /// Allows retrieving a list of claimed credentials
  /// DigitalCredential contains an id which is needed for deleting a credential.
  /// Throws for network connectivity
  Future<List<DigitalCredential>> listCredentials({
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
