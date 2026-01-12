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
  var bobProfile = profilesAfterAccountsBob
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

  var policy = await vaultAlice.getItemPermissionsPolicy(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
  );

  // Single permission type: [Permissions.read] creates one permission group with read-only access
  policy.addPermission([file1.id], [Permissions.read]);

  final kek1 = await vaultAlice.setItemAccess(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
    policy: policy,
  );

  // Create SharedItemsDto (can contain multiple item IDs)
  final sharedItems1 = SharedItemsDto(
    kek: kek1,
    ownerProfileId: aliceProfile.id,
    ownerProfileDID: aliceProfile.did,
    itemIds: [file1.id], // Can include multiple item IDs
  );

  print('[Demo] Verifying Bob\'s permissions after $fileName1 is shared ...');

  final bobPermissions = policy.permissions;

  print('[Demo] Bob has ${bobPermissions.length} permission group(s)');
  for (var permission in bobPermissions) {
    print('[Demo] Item IDs: ${permission.itemIds}');
    print('[Demo] Rights: ${permission.rights}');
  }

  print('[Demo] Bob is accepting the shared items ...');
  await vaultBob.acceptSharedItems(
    profileId: bobProfile.id,
    sharedItems: sharedItems1,
  );
  // Refresh Bob's profile to ensure shared storage is attached after accept.
  profilesBob = await vaultBob.listProfiles();
  bobProfile =
      profilesBob.where((p) => p.accountIndex == bobAccountIndex).firstOrNull ??
          bobProfile;

  print('[Demo] Bob is reading shared file1 metadata ...');
  await _printMetadataFromSharedStorage(
    granteeProfile: bobProfile,
    ownerProfileId: aliceProfile.id,
    itemId: file1.id,
  );

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
  policy = await vaultAlice.getItemPermissionsPolicy(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
  );

  // Multiple permission types: [Permissions.read, Permissions.write] gets combined
  // into one permission group with "all" rights
  policy.addPermission([file2.id], [Permissions.read, Permissions.write]);

  final kek2 = await vaultAlice.setItemAccess(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
    policy: policy,
  );

  // Create SharedItemsDto with multiple items (file1 and file2)
  final sharedItems2 = SharedItemsDto(
    kek: kek2,
    ownerProfileId: aliceProfile.id,
    ownerProfileDID: aliceProfile.did,
    itemIds: [file1.id, file2.id], // Multiple items shared together
  );

  print('[Demo] Verifying Bob\'s permissions after $fileName2 is shared ...');

  final bobPermissions2 = policy.permissions;

  print('[Demo] Bob has ${bobPermissions2.length} permission group(s)');
  for (var permission in bobPermissions2) {
    print('[Demo] Item IDs: ${permission.itemIds}');
    print('[Demo] Rights: ${permission.rights}');
  }

  print('[Demo] Bob is accepting the shared items (file1 and file2) ...');
  await vaultBob.acceptSharedItems(
    profileId: bobProfile.id,
    sharedItems: sharedItems2,
  );
  // Refresh Bob's profile again to pick up any new shared storage state.
  profilesBob = await vaultBob.listProfiles();
  bobProfile =
      profilesBob.where((p) => p.accountIndex == bobAccountIndex).firstOrNull ??
          bobProfile;

  print('[Demo] Bob is reading shared file2 metadata ...');
  await _printMetadataFromSharedStorage(
    granteeProfile: bobProfile,
    ownerProfileId: aliceProfile.id,
    itemId: file2.id,
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

  print('[Demo] Alice is adding two more files ...');
  final fileName3 = 'alice_file3_$timestamp-$random.txt';
  final fileName4 = 'alice_file4_$timestamp-$random.txt';
  await _addFileToProfile(
    aliceProfile,
    aliceProfile.id,
    fileName3,
  );
  await _addFileToProfile(
    aliceProfile,
    aliceProfile.id,
    fileName4,
  );

  final filesPage3 = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  final file3 = filesPage3.items.firstWhere((item) => item.name == fileName3);
  final file4 = filesPage3.items.firstWhere((item) => item.name == fileName4);

  print(
      '[Demo] Alice is sharing $fileName3 and $fileName4 with Bob at the same time ...');

  policy = await vaultAlice.getItemPermissionsPolicy(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
  );

  // Add multiple files at once (all local edits, no backend calls)
  policy.addPermission([file3.id], [Permissions.read]);
  policy.addPermission([file4.id], [Permissions.read, Permissions.write]);

  final kek3 = await vaultAlice.setItemAccess(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
    policy: policy,
  );

  // Create SharedItemsDto with all shared items (file1, file2, file3, file4)
  final sharedItems3 = SharedItemsDto(
    kek: kek3,
    ownerProfileId: aliceProfile.id,
    ownerProfileDID: aliceProfile.did,
    itemIds: [file1.id, file2.id, file3.id, file4.id],
  );

  print(
      '[Demo] Verifying Bob\'s permissions after sharing file3 and file4 ...');

  final bobPermissions4 = policy.permissions;

  print('[Demo] Bob has ${bobPermissions4.length} permission group(s)');
  for (var permission in bobPermissions4) {
    print('[Demo] Item IDs: ${permission.itemIds}');
    print('[Demo] Rights: ${permission.rights}');
  }

  print(
      '[Demo] Bob is accepting the shared items (file1, file2, file3, and file4) ...');
  await vaultBob.acceptSharedItems(
    profileId: bobProfile.id,
    sharedItems: sharedItems3,
  );

  profilesBob = await vaultBob.listProfiles();

  print('[Demo] Bob is reading the shared file3 using readSharedItem ...');
  try {
    final bobFile3Content = await vaultBob.readSharedItem(
      ownerProfileId: aliceProfile.id,
      itemId: file3.id,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(2);
          print('[Demo] Download progress: $progress%');
        }
      },
    );
    print('[Demo] Bob successfully read file3 content: $bobFile3Content');
  } catch (e) {
    print('[Demo] Bob failed to read file3 content: $e');
  }

  print('[Demo] Bob is reading the shared file4 using readSharedItem ...');
  try {
    final bobFile4Content = await vaultBob.readSharedItem(
      ownerProfileId: aliceProfile.id,
      itemId: file4.id,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(2);
          print('[Demo] Download progress: $progress%');
        }
      },
    );
    print('[Demo] Bob successfully read file4 content: $bobFile4Content');
  } catch (e) {
    print('[Demo] Bob failed to read file4 content: $e');
  }

  print('[Demo] Alice is revoking Bob\'s access to all files ...');
  policy = await vaultAlice.getItemPermissionsPolicy(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
  );

  policy.removePermission([file1.id], []);
  policy.removePermission([file2.id], []);
  policy.removePermission([file3.id], []);
  policy.removePermission([file4.id], []);

  await vaultAlice.setItemAccess(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
    policy: policy,
  );

  print('[Demo] Verifying Bob\'s permissions after revoke ...');

  final bobPermissions3 = policy.permissions;

  print(
      '[Demo] Bob has ${bobPermissions3.length} permission group(s) after revoke');
  for (var permission in bobPermissions3) {
    print('[Demo] Item IDs: ${permission.itemIds}');
    print('[Demo] Rights: ${permission.rights}');
  }

  print('[Demo] Bob is trying to read the shared file1 after revoke ...');
  try {
    await vaultBob.readSharedItem(
      ownerProfileId: aliceProfile.id,
      itemId: file1.id,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = (received / total * 100).toStringAsFixed(2);
          print('[Demo] Download progress: $progress%');
        }
      },
    );
  } catch (e) {
    print('[Demo] Bob correctly failed to read file1 content after revoke: $e');
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
  _listProfileNames(profiles, label: name);
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

Future<void> _printMetadataFromSharedStorage({
  required Profile granteeProfile,
  required String ownerProfileId,
  required String itemId,
}) async {
  final sharedStorage = granteeProfile.sharedStorages
      .where((storage) => storage.id == ownerProfileId)
      .firstOrNull;

  if (sharedStorage == null) {
    print('[Demo] No shared storage found for owner $ownerProfileId');
    return;
  }

  try {
    final item = await sharedStorage.getFile(fileId: itemId);
    print(
        '[Demo] File Metadata:\n id: ${item.id}, name: ${item.name}, createdAt: ${item.createdAt}');
  } catch (e) {
    print('[Demo] Could not fetch metadata for $itemId: $e');
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
