import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

/// A Hive-based implementation of [CredentialStorage] for storing and managing
/// verifiable credentials.
class DriftCredentialStorage implements CredentialStorage {
  /// Creates a new instance of [DriftCredentialStorage].
  ///
  /// The [id] parameter is used to identify this storage instance.
  DriftCredentialStorage({required String id, required String profileId})
      : _id = id,
        _profileId = profileId;

  final String _id;
  final String _profileId;

  /// The unique identifier for this credential storage instance.
  @override
  String get id => _id;

  /// Retrieves a list of all stored verifiable credentials.
  @override
  Future<List<DigitalCredential>> listCredentials() {
    throw UnimplementedError();
  }

  /// Saves a verifiable credential to storage.
  @override
  Future<void> saveCredential(
      {required VerifiableCredential verifiableCredential}) {
    throw UnimplementedError();
  }

  /// Deletes a verifiable credential from storage.
  @override
  Future<void> deleteCredential({required String digitalCredentialId}) {
    throw UnimplementedError();
  }

  /// Retrieves a specific verifiable credential by its ID.
  @override
  Future<DigitalCredential> getCredential(
      {required String digitalCredentialId}) {
    throw UnimplementedError();
  }

  @override
  dynamic query(String pexQuery) {
    throw UnimplementedError();
  }
}
