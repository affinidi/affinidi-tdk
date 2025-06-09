import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';

void main() async {
  print('[Demo] Initializing Vault ...');
  // KeyStorage
  final vaultStore = InMemoryVaultStore();
  var accountIndex = 42;
  await vaultStore.writeAccountIndex(accountIndex);

  // seed storage
  final seed = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
  await vaultStore.setSeed(seed);

  // initialization
  const vfsRepositoryId = 'vfs';
  final profileRepositories = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

  // Create vault from vault store
  final vault = await Vault.fromVaultStore(
    vaultStore,
    profileRepositories: profileRepositories,
    defaultProfileRepositoryId: vfsRepositoryId,
  );

  // Must initialize vault before being able to access any of the repositories
  await vault.ensureInitialized();

  print('[Demo] Retrieving Profiles ...');

  //
  // Retrieve profiles
  //

  var profiles = await vault.listProfiles();
  print(
      '[Demo] ${profiles.isEmpty ? 'No profiles found' : 'Available profiles: ${profiles.length}'}');
  _listProfileNames(profiles, label: 'Initial profile names');

  print('[Demo] Adding new profile ...');

  // Delete all existing profiles
  await Future.wait(profiles.map((profile) => _deleteProfile(vault, profile)));

  profiles = await vault.listProfiles();
  _listProfileNames(profiles, label: 'Cleared profiles');

  //
  // Add a new profile
  //

  try {
    final profileRepository = vault.defaultProfileRepository;
    // alternatively can be accessed via profile repository identifier
    // final ProfileRepository profileRepository = vault.profileRepositories[vfsRepositoryId];
    await profileRepository.createProfile(name: 'Test ${accountIndex + 1}');
  } on TdkException catch (error) {
    print([error.code, '[Demo] ${error.message}', error.originalMessage]
        .join('\n'));
    rethrow;
  }

  _listProfileNames(profiles, label: 'Names after adding a new profiles');

  profiles = await vault.listProfiles();
  print(
      '[Demo] ${profiles.isEmpty ? 'No profiles found' : 'Available profiles: ${profiles.length}'}');
  _listProfileNames(profiles, label: 'Initial profile names');

  //
  // Update an existing profile
  //
  var profile = profiles.lastOrNull;

  if (profile == null) {
    throw UnsupportedError('Profile not available');
  }

  print('[Demo] Amending profile name ...');

  // Change the profile name

  profile.name = _makeNewName(profile);

  // Update data on repository
  // Option 1
  final profileRepository1 = vault.defaultProfileRepository;
  await profileRepository1.updateProfile(profile);
  // // Option 2
  // final profileRepository2 = vault.profileRepositories[vfsRepositoryId]!;
  // await profileRepository2.updateProfile(profile);

  // List profile names to verify change
  profiles = await vault.listProfiles();
  _listProfileNames(profiles, label: 'Names after updating added profile');

  final rootFolderId = profile.id;

  //
  // Create a file
  //
  final fileContent = Uint8List.fromList([1, 2, 3]);
  try {
    await profile.defaultFileStorage!.createFile(
      fileName: 'filename',
      data: fileContent,
      parentFolderId: rootFolderId,
    );
  } on TdkException catch (error) {
    print([error.code, error.message, error.originalMessage].join('\n'));
  }

  await Future.delayed(const Duration(seconds: 2), () {});

  print('[Demo] Listing profile files ...');

  //
  // List folder content for profile
  //

  // Option 1
  final page =
      await profile.defaultFileStorage?.getFolder(folderId: rootFolderId);
  // Option 2
  // final page = await profile.fileStorages['vfs']!.getFolder(folderId: rootFolderId);
  print('[Demo] Files available on profile: ${page?.items.length ?? 0}');

  await Future.delayed(const Duration(seconds: 2), () {});

  final fileToDownload = page?.items.firstOrNull;
  if (fileToDownload != null) {
    final retrievedFileData = await profile.defaultFileStorage
        ?.getFileContent(fileId: fileToDownload.id);
    print('[Demo] File: \n$retrievedFileData\n$fileContent');

    //
    // Delete last added file
    //

    await profile.defaultFileStorage?.deleteFile(fileId: fileToDownload.id);
    final remainingPage =
        await profile.defaultFileStorage?.getFolder(folderId: rootFolderId);
    print('Files: ${remainingPage?.items.length ?? 0}');
  } else {
    print('[Demo] Could not find any files');
  }

  //
  // Delete a profile
  //

  profile = profiles.lastOrNull;
  if (profile == null) {
    throw UnsupportedError('Profile not available');
  }

  print('[Demo] Deleting profile ...');

  // Option 1
  final profileRepository3 = vault.defaultProfileRepository;
  await profileRepository3.deleteProfile(profile);
  // // Option 3
  // final profileRepository4 = vault.profileRepositories[vfsRepositoryId]!;
  // await profileRepository4.deleteProfile(profile);

  profiles = await vault.listProfiles();
  _listProfileNames(profiles, label: 'Names after deleting profile');
}

String _makeNewName(Profile profile) {
  final separator = ' ';
  final nameParts = profile.name.split(separator);
  final originalName = nameParts.firstOrNull ?? '';
  final changeCount = int.tryParse(nameParts.lastOrNull ?? '') ?? 0;
  return '$originalName$separator${changeCount + 1}';
}

void _listProfileNames(
  List<Profile> profiles, {
  required String label,
}) {
  if (profiles.isEmpty) {
    print('[Demo] List of profiles is empty');
    return;
  }

  final names = profiles.map((profile) => profile.name).join(', ');
  print('[Demo] $label: $names');
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
  String? exclusiveStartKey;

  try {
    do {
      final page = await profile.defaultFileStorage!.getFolder(
        folderId: folderId,
        limit: 20,
        exclusiveStartKey: exclusiveStartKey,
      );

      for (final item in page.items) {
        if (item is Folder) {
          await _deleteFolder(
              vault: vault, profile: profile, folderId: item.id);
        } else if (item is File) {
          await profile.defaultFileStorage!.deleteFile(fileId: item.id);
        }
      }

      exclusiveStartKey = page.nextPageKey;
    } while (exclusiveStartKey != null);
  } catch (e) {
    print('[Demo] Error getting folder contents for $folderId: $e');
  }

  // skip root folder
  if (folderId != profile.id) {
    await profile.defaultFileStorage!.deleteFolder(folderId: folderId);
  }
}
