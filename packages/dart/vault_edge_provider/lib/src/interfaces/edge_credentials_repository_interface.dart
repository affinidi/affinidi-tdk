import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// Interface to manage CRUD operations on credentials
abstract interface class EdgeCredentialsRepositoryInterface {
  /// Retrieves list of credentials for a profile
  Future<List<DigitalCredential>> listCredentials({
    required String profileId,
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  });

  /// Creates a new credential
  Future<void> saveCredential({
    required String profileId,
    required VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  });

  /// Removes an existing credential
  Future<void> deleteCredential({
    required String credentialId,
    VaultCancelToken? cancelToken,
  });

  /// Retrieves a specific credential by ID
  Future<DigitalCredential?> getCredential({
    required String credentialId,
    VaultCancelToken? cancelToken,
  });
}
