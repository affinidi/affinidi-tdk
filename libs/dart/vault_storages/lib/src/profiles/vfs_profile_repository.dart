import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

import '../credential/vfs_credential_storage.dart';
import '../exceptions/tdk_exception_type.dart';
import '../file/vfs_file_storage.dart';
import '../iam_api_service.dart';
import '../model/account.dart';
import '../services/vault_data_manager_service/vfs_vault_data_manager_service.dart';
import '../shared_storage/vfs_shared_storage.dart';
import 'jwt_helper.dart';

/// A VFS implementation of [ProfileRepository] for managing user profiles.
class VfsProfileRepository implements ProfileRepository {
  /// The key ID for the root account.
  static const _rootAccountKeyId = '0';

  /// The expiration time in seconds for authentication tokens.
  static int expiration = 300;

  /// The audience URL for authentication tokens.
  static String aud =
      Uri.parse(Environment.fetchEnvironment().elementsVaultApiUrl)
          .resolve('vfs/v1/accounts')
          .toString();

  final String _id;
  late final DeterministicWallet _wallet;

  late VaultStore _keyStorage;
  bool _configured = false;

  /// Creates a new instance of [VfsProfileRepository].
  ///
  /// The [id] parameter is used to identify this repository instance.
  VfsProfileRepository(this._id);

