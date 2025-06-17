import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

import '../exceptions/tdk_exception_type.dart';
import '../services/vault_data_manager_service_interface.dart';

/// A VFS-based implementation of [CredentialStorage] for storing and managing
/// verifiable credentials using the Vault Data Manager Service.
///
/// This implementation uses [VaultDataManagerServiceInterface] to persist and retrieve
/// credentials associated with a specific profile.
class VFSCredentialStorage implements CredentialStorage {
  /// Creates a new instance of [VFSCredentialStorage].
  VFSCredentialStorage({
    required String id,
    required VaultDataManagerServiceInterface dataManagerService,
    required String profileId,
  })  : _id = id,
        _vaultDataManagerService = dataManagerService,
        _profileId = profileId;

  final String _id;
  @override
  String get id => _id;

  final String _profileId;
  final VaultDataManagerServiceInterface _vaultDataManagerService;

  @override
  Future<PaginatedList<DigitalCredential>> listCredentials({
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  }) async {
    return await _vaultDataManagerService.getDigitalCredentials(
      _profileId,
      limit: limit,
      exclusiveStartItemId: exclusiveStartItemId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<void> saveCredential({
    required VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerService.addVerifiableCredentialToProfile(
      verifiableCredential: verifiableCredential,
      profileId: _profileId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<void> deleteCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerService.deleteClaimedCredential(
      nodeId: digitalCredentialId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<DigitalCredential> getCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) async {
    final page = await _vaultDataManagerService.getDigitalCredentials(
      _profileId,
      cancelToken: cancelToken,
    );
    final existingCredential = page.items
        .where(
          (digitalCredential) => digitalCredential.id == digitalCredentialId,
        )
        .firstOrNull;

    if (existingCredential == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Credential not found',
          code: TdkExceptionType.credentialNotFound.code,
        ),
        StackTrace.current,
      );
    }

    return existingCredential;
  }

  @override
  Future<dynamic> query(String pexQuery) async {
    Error.throwWithStackTrace(
      TdkException(
        message: 'Query functionality is not yet implemented',
        code: TdkExceptionType.notImplemented.code,
      ),
      StackTrace.current,
    );
  }
}
