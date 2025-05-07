import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

import '../exceptions/tdk_exception_type.dart';
import '../services/vault_data_manager_service/vault_data_manager_service.dart'
    as vfs_storage;

/// A VFS-based implementation of [CredentialStorage] for storing and managing
/// verifiable credentials using the Vault Data Manager Service.
///
/// This implementation uses [vfs_storage.VaultDataManagerService] to persist and retrieve
/// credentials associated with a specific profile.
class VFSCredentialStorage implements CredentialStorage {
  /// Creates a new instance of [VFSCredentialStorage].
  VFSCredentialStorage({
    required String id,
    required vfs_storage.VaultDataManagerService dataManagerService,
    required String profileId,
  })  : _id = id,
        _vaultDataManagerService = dataManagerService,
        _profileId = profileId;

  final String _id;
  @override
  String get id => _id;

  final String _profileId;
  final vfs_storage.VaultDataManagerService _vaultDataManagerService;

  @override
  Future<List<DigitalCredential>> listCredentials() async {
    return await _vaultDataManagerService.getDigitalCredentials(_profileId);
  }

  @override
  Future<void> saveCredential(
      {required VerifiableCredential verifiableCredential}) async {
    await _vaultDataManagerService.addVerifiableCredentialToProfile(
      verifiableCredential: verifiableCredential,
      profileId: _profileId,
    );
  }

  @override
  Future<void> deleteCredential({required String digitalCredentialId}) async {
    await _vaultDataManagerService.deleteClaimedCredential(
      nodeId: digitalCredentialId,
    );
  }

  @override
  Future<DigitalCredential> getCredential(
      {required String digitalCredentialId}) async {
    final digitalCredentials =
        await _vaultDataManagerService.getDigitalCredentials(_profileId);
    final existingCredential = digitalCredentials
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
