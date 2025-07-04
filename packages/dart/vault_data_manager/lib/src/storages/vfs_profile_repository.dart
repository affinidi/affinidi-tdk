import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:ssi/ssi.dart';

import '../exceptions/tdk_exception_type.dart';
import '../helpers/dio_cancel_token_adapter.dart';
import '../helpers/jwt_helper.dart';
import '../model/account.dart';
import '../services/vault_data_manager_service.dart';
import '../services/vault_data_manager_service_interface.dart';
import '../services/vault_data_manager_shared_access_api_service.dart';
import '../services/vault_data_manager_shared_access_api_service_interface.dart';
import 'vfs_credential_storage.dart';
import 'vfs_file_storage.dart';
import 'vfs_shared_storage.dart';

/// Type definition for creating [ConsumerAuthProvider] instances
typedef ConsumerAuthProviderFactory = ConsumerAuthProvider
    Function(DidSigner didSigner, {Dio? client});

/// Factory function type for creating [VaultDataManagerSharedAccessApiService] instances.
typedef IamApiServiceFactory = VaultDataManagerSharedAccessApiServiceInterface
    Function(ConsumerAuthProvider provider);

/// Type definition for creating regular [VaultDataManagerService] instances
typedef VaultDataManagerServiceFactory
    = Future<VaultDataManagerServiceInterface> Function({
  required KeyPair keyPair,
  required Uint8List encryptedDekek,
});

/// Type definition for creating delegated [VaultDataManagerService] instances
typedef VaultDelegatedDataManagerServiceFactory
    = Future<VaultDataManagerServiceInterface> Function({
  required KeyPair keyPair,
  required Uint8List encryptedDekek,
  required String profileDid,
});

/// A VFS implementation of [ProfileRepository] for managing user profiles.
class VfsProfileRepository implements ProfileRepository, ProfileAccessSharing {
  /// The key ID for the root account.
  static const _rootAccountKeyId = '0';
  static const _nonceSize = 32;

  /// The expiration time in seconds for authentication tokens.
  static int expiration = 300;

  /// The audience URL for authentication tokens.
  static String aud =
      Uri.parse(Environment.fetchEnvironment().elementsVaultApiUrl)
          .resolve('vfs/v1/accounts')
          .toString();

  final String _id;
  late final Wallet _wallet;
  late VaultStore _keyStorage;
  bool _configured = false;

  // Internal services that can be overridden for testing
  final ConsumerAuthProviderFactory _consumerAuthProviderFactory;
  final IamApiServiceFactory _iamApiServiceFactory;
  final VaultDataManagerServiceFactory _vaultDataManagerServiceFactory;
  final VaultDelegatedDataManagerServiceFactory
      _vaultDelegatedDataManagerServiceFactory;

  /// Creates a new instance of [VfsProfileRepository].
  ///
  /// The [id] parameter is used to identify this repository instance.
  /// Creates a new instance of [VfsProfileRepository].
  ///
  /// The [id] parameter is used to identify this repository instance.
  factory VfsProfileRepository(String id) => VfsProfileRepository._(id);

  /// Creates a new instance of [VfsProfileRepository].
  ///
  /// The [id] parameter is used to identify this repository instance.
  ///
  /// For testing purposes, you can provide mock implementations of:
  /// - [cryptographyService]: A cryptographyService used to generate KEKs
  /// - [consumerAuthProviderFactory]: A factory function for creating [ConsumerAuthProvider] instances
  /// - [iamApiServiceFactory]: A factory function for creating [VaultDataManagerSharedAccessApiService] instances
  /// - [vaultDataManagerServiceFactory]: A factory function for creating regular [VaultDataManagerService] instances
  /// - [vaultDelegatedDataManagerServiceFactory]: A factory function for creating delegated [VaultDataManagerService] instances
  @visibleForTesting
  factory VfsProfileRepository.withDependencies(
    String id, {
    CryptographyServiceInterface? cryptographyService,
    ConsumerAuthProviderFactory? consumerAuthProviderFactory,
    IamApiServiceFactory? iamApiServiceFactory,
    VaultDataManagerServiceFactory? vaultDataManagerServiceFactory,
    VaultDelegatedDataManagerServiceFactory?
        vaultDelegatedDataManagerServiceFactory,
  }) =>
      VfsProfileRepository._(
        id,
        cryptographyService: cryptographyService,
        consumerAuthProviderFactory: consumerAuthProviderFactory,
        iamApiServiceFactory: iamApiServiceFactory,
        vaultDataManagerServiceFactory: vaultDataManagerServiceFactory,
        vaultDelegatedDataManagerServiceFactory:
            vaultDelegatedDataManagerServiceFactory,
      );

