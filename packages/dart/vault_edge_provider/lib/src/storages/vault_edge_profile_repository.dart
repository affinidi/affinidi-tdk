import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

import '../exceptions/tdk_exception_type.dart';
import '../interfaces/edge_credentials_repository_interface.dart';
import '../interfaces/edge_file_repository_interface.dart';
import '../interfaces/edge_profile_repository_interface.dart';
import '../models/edge_profile.dart';
import '../services/edge_encryption_service_interface.dart';
import '../storages/vault_edge_credential_storage.dart';
import '../storages/vault_edge_file_storage.dart';

/// A Vault implementation of [ProfileRepository] for locally managing
/// user profiles.
class VaultEdgeProfileRepository implements ProfileRepository {
  /// Creates a new instance of [VaultEdgeProfileRepository].
  ///
  /// The [_id] parameter is used to identify this repository instance.
  /// The [_repository] implementing available operations on profiles.
  /// The [_fileRepository] implementing available operations for files and folders.
  /// The [_credentialRepository] implementing available operations for credentials.
  /// The [_encryptionService] for encrypting credential content.
  VaultEdgeProfileRepository(
    this._id,
    this._repository,
    this._fileRepository,
    this._credentialRepository,
    this._encryptionService,
  );

  final String _id;
  final EdgeProfileRepositoryInterface _repository;
  final EdgeFileRepositoryInterface _fileRepository;
  final EdgeCredentialsRepositoryInterface _credentialRepository;
  final EdgeEncryptionServiceInterface _encryptionService;
  final _keyPairs = <String, KeyPair>{};

  @override
  String get id => _id;

  bool _configured = false;
  late final Wallet _wallet;
  late final VaultStore _vaultStore;

  @override
  Future<void> configure(Object configuration) async {
    if (configuration is! RepositoryConfiguration) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Wrong configuration type',
            code: TdkExceptionType.invalidRepositoryConfigurationType.code),
        StackTrace.current,
      );
    }

    _wallet = configuration.wallet;

    if (configuration.keyStorage == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Key storage is required to '
              'maintain account indexes and avoid duplicate accounts',
          code: TdkExceptionType.missingVaultStore.code,
        ),
        StackTrace.current,
      );
    }

    _vaultStore = configuration.keyStorage!;

    _configured = true;
  }

  /// Returns true if the repository has been configured
  @override
  Future<bool> isConfigured() async {
    return _configured;
  }

  /// Creates a local profile
  ///
  /// The [name] for the profile
  /// The [description] for the profile
  /// The [cancelToken] to cancel the operation in progress.
  @override
  Future<void> createProfile({
    required String name,
    String? description,
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''
Profile repository must be configured using a RepositoryConfiguration''',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final nextAccountIndex = (await _vaultStore.readAccountIndex()) + 1;

    await _repository.createProfile(
      name: name,
      description: description,
      cancelToken: cancelToken,
      accountIndex: nextAccountIndex,
    );

    await _vaultStore.writeAccountIndex(nextAccountIndex);
  }

  /// Deleted an existing local profile
  ///
  /// The [profile] to delete
  /// The [cancelToken] to cancel the operation in progress.
  @override
  Future<void> deleteProfile(
    Profile profile, {
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''
Profile repository must be configured using a RepositoryConfiguration''',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final hasContent = await _repository.hasAnyContent(profile.id);
    if (hasContent) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Cannot delete profile with content',
          code: TdkExceptionType.unableToDeleteProfileWithContent.code,
        ),
        StackTrace.current,
      );
    }

    return await _repository.deleteProfile(
      profileId: profile.id,
      cancelToken: cancelToken,
    );
  }

  /// Returns the list of local profiles
  ///
  /// The [cancelToken] to cancel the operation in progress.
  @override
  Future<List<Profile>> listProfiles({
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''
Profile repository must be configured using a RepositoryConfiguration''',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final items = await _repository.listProfiles(
      cancelToken: cancelToken,
    );

    final profiles = <Profile>[];

    for (final item in items) {
      final profileKeyPair = await _memoizedKeyPair(accountIndex: item.id);
      final did = DidKey.getDid(profileKeyPair.publicKey);

      profiles.add(
        Profile(
          id: item.id.toString(),
          accountIndex: item.accountIndex,
          name: item.name,
          did: did,
          profileRepositoryId: _id,
          fileStorages: {
            _id: VaultEdgeFileStorage(
              repository: _fileRepository,
              id: _id,
              profileId: item.id.toString(),
              encryptionService: _encryptionService,
            ),
          },
          credentialStorages: {
            _id: VaultEdgeCredentialStorage(
              repository: _credentialRepository,
              id: _id,
              profileId: item.id.toString(),
              encryptionService: _encryptionService,
            ),
          },
          sharedStorages: {},
        ),
      );
    }

    return profiles;
  }

  /// Updates an existing local profile
  ///
  /// The [profile] to update
  /// The [cancelToken] to cancel the operation in progress.
  @override
  Future<void> updateProfile(
    Profile profile, {
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''
Profile repository must be configured using a RepositoryConfiguration''',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final edgeProfile = EdgeProfile.from(profile);
    return await _repository.updateProfile(
      profile: edgeProfile,
      cancelToken: cancelToken,
    );
  }

  Future<KeyPair> _memoizedKeyPair({required String accountIndex}) async {
    _keyPairs[accountIndex] ??=
        await _getProfileKeyPair(accountIndex: accountIndex);
    return _keyPairs[accountIndex]!;
  }

  Future<KeyPair> _getProfileKeyPair({required String accountIndex}) async {
    return await _wallet.generateKey(keyId: _getDerivationPath(accountIndex));
  }

  String _getDerivationPath(String accountIndex) =>
      "m/44'/60'/$accountIndex'/0'/0'";
}
