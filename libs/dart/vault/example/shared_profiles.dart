import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

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

  // Retrieve profiles
  var profilesAlice = await vaultAlice.listProfiles();
  var profilesBob = await vaultBob.listProfiles();
  print(
      '[Demo] ${profilesAlice.isEmpty ? 'No profiles found' : 'Available profiles: ${profilesAlice.length}'}');
  _listProfileNames(profilesAlice, label: 'Initial profile names');
  _listProfileNames(profilesBob, label: 'Initial profile names');

  // Delete all existing profiles sequentially
  print('[Demo] Starting profile cleanup...');

  // Clean up Alice's profiles
  for (var profile in profilesAlice) {
    print('[Demo] Deleting Alice profile: ${profile.name}');
    await _deleteProfile(vaultAlice, profile);
    // Verify deletion
    var remainingProfiles = await vaultAlice.listProfiles();
    if (remainingProfiles.any((p) => p.id == profile.id)) {
      throw Exception('Failed to delete profile: ${profile.name}');
    }
  }

  // Clean up Bob's profiles
  for (var profile in profilesBob) {
    print('[Demo] Deleting Bob profile: ${profile.name}');
    await _deleteProfile(vaultBob, profile);
    // Verify deletion
    var remainingProfiles = await vaultBob.listProfiles();
    if (remainingProfiles.any((p) => p.id == profile.id)) {
      throw Exception('Failed to delete profile: ${profile.name}');
    }
  }

  // Final verification
  profilesAlice = await vaultAlice.listProfiles();
  profilesBob = await vaultBob.listProfiles();
  if (profilesAlice.isNotEmpty || profilesBob.isNotEmpty) {
    throw Exception('Cleanup failed: Found remaining profiles');
  }
  print('[Demo] All profiles successfully deleted');
  _listProfileNames(profilesAlice, label: 'Cleared profiles');
  _listProfileNames(profilesBob, label: 'Cleared profiles');

  print('[Demo] Adding new profiles ...');

  // Create Alice
  accountIndexAlice =
      await _createProfile(vaultAlice, 'Maram', accountIndexAlice);
  final aliceAccountIndex = accountIndexAlice;

  // Create Bob
  accountIndexBob = await _createProfile(vaultBob, 'Naram', accountIndexBob);
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
  await _addFileToProfile(
    aliceProfile,
    aliceProfile.id,
    'alice file',
    onSendProgress: (sent, total) {
      if (total != -1) {
        final progress = (sent / total * 100).toStringAsFixed(2);
        print('[Demo] Upload progress: $progress%');
      }
    },
  );
  final aliceFileId = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id)
      .then((page) => page.items.first.id);

  // Wait a bit as file might be pending
  await Future.delayed(const Duration(seconds: 3), () {});

  // Test download with progress tracking
  print('[Demo] Alice is downloading her own file with progress tracking...');

  // Verify file exists before download
  print('[Demo] Verifying file exists before download...');
  final filePage = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  final fileToDownload =
      filePage.items.firstWhere((item) => item.id == aliceFileId);
  print(
      '[Demo] Found file to download: name=${fileToDownload.name}, id=${fileToDownload.id}');

  // Add a small delay before download
  print('[Demo] Waiting before download attempt...');
  await Future<void>.delayed(const Duration(seconds: 5));

  final aliceFileContent =
      await aliceProfile.defaultFileStorage!.getFileContent(
    fileId: aliceFileId,
    onReceiveProgress: (received, total) {
      if (total != -1) {
        final progress = (received / total * 100).toStringAsFixed(2);
        print('[Demo] Alice download progress: $progress%');
      }
    },
  );
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
  final folderPage = await bobSharedStorageWAliceProfile!.getFolder();
  final fileContent = await bobSharedStorageWAliceProfile.getFileContent(
    fileId: folderPage.items.first.id,
    onReceiveProgress: (received, total) {
      if (total != -1) {
        final progress = (received / total * 100).toStringAsFixed(2);
        print('[Demo] Download progress: $progress%');
      }
    },
  );
  print('[Demo] Bob file content: $fileContent');
  print(
      '[Demo] Bob available shared files from Alice ${folderPage.items.map((item) => item.name).join('\n')}');

  // Alice revokes Bob access to her profile
  await vaultAlice.revokeProfileAccess(
      profileId: aliceProfile.id, granteeDid: bobProfile.did);

  // Bob to Access Alice files after revokal
  try {
    final folderPageAfterRevokal =
        await bobSharedStorageWAliceProfile.getFolder();
    print(
        '[Demo] Bob available shared files from Alice after revokal: ${folderPageAfterRevokal.items.map((item) => item.name).join('\n')}');
  } catch (error) {
    print('[Demo] Correctly Fails to access folder as it is not longer shared');
  }

  // Alice deletes all files
  print('[Demo] Alice is deleting all files...');
  final aliceFilesPage = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  await Future.wait(aliceFilesPage.items.map(
      (item) => aliceProfile.defaultFileStorage!.deleteFile(fileId: item.id)));

  // Clean up profiles
  print('[Demo] Cleaning up profiles...');
  profilesAlice = await vaultAlice.listProfiles();
  profilesBob = await vaultBob.listProfiles();
  await Future.wait(
      profilesAlice.map((profile) => _deleteProfile(vaultAlice, profile)));
  await Future.wait(
      profilesBob.map((profile) => _deleteProfile(vaultBob, profile)));

  // Verify cleanup
  profilesAlice = await vaultAlice.listProfiles();
  profilesBob = await vaultBob.listProfiles();
  print(
      '[Demo] Final profile count - Alice: ${profilesAlice.length}, Bob: ${profilesBob.length}');
}