  VfsProfileRepository._(
    this._id, {
    CryptographyServiceInterface? cryptographyService,
    ConsumerAuthProviderFactory? consumerAuthProviderFactory,
    IamApiServiceFactory? iamApiServiceFactory,
    VaultDataManagerServiceFactory? vaultDataManagerServiceFactory,
    VaultDelegatedDataManagerServiceFactory?
        vaultDelegatedDataManagerServiceFactory,
  })  : _cryptographyService = cryptographyService ?? CryptographyService(),
        _consumerAuthProviderFactory = consumerAuthProviderFactory ??
            ((DidSigner didSigner, {Dio? client}) =>
                ConsumerAuthProvider(signer: didSigner, client: client)),
        _iamApiServiceFactory = iamApiServiceFactory ??
            ((ConsumerAuthProvider provider) =>
                VaultDataManagerSharedAccessApiService(
                    affinidiTdkIamClient: AffinidiTdkIamClient(
                        authTokenHook: provider.fetchConsumerToken))),
        _vaultDataManagerServiceFactory =
            vaultDataManagerServiceFactory ?? VaultDataManagerService.create,
        _vaultDelegatedDataManagerServiceFactory =
            vaultDelegatedDataManagerServiceFactory ??
                VaultDataManagerService.createDelegated;

  @override
  String get id => _id;

  final CryptographyServiceInterface _cryptographyService;

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

