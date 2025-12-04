import 'dart:math';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

void main() async {
  print('[Demo] Initializing Vault ...');
  final keyStorageAlice = InMemoryVaultStore();
  var accountIndexAlice = 0;
  await keyStorageAlice.setAccountIndex(accountIndexAlice);

  final keyStorageBob = InMemoryVaultStore();
  var accountIndexBob = 0;
  await keyStorageBob.setAccountIndex(accountIndexBob);

  final seedAlice = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
  final seedBob = Uint8List.fromList(List.generate(32, (idx) => idx + 2));
  await keyStorageAlice.setSeed(seedAlice);
  await keyStorageBob.setSeed(seedBob);

  const vfsRepositoryId = 'vfs';
  final profileRepositoriesAlice = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

  final profileRepositoriesBob = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

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

  await vaultAlice.ensureInitialized();
  await vaultBob.ensureInitialized();

  print('[Demo] Retrieving Profiles ...');
  var profilesAlice = await vaultAlice.listProfiles();
  var profilesBob = await vaultBob.listProfiles();
  print(
      '[Demo] ${profilesAlice.isEmpty ? 'No profiles found' : 'Available profiles: ${profilesAlice.length}'}');
  _listProfileNames(profilesAlice, label: 'Initial profile names');
  _listProfileNames(profilesBob, label: 'Initial profile names');

  final hadProfiles = profilesAlice.isNotEmpty || profilesBob.isNotEmpty;
  if (hadProfiles) {
    print('[Demo] Starting profile cleanup...');
    for (var profile in profilesAlice) {
      print('[Demo] Deleting Alice profile: ${profile.name}');
      await _deleteProfile(vaultAlice, profile);
    }
    for (var profile in profilesBob) {
      print('[Demo] Deleting Bob profile: ${profile.name}');
      await _deleteProfile(vaultBob, profile);
    }

    profilesAlice = await vaultAlice.listProfiles();
    profilesBob = await vaultBob.listProfiles();
    if (profilesAlice.isNotEmpty || profilesBob.isNotEmpty) {
      throw Exception('Cleanup failed: Found remaining profiles');
    }
    print('[Demo] All profiles successfully deleted');
  }

  print('[Demo] Adding new profiles ...');
  accountIndexAlice =
      await _createProfile(vaultAlice, 'Alice', accountIndexAlice);
  final aliceAccountIndex = accountIndexAlice;

  accountIndexBob = await _createProfile(vaultBob, 'Bob', accountIndexBob);
  final bobAccountIndex = accountIndexBob;

  var profilesAfterAccountsAlice = await vaultAlice.listProfiles();
  var profilesAfterAccountsBob = await vaultBob.listProfiles();
  final aliceProfile = profilesAfterAccountsAlice
      .where((profile) => profile.accountIndex == aliceAccountIndex)
      .firstOrNull;
  final bobProfile = profilesAfterAccountsBob
      .where((profile) => profile.accountIndex == bobAccountIndex)
      .firstOrNull;

  if (aliceProfile == null || bobProfile == null) {
    throw UnsupportedError('Both Alice and Bob should have a profile');
  }

  print('[Demo] Alice is adding a file ...');
  final timestamp = DateTime.now().millisecondsSinceEpoch;
  final random = Random().nextInt(1000000);
  final fileName1 = 'alice_file1_$timestamp-$random.txt';
  await _addFileToProfile(
    aliceProfile,
    aliceProfile.id,
    fileName1,
  );

  final filesPage1 = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  final file1 = filesPage1.items.firstWhere((item) => item.name == fileName1);

  print('[Demo] Alice is sharing $fileName1 with Bob with READ access ...');

  // Single permission type: [Permissions.read] creates one permission group with read rights
  final sharedItem1 = await vaultAlice.shareItem(
    profileId: aliceProfile.id,
    itemId: file1.id,
    toDid: bobProfile.did,
    permissions: [Permissions.read],
  );

  print('[Demo] Verifying Bob\'s permissions after $fileName1 is shared ...');

  final bobPermissions = await vaultAlice.getItemAccess(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
  );

  print('[Demo] Bob has ${bobPermissions.length} permission group(s)');
  for (var permission in bobPermissions) {
    print('[Demo] Item IDs: ${permission.itemIds}');
    print('[Demo] Rights: ${permission.rights}');
  }

  print('[Demo] Bob is accepting the shared item ...');
  await vaultBob.addSharedItem(
    profileId: bobProfile.id,
    sharedItem: sharedItem1,
  );

  profilesBob = await vaultBob.listProfiles();

  print('[Demo] Bob is reading the shared file1 using readSharedItem ...');
  try {
    final bobFile1Content = await vaultBob.readSharedItem(
      ownerProfileId: aliceProfile.id,
      itemId: file1.id,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(2);
          print('[Demo] Download progress: $progress%');
        }
      },
    );
    print('[Demo] Bob successfully read file1 content: $bobFile1Content');
  } catch (e) {
    print('[Demo] Bob failed to read file1 content: $e');
  }

  print('[Demo] Alice is adding another file ...');
  final fileName2 = 'alice_file2_$timestamp-$random.txt';
  await _addFileToProfile(
    aliceProfile,
    aliceProfile.id,
    fileName2,
  );

  final filesPage2 = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  final file2 = filesPage2.items.firstWhere((item) => item.name == fileName2);

  print(
      '[Demo] Alice is sharing $fileName2 with Bob with READ and WRITE access ...');

  // Multiple permission types: [Permissions.read, Permissions.all] creates two permission groups 
  //get combined into one permision group with "all" rights
  final sharedItem2 = await vaultAlice.shareItem(
    profileId: aliceProfile.id,
    itemId: file2.id,
    toDid: bobProfile.did,
    permissions: [Permissions.all],
  );

  print('[Demo] Verifying Bob\'s permissions after $fileName2 is shared ...');

  final bobPermissions2 = await vaultAlice.getItemAccess(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
  );

  print('[Demo] Bob has ${bobPermissions2.length} permission group(s)');
  for (var permission in bobPermissions2) {
    print('[Demo] Item IDs: ${permission.itemIds}');
    print('[Demo] Rights: ${permission.rights}');
  }

  print('[Demo] Bob is accepting the second shared item ...');
  await vaultBob.addSharedItem(
    profileId: bobProfile.id,
    sharedItem: sharedItem2,
  );

  profilesBob = await vaultBob.listProfiles();

  print('[Demo] Bob is reading the shared file2 using readSharedItem ...');
  try {
    final bobFile2Content = await vaultBob.readSharedItem(
      ownerProfileId: aliceProfile.id,
      itemId: file2.id,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(2);
          print('[Demo] Download progress: $progress%');
        }
      },
    );
    print('[Demo] Bob successfully read file2 content: $bobFile2Content');
  } catch (e) {
    print('[Demo] Bob failed to read file2 content: $e');
  }

  print('[Demo] Alice is revoking Bob\'s access ...');
  await vaultAlice.revokeItemAccess(
    profileId: aliceProfile.id,
    itemId: file1.id,
    granteeDid: bobProfile.did,
  );
  await vaultAlice.revokeItemAccess(
    profileId: aliceProfile.id,
    itemId: file2.id,
    granteeDid: bobProfile.did,
  );

  print('[Demo] Verifying Bob\'s permissions after revoke ...');

  final bobPermissions3 = await vaultAlice.getItemAccess(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
  );

  print(
      '[Demo] Bob has ${bobPermissions3.length} permission group(s) after revoke');
  for (var permission in bobPermissions3) {
    print('[Demo] Item IDs: ${permission.itemIds}');
    print('[Demo] Rights: ${permission.rights}');
  }

  print(
      '[Demo] Bob is trying to read the shared file1 using readSharedItem after revoke ...');
  try {
    final bobFile1ContentAfterRevoke = await vaultBob.readSharedItem(
      ownerProfileId: aliceProfile.id,
      itemId: file1.id,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(2);
          print('[Demo] Download progress: $progress%');
        }
      },
    );
    print(
        '[Demo] ERROR: Bob was able to read file1 after revoke (this should not happen): $bobFile1ContentAfterRevoke');
  } catch (e) {
    print('[Demo] Bob correctly failed to read file1 content after revoke: $e');
  }

  print(
      '[Demo] Bob is trying to read the shared file2 using readSharedItem after revoke ...');
  try {
    final bobFile2ContentAfterRevoke = await vaultBob.readSharedItem(
      ownerProfileId: aliceProfile.id,
      itemId: file2.id,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(2);
          print('[Demo] Download progress: $progress%');
        }
      },
    );
    print(
        '[Demo] ERROR: Bob was able to read file2 after revoke (this should not happen): $bobFile2ContentAfterRevoke');
  } catch (e) {
    print('[Demo] Bob correctly failed to read file2 content after revoke: $e');
  }

  print('[Demo] Bob tries to read file2 after revoke ...');
  try {
    await bobProfile.defaultFileStorage!.getFileContent(
      fileId: file2.id,
    );
    print(
        '[Demo] ERROR: Bob was able to read file2 after revoke (this should not happen)');
  } catch (e) {
    print(
        '[Demo] Bob correctly failed to read file2 after revoke: ${e.toString()}');
  }

  print('[Demo] Alice is deleting all files...');
  final aliceFilesPage = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  await Future.wait(aliceFilesPage.items.map(
      (item) => aliceProfile.defaultFileStorage!.deleteFile(fileId: item.id)));

  profilesAlice = await vaultAlice.listProfiles();
  profilesBob = await vaultBob.listProfiles();
  await Future.wait(
      profilesAlice.map((profile) => _deleteProfile(vaultAlice, profile)));
  await Future.wait(
      profilesBob.map((profile) => _deleteProfile(vaultBob, profile)));

  profilesAlice = await vaultAlice.listProfiles();
  profilesBob = await vaultBob.listProfiles();
  print(
      '[Demo] Final profile count; Alice: ${profilesAlice.length}, Bob: ${profilesBob.length}');
}

Future<void> _deleteProfile(Vault vault, Profile profile) async {
  await _deleteFolder(vault: vault, profile: profile, folderId: profile.id);
  await vault.defaultProfileRepository.deleteProfile(profile);
}

Future<void> _deleteFolder({
  required Vault vault,
  required Profile profile,
  required String folderId,
}) async {
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
    print(
        '[Demo] Error while deleting folder $folderId in profile ${profile.name}: ${e.toString()}');
  }
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
  String fileName,
) async {
  final fileContent = Uint8List.fromList([1, 2, 3]);
  await profile.defaultFileStorage!.createFile(
    fileName: fileName,
    data: fileContent,
    parentFolderId: folderId,
  );
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
