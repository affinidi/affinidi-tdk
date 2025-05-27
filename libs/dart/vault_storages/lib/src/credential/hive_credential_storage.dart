import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:ssi/ssi.dart';

/// A Hive-based implementation of [CredentialStorage] for storing and managing
/// verifiable credentials.
class HiveCredentialStorage implements CredentialStorage {
  /// Creates a new instance of [HiveCredentialStorage].
  ///
  /// The [id] parameter is used to identify this storage instance.
  HiveCredentialStorage({required String id}) : _id = id;

  final String _id;

  /// The unique identifier for this credential storage instance.
  @override
  String get id => _id;

  /// Retrieves a list of all stored verifiable credentials.
  @override
  Future<List<DigitalCredential>> listCredentials({
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  /// Saves a verifiable credential to storage.
  @override
  Future<void> saveCredential({
    required VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  /// Deletes a verifiable credential from storage.
  @override
  Future<void> deleteCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  /// Retrieves a specific verifiable credential by its ID.
  @override
  Future<DigitalCredential> getCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  @override
  dynamic query(String pexQuery) {
    throw UnimplementedError();
  }
}
