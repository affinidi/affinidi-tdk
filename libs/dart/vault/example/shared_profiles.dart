import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:ssi/src/wallet/key_store/in_memory_key_store.dart';
import 'package:ssi/ssi.dart';

void main() async {
  print('[Demo] Initializing Vault ...');
  // KeyStorage
  var accountIndexAlice = 0;
  final keyStorageAlice = InMemoryVaultStore();
  await keyStorageAlice.writeAccountIndex(accountIndexAlice);

  var accountIndexBob = 0;
  final keyStorageBob = InMemoryVaultStore();
  await keyStorageBob.writeAccountIndex(accountIndexBob);

  // seed storage
  final seedAlice = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
  final seedBob = Uint8List.fromList(List.generate(32, (idx) => idx + 2));

  // initialization
  const vfsRepositoryId = 'vfs';
  final profileRepositoriesAlice = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

  final profileRepositoriesBob = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

  // from wallet
  final keyStoreAlice = InMemoryKeyStore();
  final walletAlice = await Bip32Wallet.fromSeed(seedAlice, keyStoreAlice);
  final vaultAlice = Vault(
    wallet: walletAlice,
    vaultStore: keyStorageAlice,
    profileRepositories: profileRepositoriesAlice,
    defaultProfileRepositoryId: vfsRepositoryId,
  );

  //2nd vault
  final keyStoreBob = InMemoryKeyStore();
  final walletBob = await Bip32Wallet.fromSeed(seedBob, keyStoreBob);
  final vaultBob = Vault(
    wallet: walletBob,
    vaultStore: keyStorageBob,
    profileRepositories: profileRepositoriesBob,
    defaultProfileRepositoryId: vfsRepositoryId,
  );

  // Must initialize vault before being able to access any of the repositories
  await vaultAlice.ensureInitialized();
  await vaultBob.ensureInitialized();

  print('[Demo] Retrieving Profiles ...');

  //
  // Retrieve profiles
  //

  var profilesAlice = await vaultAlice.listProfiles();
  var profilesBob = await vaultBob.listProfiles();
  print(
      '[Demo] ${profilesAlice.isEmpty ? 'No profiles found' : 'Available profiles: ${profilesAlice.length}'}');
  _listProfileNames(profilesAlice, label: 'Initial profile names');
  _listProfileNames(profilesBob, label: 'Initial profile names');

  // Delete all existing profiles
  await Future.wait(
      profilesAlice.map((profile) => _deleteProfile(vaultAlice, profile)));
  await Future.wait(
      profilesBob.map((profile) => _deleteProfile(vaultBob, profile)));

  profilesAlice = await vaultAlice.listProfiles();
  _listProfileNames(profilesAlice, label: 'Cleared profiles');
  profilesBob = await vaultBob.listProfiles();
  _listProfileNames(profilesBob, label: 'Cleared profiles');

  print('[Demo] Adding new profiles ...');

  // Create Alice
  accountIndexAlice =
      await _createProfile(vaultAlice, 'Alice', accountIndexAlice);
  final aliceAccountIndex = accountIndexAlice;

  // Create Bob
  accountIndexBob = await _createProfile(vaultBob, 'Bob', accountIndexBob);
  final bobAccountIndex = accountIndexBob;

  // Get Alice and Bob profiles
  var profilesAfterAccountsAlice = await vaultAlice.listProfiles();
  var profilesAfterAccountsBob = await vaultBob.listProfiles();
  final aliceProfile = profilesAfterAccountsAlice
      .where((profile) => profile.accountIndex == aliceAccountIndex)
      .firstOrNull;
  // TODO(MA): how can it quickly find out the profile associated with the shared Did?
  var bobProfile = profilesAfterAccountsBob
      .where((profile) => profile.accountIndex == bobAccountIndex)
      .firstOrNull;

  if (aliceProfile == null || bobProfile == null) {
    throw UnsupportedError('Both Alice and Bob should have a profile');
  }

  // Alice creates a file
  print('[Demo] Alice is adding a file ...');
  await _addFileToProfile(aliceProfile, aliceProfile.id, 'alice file');
  final aliceFileId = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id)
      .then((files) => files.first.id);

  final aliceFileContent = await aliceProfile.defaultFileStorage!
      .getFileContent(fileId: aliceFileId);
  print('[Demo] Alice file content: $aliceFileContent');
  // Try revoking
  try {
    await vaultAlice.revokeProfileAccess(
        profileId: aliceProfile.id, granteeDid: bobProfile.did);
  } catch (error) {
    print('[Demo] Error while revoking $error...');
  }

  // Alice to share with Bob
  SharedProfileDto? sharedProfile = await vaultAlice.shareProfile(
      profileId: aliceProfile.id,
      toDid: bobProfile.did,
      permissions: Permissions.all);

  // Bob to accept shared profile
  print('[Demo] Bob is accepting a shared profile ...');
  await vaultBob.addSharedProfile(
      profileId: bobProfile.id, sharedProfile: sharedProfile);

  profilesBob = await vaultBob
      .listProfiles(); // Must be called to refresh profile metadata
  var bobProfileWithSharedStorage =
      profilesBob.where((profile) => profile.id == bobProfile.id).firstOrNull;
  final bobSharedStorages = bobProfileWithSharedStorage!.sharedStorages;

  print(
      '[Demo] Bob available shared storages ${bobSharedStorages.map((storage) => storage.id).join(', ')}');

  // Bob to Access Alice files
  final bobSharedStorageWAliceProfile = bobSharedStorages
      .where((storage) => storage.id == aliceProfile.id)
      .firstOrNull;
  final folderContent = await bobSharedStorageWAliceProfile!.getFolder();
  final fileContent = await bobSharedStorageWAliceProfile.getFileContent(
      fileId: folderContent.first.id);
  print('[Demo] Bob file content: ${String.fromCharCodes(fileContent)}');
  print(
      '[Demo] Bob available shared files from Alice ${folderContent.map((item) => item.name).join('\n')}');

  // Alice revokes Bob access to her profile
  // await vaultAlice.revokeProfileAccess(profileId: aliceProfile.id, granteeDid: bobProfile.did);

  // Bob to Access Alice files after revokal
  // final folderContentAfterRevokal = await aliceSharedFileStorage.getFolder();
  // print(
  //     '[Demo] Bob available shared files from Alice after revokal: ${folderContentAfterRevokal.map((item) => item.name).join('\n')}');

  // Alice deletes all files
  print('[Demo] Alice is deleting all files...');
  final aliceFiles = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  await Future.wait(aliceFiles.map(
      (item) => aliceProfile.defaultFileStorage!.deleteFile(fileId: item.id)));

  // final rootFolderId = profile.id;
  //
  // // //
  // // // Create a file
  // // //
  //
  // // try {
  // //   await profile.defaultFileStorage!.createFile(
  // //     fileName: 'filename',
  // //     data: Uint8List.fromList([1, 2, 3]),
  // //     parentFolderId: rootFolderId,
  // //   );
  // // } on TdkException catch (error) {
  // //   print([error.code, error.message, error.originalMessage].join('\n'));
  // // }
  //
  // print('[Demo] Listing profile files ...');
  //
  // //
  // // List folder content for profile
  // //
  //
  // // Option 1
  // final files = await profile.defaultFileStorage?.getFolder(folderId: rootFolderId);
  // // Option 2
  // // final files = await profile.fileStorages['vfs']!.getFolder(folderId: rootFolderId);
  // print('[Demo] Files available on profile: ${files?.length ?? 0}');
  //
  // // //
  // // // Delete last added file
  // // //
  //
  // // final lastAddedFile = files?.lastOrNull;
  // // if (lastAddedFile != null) {
  // //   await profile.defaultFileStorage?.deleteFile(fileId: lastAddedFile.id);
  // // }
  // // final remainingFiles = await profile.defaultFileStorage?.getFolder(folderId: rootFolderId);
  // // print('Files: ${remainingFiles?.length ?? 0}');
  //
  // // Grant profile access to a different DID:
  //
  // // final keyStorageForNewVault = MemoryKeyStorage();
  // // final profileRepositoriesForNewVault = <String, ProfileRepository>{
  // //   vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  // // };
  //
  // final seedNew = hexDecode(
  //   'a1772b144344781f2a55fc4d5e49f3767bb0967205ad08454a09c76d96fd2ccd',
  // );
  //
  // final keyStoreNew = InMemoryKeyStore();
  // final walletNew = await Bip32Wallet.fromSeed(seedNew, keyStoreNew);
  // final keyPairNew = await walletNew.deriveKey(derivationPath: "m/44'/60'/0'/0'/0'");
  // final didNew = DidKey.getDid(keyPairNew.publicKey);
  //
  // print('Granting access to $didNew for the profile ${profile.id}');
  //
  // final profileFromVault = profiles.first;
  //
  // await vault.revokeProfileAccess(profileId: profileFromVault.id, granteeDid: didNew);
  //
  // await vault.shareProfile(profileId: profileFromVault.id, toDid: didNew, permissions: Permissions.all);
  //
  // final vaultStore = InMemoryVaultStore();
  // final newProfileRepositories = <String, ProfileRepository>{
  //   vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  // };
  //
  // final vaultNew = await Vault.fromKeyStorage(vaultStore, profileRepositories: newProfileRepositories);
  // // vaultNew.addSharedProfile(accountIndex: accountIndex, profileId: profileId, dekek: dekek);
  //
  // //
  // // Delete a profile
  // //
  //
  // profile = profiles.lastOrNull;
  // if (profile == null) {
  //   throw UnsupportedError('Profile not available');
  // }
  //
  // print('[Demo] Deleting profile ...');
  //
  // // Option 1
  // final profileRepository3 = vault.defaultProfileRepository;
  // // await profileRepository3.deleteProfile(profile);
  // // // Option 3
  // // final profileRepository4 = vault.profileRepositories[vfsRepositoryId]!;
  // // await profileRepository4.deleteProfile(profile);
  //
  // // profiles = await vault.listProfiles();
  // // _listProfileNames(profiles, label: 'Names after deleting profile');
  //
  // // final vfsFileRepository = VFSFileRepository();
  // // TODO(MA): validate that vfsFileRepository cant be mutated
  // // profile.getFolder("folderId", fileRepository: vfsFileRepository);
  // // profile.addFile("filename", Uint8List.fromList([1, 2, 3]), vfsFileRepository);
  //
  // // final gitHubFileRepository = GithubFileRepository("token");
  // // profile.addFile("filename", Uint8List.fromList([1, 2, 3]), gitHubFileRepository);
  //
  // // // reopen vault
  // // // NOTE: how can the developer know that a vault has profiles in VFS?
  // // final reopenedVault = Vault.fromKeyStorage(keyStorage, [
  // //   VfsProfileRepository("vfs"),
  // // ]);
  // // final reopenedProfiles = await reopenedVault.listProfiles();
  // // final reopenedProfile = reopenedProfiles.first;
  // // // NOTE: how can the developer know that a profile had VFS File and GitHub file repository?
  // // final reopenedVfsFileRepository = VFSFileRepository();
  // // reopenedProfile.getFolder("folderId", fileStorage: reopenedVfsFileRepository);
  // // // NOTE: how can the developer fill the configuration of files storages?
  // // final reopenedGitHubFileRepository = GithubFileRepository("token");
  // // reopenedProfile.addFile("filename", Uint8List.fromList([1, 2, 3]), reopenedGitHubFileRepository);
  //
  // // {
  // //   rootDid: string,
  // //   accountIndex: string,
  // //   did: string,
  // //   configuration: {
  // //     name: string,
  // //     description: string,
  // //     alias: string,
  // //     fileStorages = [{id: string, metadata: json}],
  // //     credentialStorages = [{id: string, metadata: json}],
  // //     publicKeyId = string
  // //   }
  // // }
}

