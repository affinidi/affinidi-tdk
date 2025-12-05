import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:ssi/ssi.dart';

import 'dto/shared_item_dto.dart';
import 'dto/shared_profile_dto.dart';
import 'exceptions/tdk_exception_type.dart';
import 'helpers/vault_cancel_token.dart';
import 'helpers/vault_progress_callback.dart';
import 'item_permission.dart';
import 'item_permissions_policy.dart';
import 'permissions.dart';
import 'profile.dart';
import 'storage_interfaces/profile_access_sharing.dart';
import 'storage_interfaces/profile_repository.dart';
import 'storage_interfaces/repository_configuration.dart';
import 'storage_interfaces/vault_store.dart';

/// Manages vault operations and profile repositories.
class Vault {
  late final Wallet _wallet;
  final VaultStore _vaultStore;
  bool _initialized = false;
  Future<void>? _initializing;

  final Map<String, ProfileRepository> _profileRepositories;

  /// Retrieves the map of profile repositories.
  ///
  /// Throws [TdkException] if the vault is not initialized.
  Map<String, ProfileRepository> get profileRepositories {
    if (!_initialized) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Must initialize vault by calling ensureInitialized',
            code: TdkExceptionType.vaultNotInitialized.code),
        StackTrace.current,
      );
    }
    return _profileRepositories;
  }

  String? _defaultProfileRepositoryId;

  /// Retrieves the default profile repository.
  ///
  /// Throws [TdkException] if the vault is not initialized.
  ProfileRepository get defaultProfileRepository {
    if (!_initialized) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Must initialize vault by calling ensureInitialized',
            code: TdkExceptionType.vaultNotInitialized.code),
        StackTrace.current,
      );
    }

    if (_defaultProfileRepositoryId != null) {
      return _profileRepositories[_defaultProfileRepositoryId] ??
          _profileRepositories.entries.first.value;
    }

    return _profileRepositories.entries.first.value;
  }

  /// Creates a new instance of [Vault].
  ///
  /// [wallet] - The deterministic wallet to use.
  /// [vaultStore] - The vault store for persistence.
  /// [profileRepositories] - Map of profile repositories.
  /// [defaultProfileRepositoryId] - Optional ID of the default profile repository.
  ///
  /// Throws [TdkException] if:
  /// - No profile repositories are provided
  /// - The default profile repository ID is invalid
  Vault._({
    required Wallet wallet,
    required VaultStore vaultStore,
    required Map<String, ProfileRepository> profileRepositories,
    String? defaultProfileRepositoryId,
  })  : _wallet = wallet,
        _vaultStore = vaultStore,
        _profileRepositories = Map.unmodifiable(profileRepositories) {
    if (_profileRepositories.entries.isEmpty) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Must provide at least one profile repository',
            code: TdkExceptionType.missingProfileRepository.code),
        StackTrace.current,
      );
    }

    if (defaultProfileRepositoryId != null) {
      if (!profileRepositories.containsKey(defaultProfileRepositoryId)) {
        Error.throwWithStackTrace(
          TdkException(
              message: 'Invalid profile repository identifier',
              code: TdkExceptionType.invalidProfileRepositoryIdentifier.code),
          StackTrace.current,
        );
      }

      this.defaultProfileRepositoryId = defaultProfileRepositoryId;
    }
  }

  /// Sets the default profile repository ID.
  ///
  /// Throws [TdkException] if the repository ID is invalid.
  set defaultProfileRepositoryId(String value) {
    if (!_profileRepositories.containsKey(value)) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Invalid profile repository identifier',
            code: TdkExceptionType.invalidProfileRepositoryIdentifier.code),
        StackTrace.current,
      );
    }

    _defaultProfileRepositoryId = value;
  }

  /// Creates a [Vault] instance from an existing vault store.
  ///
  /// [vaultStore] - The vault store to use.
  /// [profileRepositories] - Map of profile repositories.
  /// [defaultProfileRepositoryId] - Optional ID of the default profile repository.
  static Future<Vault> fromVaultStore(
    VaultStore vaultStore, {
    required Map<String, ProfileRepository> profileRepositories,
    String? defaultProfileRepositoryId,
  }) async {
    final seed = await vaultStore.getSeed();
    if (seed == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'No seed found in vault store',
            code: TdkExceptionType.vaultNotInitialized.code),
        StackTrace.current,
      );
    }

    // Create a new Bip32Wallet instance
    final wallet = Bip32Wallet.fromSeed(seed);

    return Vault._(
      wallet: wallet,
      vaultStore: vaultStore,
      profileRepositories: profileRepositories,
      defaultProfileRepositoryId: defaultProfileRepositoryId,
    );
  }

  /// Ensures the vault is initialized by configuring all profile repositories.
  Future<void> ensureInitialized() async {
    if (_initialized) return;

    if (_initializing != null) {
      return _initializing;
    }

    _initializing = _configureAllProfileRepositories();
    await _initializing;

    _initialized = true;
    _initializing = null;
  }

  Future<void> _configureAllProfileRepositories() async {
    await Future.wait(
        _profileRepositories.values.map(_configureProfileRepositoryIfNeeded));
  }

  Future<void> _configureProfileRepositoryIfNeeded(
      ProfileRepository profileRepository) async {
    if (await profileRepository.isConfigured()) return;

    await profileRepository.configure(
      RepositoryConfiguration(
        wallet: _wallet,
        keyStorage: _vaultStore, // Needed to retrieve and update accountIndex.
      ),
    );
  }

  /// Retrieves a list of all profiles from all repositories.
  ///
  /// Throws [TdkException] if the vault is not initialized.
  ///
  /// [cancelToken] - Optional cancel token for the operation.
  Future<List<Profile>> listProfiles({
    VaultCancelToken? cancelToken,
  }) async {
    if (!_initialized) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Must initialize vault by calling ensureInitialized',
            code: TdkExceptionType.vaultNotInitialized.code),
        StackTrace.current,
      );
    }

    final profiles = await Future.wait(_profileRepositories.values
        .map((repository) => repository.listProfiles()));
    return profiles.expand((profiles) => profiles).toList();
  }

  /// Shares a profile with another user.
  ///
  /// [profileId] - ID of the profile to share.
  /// [toDid] - DID of the user to share with.
  /// [permissions] - Permissions to grant.
  /// [cancelToken] - Optional cancel token for the operation.
  ///
  /// Throws [TdkException] if:
  /// - The profile is not found
  /// - The profile repository is not found
  Future<SharedProfileDto> shareProfile({
    required String profileId,
    required String toDid,
    required Permissions permissions,
    VaultCancelToken? cancelToken,
  }) async {
    final profile = await _getProfileById(profileId);

    if (profile == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Can not find profile with id $profileId',
            code: TdkExceptionType.invalidProfileIdentifier.code),
        StackTrace.current,
      );
    }

    final profileRepository = _profileRepositories[profile.profileRepositoryId];

    if (profileRepository == null) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Can not find profile repository ${profile.profileRepositoryId}',
            code: TdkExceptionType.invalidProfileRepositoryIdentifier.code),
        StackTrace.current,
      );
    }

    if (profileRepository is! ProfileAccessSharing) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Sharing profiles is not supported on ${profile.profileRepositoryId}',
            code: TdkExceptionType.unsupportedProfileAccessSharing.code),
        StackTrace.current,
      );
    }

    final profileSharedAccessRepository =
        profileRepository as ProfileAccessSharing;
    final kek = await profileSharedAccessRepository.grantProfileAccess(
      accountIndex: profile.accountIndex,
      granteeDid: toDid,
      permissions: permissions,
    );

    return SharedProfileDto(
      kek: kek,
      profileId: profileId,
      profileDID: profile.did,
    );
  }

  /// [profileId] - Identifier of the profile to which add a shared storage
  /// [sharedProfile] - Shared profile info including kek and id
  /// [cancelToken] - Optional cancel token for the operation.
  Future<void> addSharedProfile({
    required String profileId,
    required SharedProfileDto sharedProfile,
    VaultCancelToken? cancelToken,
  }) async {
    final profiles = await listProfiles();
    final profile =
        profiles.where((profile) => profile.id == profileId).firstOrNull;

    if (profile == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Can not find profile $profileId',
            code: TdkExceptionType.invalidProfileIdentifier.code),
        StackTrace.current,
      );
    }

    final profileRepository = _profileRepositories[profile.profileRepositoryId];

    if (profileRepository == null) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Can not find profile repository ${profile.profileRepositoryId}',
            code: TdkExceptionType.invalidProfileRepositoryIdentifier.code),
        StackTrace.current,
      );
    }

    if (profileRepository is! ProfileAccessSharing) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Sharing profiles is not supported on ${profile.profileRepositoryId}',
            code: TdkExceptionType.unsupportedProfileAccessSharing.code),
        StackTrace.current,
      );
    }

    final profileSharedAccessRepository =
        profileRepository as ProfileAccessSharing;

    await profileSharedAccessRepository.receiveProfileAccess(
      accountIndex: profile.accountIndex,
      profileId: sharedProfile.profileId,
      kek: sharedProfile.kek,
      grantedProfileDid: sharedProfile.profileDID,
    );
  }

  /// Accepts a shared item (file/folder) that was granted by another user.
  ///
  /// [profileId] - Identifier of the profile to which add the shared item
  /// [sharedItems] - Shared item info including KEK, owner profile id, and item ids.
  /// [cancelToken] - Optional cancel token for the operation.
  Future<void> acceptSharedItems({
    required String profileId,
    required SharedItemsDto sharedItems,
    VaultCancelToken? cancelToken,
  }) async {
    final profiles = await listProfiles();
    final profile =
        profiles.where((profile) => profile.id == profileId).firstOrNull;

    if (profile == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Can not find profile $profileId',
            code: TdkExceptionType.invalidProfileIdentifier.code),
        StackTrace.current,
      );
    }

    final profileRepository = _profileRepositories[profile.profileRepositoryId];

    if (profileRepository == null) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Can not find profile repository ${profile.profileRepositoryId}',
            code: TdkExceptionType.invalidProfileRepositoryIdentifier.code),
        StackTrace.current,
      );
    }

    if (profileRepository is! ProfileAccessSharing) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Sharing nodes is not supported on ${profile.profileRepositoryId}',
            code: TdkExceptionType.unsupportedProfileAccessSharing.code),
        StackTrace.current,
      );
    }

    final profileSharedAccessRepository =
        profileRepository as ProfileAccessSharing;

    await profileSharedAccessRepository.receiveItemAccess(
      accountIndex: profile.accountIndex,
      ownerProfileId: sharedItems.ownerProfileId,
      kek: sharedItems.kek,
      ownerProfileDid: sharedItems.ownerProfileDID,
      cancelToken: cancelToken,
    );
  }

  /// Revokes access to a profile for a specific user.
  ///
  /// [profileId] - ID of the profile to revoke access from.
  /// [granteeDid] - DID of the user to revoke access from.
  /// [cancelToken] - Optional cancel token for the operation.
  ///
  /// Throws [TdkException] if:
  /// - The profile is not found
  /// - The profile repository is not found
  Future<void> revokeProfileAccess({
    required String profileId,
    required String granteeDid,
    VaultCancelToken? cancelToken,
  }) async {
    final profile = await _getProfileById(profileId);

    if (profile == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Can not find profile $profileId',
            code: TdkExceptionType.invalidProfileIdentifier.code),
        StackTrace.current,
      );
    }

    final profileRepository = _profileRepositories[profile.profileRepositoryId];

    if (profileRepository == null) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Can not find profile repository ${profile.profileRepositoryId}',
            code: TdkExceptionType.invalidProfileRepositoryIdentifier.code),
        StackTrace.current,
      );
    }

    if (profileRepository is! ProfileAccessSharing) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Sharing profiles is not supported on ${profile.profileRepositoryId}',
            code: TdkExceptionType.unsupportedProfileAccessSharing.code),
        StackTrace.current,
      );
    }

    final profileSharedAccessRepository =
        profileRepository as ProfileAccessSharing;

    await profileSharedAccessRepository.revokeProfileAccess(
      accountIndex: profile.accountIndex,
      granteeDid: granteeDid,
    );
  }

  /// Gets access permissions for items for a user.
  ///
  /// [profileId] - ID of the profile that owns the items.
  /// [granteeDid] - DID of the user to get permissions for.
  /// [cancelToken] - Optional cancel token for the operation.
  ///
  /// Returns a list of [ItemPermission] objects representing the access permissions.
  ///
  /// Throws [TdkException] if:
  /// - The profile is not found
  /// - The profile repository is not found
  Future<List<ItemPermission>> getItemAccess({
    required String profileId,
    required String granteeDid,
    VaultCancelToken? cancelToken,
  }) async {
    final profile = await _getProfileById(profileId);

    if (profile == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Can not find profile with id $profileId',
          code: TdkExceptionType.invalidProfileIdentifier.code,
        ),
        StackTrace.current,
      );
    }

    final profileRepository = _profileRepositories[profile.profileRepositoryId];

    if (profileRepository == null) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'Can not find profile repository ${profile.profileRepositoryId}',
          code: TdkExceptionType.invalidProfileRepositoryIdentifier.code,
        ),
        StackTrace.current,
      );
    }

    if (profileRepository is! ProfileAccessSharing) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'Getting item access is not supported on ${profile.profileRepositoryId}',
          code: TdkExceptionType.unsupportedProfileAccessSharing.code,
        ),
        StackTrace.current,
      );
    }

    final profileSharedAccessRepository =
        profileRepository as ProfileAccessSharing;

    final result = await profileSharedAccessRepository.getItemAccess(
      accountIndex: profile.accountIndex,
      granteeDid: granteeDid,
      cancelToken: cancelToken,
    );

    final permissionsList = result['permissions'] as List?;
    if (permissionsList == null) {
      return [];
    }

    return permissionsList
        .map((perm) => ItemPermission.fromMap(perm as Map<String, dynamic>))
        .toList();
  }

  Future<Profile?> _getProfileById(String id) async {
    final profiles = await listProfiles();
    return profiles.where((profile) => profile.id == id).firstOrNull;
  }

  /// Reads a shared item
  ///
  /// [ownerProfileId] - ID of the profile that owns the item.
  /// [itemId] - ID of the item to read.
  /// [cancelToken] - Optional cancel token for the operation.
  /// [onReceiveProgress] - Optional progress callback for file downloads.
  ///
  /// Returns the file content as [Uint8List].
  ///
  /// Throws [TdkException] if:
  /// - The shared storage for the owner profile is not found
  /// - The item is not found or access is denied
  Future<Uint8List> readSharedItem({
    required String ownerProfileId,
    required String itemId,
    VaultCancelToken? cancelToken,
    VaultProgressCallback? onReceiveProgress,
  }) async {
    final currentUserProfiles = await listProfiles();
    if (currentUserProfiles.isEmpty) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'No profiles found for current user',
          code: TdkExceptionType.invalidProfileIdentifier.code,
        ),
        StackTrace.current,
      );
    }

    final currentUserProfile = currentUserProfiles.first;

    final sharedStorage = currentUserProfile.sharedStorages
        .where((storage) => storage.id == ownerProfileId)
        .firstOrNull;

    if (sharedStorage == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Cannot read shared item',
          code: TdkExceptionType.invalidProfileIdentifier.code,
        ),
        StackTrace.current,
      );
    }
    return await sharedStorage.getFileContent(
      fileId: itemId,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  /// Gets an [ItemPermissionsPolicy] for editing of permissions.
  ///
  /// [profileId] - ID of the profile that owns the items.
  /// [granteeDid] - DID of the user to get permissions for.
  /// [cancelToken] - Optional cancel token for the operation.
  ///
  /// Returns an [ItemPermissionsPolicy] with current permissions loaded.
  Future<ItemPermissionsPolicy> getItemPermissionsPolicy({
    required String profileId,
    required String granteeDid,
    VaultCancelToken? cancelToken,
  }) async {
    final profile = await _getProfileById(profileId);

    if (profile == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Can not find profile with id $profileId',
          code: TdkExceptionType.invalidProfileIdentifier.code,
        ),
        StackTrace.current,
      );
    }

    final profileRepository = _profileRepositories[profile.profileRepositoryId];

    if (profileRepository == null) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'Can not find profile repository ${profile.profileRepositoryId}',
          code: TdkExceptionType.invalidProfileRepositoryIdentifier.code,
        ),
        StackTrace.current,
      );
    }

    if (profileRepository is! ProfileAccessSharing) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'Getting item permissions editor is not supported on ${profile.profileRepositoryId}',
          code: TdkExceptionType.unsupportedProfileAccessSharing.code,
        ),
        StackTrace.current,
      );
    }

    final profileSharedAccessRepository =
        profileRepository as ProfileAccessSharing;

    final access = await profileSharedAccessRepository.getItemAccess(
      accountIndex: profile.accountIndex,
      granteeDid: granteeDid,
      cancelToken: cancelToken,
    );

    return ItemPermissionsPolicy.fromAccessMap(access);
  }

  /// Sets the item access permissions policy for a grantee.
  ///
  /// [profileId] - ID of the profile that owns the items.
  /// [granteeDid] - DID of the user to set permissions for.
  /// [policy] - The complete permissions policy to set.
  /// [cancelToken] - Optional cancel token for the operation.
  ///
  /// Returns the KEK for accessing the shared items.
  ///
  /// Throws [TdkException] if:
  /// - The profile is not found
  /// - The profile repository is not found
  Future<Uint8List> setItemAccess({
    required String profileId,
    required String granteeDid,
    required ItemPermissionsPolicy policy,
    VaultCancelToken? cancelToken,
  }) async {
    final profile = await _getProfileById(profileId);

    if (profile == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Can not find profile with id $profileId',
          code: TdkExceptionType.invalidProfileIdentifier.code,
        ),
        StackTrace.current,
      );
    }

    final profileRepository = _profileRepositories[profile.profileRepositoryId];

    if (profileRepository == null) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'Can not find profile repository ${profile.profileRepositoryId}',
          code: TdkExceptionType.invalidProfileRepositoryIdentifier.code,
        ),
        StackTrace.current,
      );
    }

    if (profileRepository is! ProfileAccessSharing) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'Setting item permissions is not supported on ${profile.profileRepositoryId}',
          code: TdkExceptionType.unsupportedProfileAccessSharing.code,
        ),
        StackTrace.current,
      );
    }

    final profileSharedAccessRepository =
        profileRepository as ProfileAccessSharing;

    final permissionGroups = policy.buildPermissionGroups();

    return await profileSharedAccessRepository.grantItemAccessMultiple(
      accountIndex: profile.accountIndex,
      granteeDid: granteeDid,
      permissionGroups: permissionGroups,
      cancelToken: cancelToken,
    );
  }
}