  @override
  String get id => _id;

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
  }) async {
    final nextAccountIndex = (await _keyStorage.readAccountIndex()) + 1;

    final profileDidSigner = await _memoizedDidSigner('$nextAccountIndex');
    final profileDid = profileDidSigner.did;
    final profileDidProof = await _getDidProof(didSigner: profileDidSigner);

    final kek = CryptographyService().getRandomBytes(32);
    final profileKeyPair =
        await _getProfileKeyPair(accountIndex: '$nextAccountIndex');
    final encryptedKek = await profileKeyPair.encrypt(Uint8List.fromList(kek));

    final profileDataManager = await _memoizedDataManagerService(
      walletKeyId: nextAccountIndex.toString(),
      kek: Uint8List.fromList(kek),
    );
    await profileDataManager.getProfiles();

    await profileDataManager.createProfile(
      name: name,
      description: description,
    );

    final accountMetadata = AccountMetadata(
      dekekInfo: DekekInfo(
        encryptedDekek: base64.encode(encryptedKek),
      ),
      sharedStorageData: [],
    );

    // TODO(MA): anything between create account, getProfiles and createProfile could fail. Cleanup account in that case
    final accountVaultDataManagerService =
        await _memoizedDataManagerService(walletKeyId: _rootAccountKeyId);
    await accountVaultDataManagerService.createAccount(
      accountIndex: nextAccountIndex,
      accountDid: profileDid,
      didProof: profileDidProof,
      metadata: accountMetadata,
    );
    await _keyStorage.writeAccountIndex(nextAccountIndex);
  }

  @override
  Future<Profile> getProfile(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Profile>> listProfiles() async {
    final accountVaultDataManagerService =
        await _memoizedDataManagerService(walletKeyId: _rootAccountKeyId);
    final accounts = await accountVaultDataManagerService.getAccounts();
    final profiles = await Future.wait(accounts.map(_getAccountPerProfile));
    return profiles.nonNulls.toList();
  }

  Future<Profile?> _getAccountPerProfile(Account account) async {
    final accountIndex = account.accountIndex;
    final profileKeyPair =
        await _getProfileKeyPair(accountIndex: '$accountIndex');

    final kek = await profileKeyPair.decrypt(
      base64.decode(account.accountMetadata!.dekekInfo.encryptedDekek),
    );
    final profileDataManager = await _memoizedDataManagerService(
        walletKeyId: accountIndex.toString(), kek: kek);

    final vfsProfiles = await profileDataManager.getProfiles();
    // Note: accounts should always have no more than one profile associated.
    final profile = vfsProfiles.firstOrNull;

    if (profile == null) {
      return null;
    }
    var sharedStorages = <String, SharedStorage>{};

    if (account.hasSharedStorageData) {
      final didSigner = await _memoizedDidSigner('$accountIndex');

      for (var sharedStorage in account.accountMetadata!.sharedStorageData) {
        sharedStorages[sharedStorage.nodePath] = VfsSharedStorage(
          id: sharedStorage.nodePath,
          sharedProfileId: sharedStorage.nodePath,
          dataManagerService: await VfsVaultDataManagerService.createDelegated(
            profileDid: sharedStorage.profileDid,
            encryptionKey: await profileKeyPair
                .decrypt(base64.decode(sharedStorage.encryptedDekek)),
            didSigner: didSigner,
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
  Future<void> deleteProfile(Profile profile) async {
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
    await profileDataManager.deleteProfile(profile.id);

    final accountVaultDataManagerService =
        await _memoizedDataManagerService(walletKeyId: _rootAccountKeyId);
    await accountVaultDataManagerService.deleteAccount(
        accountIndex: profile.accountIndex);

    _clearMemoizedProfileData(profile.accountIndex);
  }

  @override
  Future<void> updateProfile(Profile profile) async {
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
    );
  }

  final _dataManagers = <String, VfsVaultDataManagerService>{};

  /// Deletes any memoized data associated to the accountIndex when a profile is deleted
  void _clearMemoizedProfileData(int accountIndex) {
    _didSigners.remove('$accountIndex');
    _dataManagers.remove('$accountIndex');
  }

  /// Memoize dataManagerService based on the walletKeyId
  Future<VfsVaultDataManagerService> _memoizedDataManagerService({
    required String walletKeyId,
    Uint8List? kek,
  }) async {
    kek ??= Uint8List.fromList(CryptographyService().getRandomBytes(32));
    _dataManagers[walletKeyId] ??= await VfsVaultDataManagerService.create(
      didSigner: await _memoizedDidSigner(walletKeyId),
      encryptionKey: kek,
    );
    return _dataManagers[walletKeyId]!;
  }

  final _didSigners = <String, DidSigner>{};

  /// Memoize didSigner based on the walletKeyId
  Future<DidSigner> _memoizedDidSigner(
    String accountIndex,
  ) async {
    _didSigners[accountIndex] ??= await _makeDidSigner(
      await _getProfileKeyPair(accountIndex: accountIndex),
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
  }) async {
    final didSigner = await _memoizedDidSigner('$accountIndex'); // Profile
    final consumerAuthProvider = ConsumerAuthProvider(signer: didSigner);
    final iamApiService = IamApiService(
      affinidiTdkIamClient: AffinidiTdkIamClient(
        authTokenHook: consumerAuthProvider.fetchConsumerToken,
      ),
    );

    await iamApiService.grantAccessVfs(
      granteeDid: granteeDid,
      permissions: permissions,
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

    // TODO(MA): refactor logic to get account dekek and memoize it.
    final profileKeyPair =
        await _getProfileKeyPair(accountIndex: '$accountIndex');
    final kek = await profileKeyPair.decrypt(
      base64.decode(account.accountMetadata!.dekekInfo.encryptedDekek),
    );

    return kek;
  }

  @override
  Future<void> revokeProfileAccess({
    required int accountIndex,
    required String granteeDid,
  }) async {
    final didSigner = await _memoizedDidSigner('$accountIndex');
    final consumerAuthProvider = ConsumerAuthProvider(signer: didSigner);
    final iamApiService = IamApiService(
      affinidiTdkIamClient: AffinidiTdkIamClient(
        authTokenHook: consumerAuthProvider.fetchConsumerToken,
      ),
    );
    await iamApiService.revokeAccessVfs(
      granteeDid: granteeDid,
    );
  }

  Future<KeyPair> _getProfileKeyPair({required String accountIndex}) async {
    return await _wallet.deriveKey(
        derivationPath: _getDerivationPath(accountIndex), keyId: accountIndex);
  }

  @override
  Future<void> receiveProfileAccess({
    required int accountIndex,
    required String profileId,
    required Uint8List kek,
    required String grantedProfileDid,
  }) async {
    // TODO: ask nucleus to add PATCH to update the only required portion of data
    // TODO: have a GET account by {accountIndex}
    final profileKeyPair =
        await _getProfileKeyPair(accountIndex: '$accountIndex');
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
    );
  }

  String _getDerivationPath(String accountIndex) =>
      "m/44'/60'/$accountIndex'/0'/0'";

  @override
  Object get session => _session;
}
