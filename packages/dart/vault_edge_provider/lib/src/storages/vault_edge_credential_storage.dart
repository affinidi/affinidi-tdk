import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

import '../interfaces/edge_credentials_repository_interface.dart';

/// An Edge based implementation of [CredentialStorage] for storing and managing
/// verifiable credentials.
class VaultEdgeCredentialStorage implements CredentialStorage {
  /// Creates a new instance of [VaultEdgeCredentialStorage].
  VaultEdgeCredentialStorage({
    required EdgeCredentialsRepositoryInterface repository,
    required String id,
  })  : _repository = repository,
        _id = id;

  final EdgeCredentialsRepositoryInterface _repository;

  final String _id;
  @override
  String get id => _id;

  @override
  Future<void> deleteCredential(
      {required String digitalCredentialId, VaultCancelToken? cancelToken}) {
    // TODO: remove the credential entry
    // TODO: remove the item entry
    throw UnimplementedError();
  }

  @override
  Future<DigitalCredential> getCredential(
      {required String digitalCredentialId, VaultCancelToken? cancelToken}) {
    // TODO: retrieve the item entry from database
    throw UnimplementedError();
  }

  @override
  Future<PaginatedList<DigitalCredential>> listCredentials(
      {int? limit,
      String? exclusiveStartItemId,
      VaultCancelToken? cancelToken}) {
    // TODO: retrieve the item entries from database
    throw UnimplementedError();
  }

  @override
  dynamic query(String pexQuery) {
    // TODO: implement query
    throw UnimplementedError();
  }

  @override
  Future<void> saveCredential(
      {required VerifiableCredential verifiableCredential,
      VaultCancelToken? cancelToken}) {
    // TODO: add an item entry to database
    // TODO: save a credential entry
    throw UnimplementedError();
  }
}
