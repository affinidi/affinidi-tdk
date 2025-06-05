import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';

void main() async {
  print('[Demo] Initializing Vault ...');
  // KeyStorage
  final keyStorageAlice = InMemoryVaultStore();
  var accountIndexAlice = 0;
  await keyStorageAlice.writeAccountIndex(accountIndexAlice);

  final keyStorageBob = InMemoryVaultStore();
  var accountIndexBob = 0;
  await keyStorageBob.writeAccountIndex(accountIndexBob);

  // seed storage
  final seedAlice = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
  final seedBob = Uint8List.fromList(List.generate(32, (idx) => idx + 2));
  await keyStorageAlice.setSeed(seedAlice);
  await keyStorageBob.setSeed(seedBob);

  // initialization
  const vfsRepositoryId = 'vfs';
  final profileRepositoriesAlice = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

  final profileRepositoriesBob = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

  // Create vaults from vault stores
  final vaultAlice = await Vault.fromVaultStore(
    keyStorageAlice,
    profileRepositories: profileRepositoriesAlice,
    defaultProfileRepositoryId: vfsRepositoryId,
  );

  final vaultBob = await Vault.fromVaultStore(
    keyStorageBob,
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

  // Wait a bit as file might be pending
  await Future.delayed(const Duration(seconds: 3), () {});

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
  print('[Demo] Bob file content: $fileContent');
  print(
      '[Demo] Bob available shared files from Alice ${folderContent.map((item) => item.name).join('\n')}');

  // Alice revokes Bob access to her profile
  await vaultAlice.revokeProfileAccess(
      profileId: aliceProfile.id, granteeDid: bobProfile.did);

  // Bob to Access Alice files after revokal
  try {
    final folderContentAfterRevokal =
        await bobSharedStorageWAliceProfile.getFolder();
    print(
        '[Demo] Bob available shared files from Alice after revokal: ${folderContentAfterRevokal.map((item) => item.name).join('\n')}');
  } catch (error) {
    print('[Demo] Correctly Fails to access folder as it is not longer shared');
  }

  // Alice deletes all files
  print('[Demo] Alice is deleting all files...');
  final aliceFiles = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  await Future.wait(aliceFiles.map(
      (item) => aliceProfile.defaultFileStorage!.deleteFile(fileId: item.id)));
}

Future<void> _deleteProfile(Vault vault, Profile profile) async {
  // Delete folders recursively
  await _deleteFolder(vault: vault, profile: profile, folderId: profile.id);

  // Check if profile has credentials...
  final credentials = await profile.defaultCredentialStorage!.listCredentials();
  // and delete them
  await Future.wait(credentials.map((item) => profile.defaultCredentialStorage!
      .deleteCredential(digitalCredentialId: item.id)));

  await vault.defaultProfileRepository.deleteProfile(profile);
}

Future<void> _deleteFolder({
  required Vault vault,
  required Profile profile,
  required String folderId,
}) async {
  print('Deleting folderId: $folderId');
  final items = await profile.defaultFileStorage!.getFolder(folderId: folderId);
  for (final item in items) {
    if (item is Folder) {
      await _deleteFolder(vault: vault, profile: profile, folderId: item.id);
    } else if (item is File) {
      await profile.defaultFileStorage!.deleteFile(fileId: item.id);
    }
  }

  // skip root folder
  if (folderId != profile.id) {
    await profile.defaultFileStorage!.deleteFolder(folderId: folderId);
  }
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
