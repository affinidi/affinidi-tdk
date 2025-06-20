import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

import '../exceptions/tdk_exception_type.dart';
import '../interfaces/edge_credentials_repository_interface.dart';

/// An Edge based implementation of [CredentialStorage] for storing and managing
/// verifiable credentials.
class VaultEdgeCredentialStorage implements CredentialStorage {
  /// Creates a new instance of [VaultEdgeCredentialStorage].
  VaultEdgeCredentialStorage({
    required EdgeCredentialsRepositoryInterface repository,
    required String id,
    required String profileId,
  })  : _repository = repository,
        _id = id,
        _profileId = profileId;

  final EdgeCredentialsRepositoryInterface _repository;
  final String _id;
  final String _profileId;

  @override
  String get id => _id;

  @override
  Future<void> deleteCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) async {
    // Check if credential exists
    final credential = await _repository.getCredential(
      credentialId: digitalCredentialId,
      cancelToken: cancelToken,
    );

    if (credential == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Credential not found',
          code: TdkExceptionType.credentialNotFound.code,
        ),
        StackTrace.current,
      );
    }

    await _repository.deleteCredential(
      credentialId: digitalCredentialId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<DigitalCredential> getCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) async {
    final credential = await _repository.getCredential(
      credentialId: digitalCredentialId,
      cancelToken: cancelToken,
    );

    if (credential == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Credential not found',
          code: TdkExceptionType.credentialNotFound.code,
        ),
        StackTrace.current,
      );
    }

    return credential;
  }

  @override
  Future<PaginatedList<DigitalCredential>> listCredentials({
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  }) async {
    final credentials = await _repository.listCredentials(
      profileId: _profileId,
      limit: limit,
      exclusiveStartItemId: exclusiveStartItemId,
      cancelToken: cancelToken,
    );

    final lastEvaluatedItemId = credentials.lastOrNull?.id;

    return PaginatedList(
      items: credentials,
      lastEvaluatedItemId: lastEvaluatedItemId,
    );
  }

  @override
  dynamic query(String pexQuery) {
    // TODO: implement query
    throw UnimplementedError();
  }

  @override
  Future<void> saveCredential({
    required VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  }) async {
    await _repository.saveCredential(
      profileId: _profileId,
      verifiableCredential: verifiableCredential,
      cancelToken: cancelToken,
    );
  }
}