Future<void> _deleteProfile(Vault vault, Profile profile) async {
  // Delete folders recursively
  await _deleteFolder(vault: vault, profile: profile, folderId: profile.id);

  // Check if profile has credentials...
  final credentials = await profile.defaultCredentialStorage!.listCredentials();
  // and delete them
  await Future.wait(credentials.items.map((item) => profile
      .defaultCredentialStorage!
      .deleteCredential(digitalCredentialId: item.id)));

  await vault.defaultProfileRepository.deleteProfile(profile);
}

Future<void> _deleteFolder({
  required Vault vault,
  required Profile profile,
  required String folderId,
}) async {
  print('Deleting folderId: $folderId');
  String? exclusiveStartItemId;

  try {
    do {
      final page = await profile.defaultFileStorage!.getFolder(
        folderId: folderId,
        limit: 20,
        exclusiveStartItemId: exclusiveStartItemId,
      );

      for (final item in page.items) {
        if (item is Folder) {
          await _deleteFolder(
              vault: vault, profile: profile, folderId: item.id);
        } else if (item is File) {
          await profile.defaultFileStorage!.deleteFile(fileId: item.id);
        }
      }

      exclusiveStartItemId = page.lastEvaluatedItemId;
    } while (exclusiveStartItemId != null);
  } catch (e) {
    print('[Demo] Error getting folder contents for $folderId: $e');
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
  Profile profile,
  String folderId,
  String fileName, {
  VaultProgressCallback? onSendProgress,
}) async {
  final fileContent = Uint8List.fromList([1, 2, 3]);
  try {
    print('[Demo] Creating file: $fileName in folder: $folderId');
    await profile.defaultFileStorage!.createFile(
      fileName: fileName,
      data: fileContent,
      parentFolderId: folderId,
      onSendProgress: onSendProgress,
    );
    print('[Demo] File created successfully');

    // Verify file exists and is ready
    final page =
        await profile.defaultFileStorage?.getFolder(folderId: folderId);
    print(
        '[Demo] Files available on folder $folderId: ${page?.items.length ?? 0}');
    if (page?.items.isNotEmpty ?? false) {
      final item = page!.items.first;
      print(
          '[Demo] File details: name=${item.name}, id=${item.id}, type=${item.runtimeType}');

      // wait to ensure file is fully processed
      print('[Demo] Waiting additional time for file to be fully processed...');
      await Future<void>.delayed(const Duration(seconds: 5));
    }
  } on TdkException catch (error) {
    print('[Demo] Error creating file:');
    print([error.code, error.message, error.originalMessage].join('\n'));
    rethrow;
  } catch (e) {
    print('[Demo] Unexpected error creating file: $e');
    rethrow;
  }
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