    if (configuration.keyStorage == null) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'VFS Profile repository must receive a KeyStorage to maintain account indexes and avoid duplicate accounts',
            code: TdkExceptionType.missingVaultStore.code),
        StackTrace.current,
      );
    }

    _wallet = configuration.wallet;
    _keyStorage = configuration.keyStorage!;

    _configured = true;
  }

  @override
  Future<bool> isConfigured() async {
    return _configured;
  }

  Future<String> _getDidProof({
    required DidSigner didSigner,
  }) async {
    final jwtHelper = JwtHelper(didSigner);
    final jwt = await jwtHelper.getJwt(
      audience: aud,
      expiration: 300,
    );
    return jwt;
  }

  @override
  Future<void> createProfile({
    required String name,
    String? description,
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile repository must be configured using a RepositoryConfiguration',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final nextAccountIndex = (await _keyStorage.readAccountIndex()) + 1;

    final profileDidSigner = await _memoizedDidSigner('$nextAccountIndex');
    final profileDid = profileDidSigner.did;
    final profileDidProof = await _getDidProof(didSigner: profileDidSigner);

    final kekBuffer =
        Uint8List.fromList(_cryptographyService.getRandomBytes(_nonceSize));
    final profileKeyPair =
        await _memoizedKeyPair(accountIndex: '$nextAccountIndex');
    final encryptedDekek = await profileKeyPair.encrypt(kekBuffer);

    final profileDataManager = await _memoizedDataManagerService(
      walletKeyId: nextAccountIndex.toString(),
      encryptedDekek: encryptedDekek,
    );
    await profileDataManager.getProfiles();

    await profileDataManager.createProfile(
      name: name,
      description: description,
      cancelToken: cancelToken,
    );

    final accountMetadata = AccountMetadata(
      dekekInfo: DekekInfo(
        encryptedDekek: base64.encode(encryptedDekek),
      ),
      sharedStorageData: [],
    );

    final accountVaultDataManagerService =
        await _memoizedDataManagerService(walletKeyId: _rootAccountKeyId);
    await accountVaultDataManagerService.createAccount(
      accountIndex: nextAccountIndex,
      accountDid: profileDid,
      didProof: profileDidProof,
      metadata: accountMetadata,
      cancelToken: cancelToken,
    );
    await _keyStorage.writeAccountIndex(nextAccountIndex);
  }

  @override
  Future<List<Profile>> listProfiles({
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile repository must be configured using a RepositoryConfiguration',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final accountVaultDataManagerService =
        await _memoizedDataManagerService(walletKeyId: _rootAccountKeyId);
    final accounts = await accountVaultDataManagerService.getAccounts(
      cancelToken: cancelToken,
    );
    final profiles = await Future.wait(
      accounts.map(
        (account) => _getAccountPerProfile(
          account,
          cancelToken: cancelToken,
        ),
      ),
      eagerError: cancelToken != null,
    );
    return profiles.nonNulls.toList();
  }

  Future<Profile?> _getAccountPerProfile(
    Account account, {
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile repository must be configured using a RepositoryConfiguration',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final accountIndex = account.accountIndex;
    final profileKeyPair =
        await _memoizedKeyPair(accountIndex: '$accountIndex');

    final profileDataManager = await _memoizedDataManagerService(
      walletKeyId: accountIndex.toString(),
      encryptedDekek:
          base64.decode(account.accountMetadata!.dekekInfo.encryptedDekek),
    );

    final vfsProfiles =
        await profileDataManager.getProfiles(cancelToken: cancelToken);
    // Note: accounts should always have no more than one profile associated.
    final profile = vfsProfiles.firstOrNull;

    if (profile == null) {
      return null;
    }
    var sharedStorages = <String, SharedStorage>{};

    if (account.hasSharedStorageData) {
      for (var sharedStorage in account.accountMetadata!.sharedStorageData) {
        sharedStorages[sharedStorage.nodePath] = VfsSharedStorage(
          id: sharedStorage.nodePath,
          sharedProfileId: sharedStorage.nodePath,
          dataManagerService: await _vaultDelegatedDataManagerServiceFactory(
            profileDid: sharedStorage.profileDid,
            keyPair: profileKeyPair,
            encryptedDekek: base64.decode(sharedStorage.encryptedDekek),
          ),
        );
      }
    }
    final did = DidKey.getDid(profileKeyPair.publicKey);
    final vaultProfile = Profile(
      id: profile.id,
      name: profile.name,
      did: did,
      accountIndex: accountIndex,
      profileRepositoryId: id,
      fileStorages: {
        _id: VFSFileStorage(
          id: _id,
          dataManagerService: profileDataManager,
        )
      },
      credentialStorages: {
        _id: VFSCredentialStorage(
          id: _id,
          dataManagerService: profileDataManager,
          profileId: profile.id,
        )
      },
      sharedStorages: sharedStorages,
    );
    return vaultProfile;
  }

  @override
  Future<void> deleteProfile(
    Profile profile, {
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile repository must be configured using a RepositoryConfiguration',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    if (profile.profileRepositoryId != id) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile is associated to a different repository and cannot be deleted',
            code: TdkExceptionType.wrongProfileRepository.code),
        StackTrace.current,
      );
    }

    final profileDataManager = await _memoizedDataManagerService(
      walletKeyId: profile.accountIndex.toString(),
    );
    await profileDataManager.deleteProfile(
      profile.id,
      cancelToken: cancelToken,
    );

    final accountVaultDataManagerService =
        await _memoizedDataManagerService(walletKeyId: _rootAccountKeyId);
    await accountVaultDataManagerService.deleteAccount(
      accountIndex: profile.accountIndex,
      cancelToken: cancelToken,
    );

    _clearMemoizedProfileData(profile.accountIndex);
  }

  @override
  Future<void> updateProfile(
    Profile profile, {
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile repository must be configured using a RepositoryConfiguration',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    if (profile.profileRepositoryId != id) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile is associated to a different repository and cannot be updated',
            code: TdkExceptionType.wrongProfileRepository.code),
        StackTrace.current,
      );
    }

    final profileDataManager = await _memoizedDataManagerService(
      walletKeyId: profile.accountIndex.toString(),
    );
    await profileDataManager.updateProfileMetadata(
      id: profile.id,
      name: profile.name,
      description: profile.description,
      profilePictureURI: profile.profilePictureURI,
      cancelToken: cancelToken,
    );
  }

  final _didSigners = <String, DidSigner>{};
  final _dataManagers = <String, VaultDataManagerServiceInterface>{};
  final _keyPairs = <String, KeyPair>{};

  /// Deletes any memoized data associated to the accountIndex when a profile is deleted
  void _clearMemoizedProfileData(int accountIndex) {
    _didSigners.remove('$accountIndex');
    _dataManagers.remove('$accountIndex');
    _keyPairs.remove('$accountIndex');
  }

  Future<KeyPair> _memoizedKeyPair({required String accountIndex}) async {
    _keyPairs[accountIndex] ??=
        await _getProfileKeyPair(accountIndex: accountIndex);
    return _keyPairs[accountIndex]!;
  }

  /// Memoize dataManagerService based on the walletKeyId
  Future<VaultDataManagerServiceInterface> _memoizedDataManagerService({
    required String walletKeyId,
    Uint8List? encryptedDekek,
  }) async {
    _dataManagers[walletKeyId] ??= await _vaultDataManagerServiceFactory(
      encryptedDekek: encryptedDekek ?? Uint8List(0),
      keyPair: await _memoizedKeyPair(accountIndex: walletKeyId),
    );
    return _dataManagers[walletKeyId]!;
  }

  /// Memoize didSigner based on the walletKeyId
  Future<DidSigner> _memoizedDidSigner(
    String accountIndex,
  ) async {
    _didSigners[accountIndex] ??= await _makeDidSigner(
      await _memoizedKeyPair(accountIndex: accountIndex),
    );
    return _didSigners[accountIndex]!;
  }

  Future<DidSigner> _makeDidSigner(KeyPair keyPair) async {
    final didDocument = DidKey.generateDocument(keyPair.publicKey);
    return DidSigner(
      didDocument: didDocument,
      didKeyId: didDocument.verificationMethod.first.id,
      keyPair: keyPair,
      signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
    );
  }

  @override
  Future<Uint8List> grantProfileAccess({
    required int accountIndex,
    required String granteeDid,
    required Permissions permissions,
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile repository must be configured using a RepositoryConfiguration',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final didSigner = await _memoizedDidSigner('$accountIndex');
    final consumerAuthProvider = _consumerAuthProviderFactory(didSigner);
    final iamApiService = _iamApiServiceFactory(consumerAuthProvider);

    await iamApiService.grantAccessVfs(
      granteeDid: granteeDid,
      permissions: permissions,
      cancelToken:
          cancelToken != null ? DioCancelTokenAdapter.from(cancelToken) : null,
    );

    final accountVaultDataManagerService =
        await _memoizedDataManagerService(walletKeyId: _rootAccountKeyId);
    final accounts = await accountVaultDataManagerService.getAccounts();
    final account = accounts
        .where((account) => account.accountIndex == accountIndex)
        .firstOrNull;

    if (account == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Account with index $accountIndex does not exist',
            code: TdkExceptionType.invalidAccountIndex.code),
        StackTrace.current,
      );
    }

    final profileKeyPair =
        await _memoizedKeyPair(accountIndex: '$accountIndex');
    final kek = await profileKeyPair.decrypt(
      base64.decode(account.accountMetadata!.dekekInfo.encryptedDekek),
    );

    return kek;
  }

  @override
  Future<void> revokeProfileAccess({
    required int accountIndex,
    required String granteeDid,
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile repository must be configured using a RepositoryConfiguration',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final didSigner = await _memoizedDidSigner('$accountIndex');
    final consumerAuthProvider = _consumerAuthProviderFactory(didSigner);
    final iamApiService = _iamApiServiceFactory(consumerAuthProvider);
    await iamApiService.revokeAccessVfs(
      granteeDid: granteeDid,
      cancelToken:
          cancelToken != null ? DioCancelTokenAdapter.from(cancelToken) : null,
    );
  }

  Future<KeyPair> _getProfileKeyPair({required String accountIndex}) async {
    return await _wallet.generateKey(keyId: _getDerivationPath(accountIndex));
  }

  @override
  Future<void> receiveProfileAccess({
    required int accountIndex,
    required String profileId,
    required Uint8List kek,
    required String grantedProfileDid,
    VaultCancelToken? cancelToken,
  }) async {
    if (!_configured) {
      Error.throwWithStackTrace(
        TdkException(
            message:
                'Profile repository must be configured using a RepositoryConfiguration',
            code: TdkExceptionType.profleNotConfigured.code),
        StackTrace.current,
      );
    }

    final profileKeyPair =
        await _memoizedKeyPair(accountIndex: '$accountIndex');
    final sharedStorageData = SharedStorageData(
      encryptedDekek: base64.encode(await profileKeyPair.encrypt(kek)),
      nodePath: profileId,
      profileDid: grantedProfileDid,
    );

    final accountVaultDataManagerService =
        await _memoizedDataManagerService(walletKeyId: _rootAccountKeyId);
    final accountsResponse = await accountVaultDataManagerService.getAccounts();
    final previousAccountData = accountsResponse
        .firstWhere((account) => account.accountIndex == accountIndex);

    final accountMetadata = AccountMetadata(
      sharedStorageData: [
        ...previousAccountData.accountMetadata!.sharedStorageData,
        sharedStorageData
      ],
      dekekInfo: previousAccountData.accountMetadata!.dekekInfo,
    );

    final profileDidSigner = await _memoizedDidSigner(
      accountIndex.toString(),
    );
    final profileDidProof = await _getDidProof(didSigner: profileDidSigner);

    await accountVaultDataManagerService.updateAccount(
      accountIndex: accountIndex,
      accountDid: profileDidSigner.did,
      didProof: profileDidProof,
      metadata: accountMetadata,
      cancelToken: cancelToken,
    );
  }

  String _getDerivationPath(String accountIndex) =>
      "m/44'/60'/$accountIndex'/0'/0'";
}