Future<void> _deleteProfile(Vault vault, Profile profile) async {
  // Check if profile has files...
  final files =
      await profile.defaultFileStorage!.getFolder(folderId: profile.id);

  // and delete them
  await Future.wait(files
      .map((item) => profile.defaultFileStorage!.deleteFile(fileId: item.id)));

  await vault.defaultProfileRepository.deleteProfile(profile);
}

Future<int> _createProfile(Vault vault, String name, int accountIndex) async {
  final newAccountIndex = accountIndex + 1;
  final existingProfiles = await vault.listProfiles();
  final existingProfile = existingProfiles
      .where((profile) => profile.accountIndex == newAccountIndex)
      .firstOrNull;

  if (existingProfile == null) {
    print('[Demo] Creating profile for $name ...');
    try {
      final profileRepository = vault.defaultProfileRepository;
      await profileRepository.createProfile(name: '$name $newAccountIndex');
    } on TdkException catch (error) {
      print([error.code, '[Demo] ${error.message}', error.originalMessage]
          .join('\n'));
      rethrow;
    }
  }

  final profiles = await vault.listProfiles();
  _listProfileNames(profiles, label: 'Names after adding $name profile');
  return newAccountIndex;
}

Future<void> _addFileToProfile(
    Profile profile, String folderId, String fileName) async {
  final fileContent = Uint8List.fromList([1, 2, 3]);
  try {
    await profile.defaultFileStorage!.createFile(
      fileName: fileName,
      data: fileContent,
      parentFolderId: folderId,
    );
  } on TdkException catch (error) {
    print([error.code, error.message, error.originalMessage].join('\n'));
  }

  final files = await profile.defaultFileStorage?.getFolder(folderId: folderId);
  print('[Demo] Files available on folder $folderId: ${files?.length ?? 0}');
}

void _listProfileNames(
  List<Profile> profiles, {
  required String label,
}) {
  if (profiles.isEmpty) {
    print('[Demo] List of profiles is empty');
    return;
  }

  final names = profiles
      .map((profile) =>
          '${profile.name} | ${profile.accountIndex} | ${profile.did} ')
      .join(', ');
  print('[Demo] $label: $names');
}
