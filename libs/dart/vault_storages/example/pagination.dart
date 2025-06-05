import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';

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

Future<void> _deleteFolder({
  required Vault vault,
  required Profile profile,
  required String folderId,
}) async {
  print('Deleting folderId: $folderId');
  String? exclusiveStartKey;

  try {
    do {
      final items = await profile.defaultFileStorage!.getFolder(
        folderId: folderId,
        limit: 20,
        exclusiveStartKey: exclusiveStartKey,
      );

      for (final item in items) {
        try {
          if (item is Folder) {
            await _deleteFolder(
                vault: vault, profile: profile, folderId: item.id);
          } else if (item is File) {
            await profile.defaultFileStorage!.deleteFile(fileId: item.id);
          }
        } catch (e) {
          print('[Demo] Error deleting item ${item.name}: $e');
        }
      }

      exclusiveStartKey = items.isNotEmpty ? items.last.id : null;
    } while (exclusiveStartKey != null);
  } catch (e) {
    print('[Demo] Error getting folder contents for $folderId: $e');
  }

  if (folderId != profile.id) {
    try {
      await profile.defaultFileStorage!.deleteFolder(folderId: folderId);
    } catch (e) {
      print('[Demo] Error deleting folder $folderId: $e');
    }
  }
}

Future<void> _deleteProfile(Vault vault, Profile profile) async {
  try {
    await _deleteFolder(vault: vault, profile: profile, folderId: profile.id);
    try {
      final credentials =
          await profile.defaultCredentialStorage!.listCredentials();

      await Future.wait(credentials.map((item) => profile
          .defaultCredentialStorage!
          .deleteCredential(digitalCredentialId: item.id)));
    } catch (e) {
      print('[Demo] Error deleting credentials: $e');
    }

    await vault.defaultProfileRepository.deleteProfile(profile);
  } catch (e) {
    print('[Demo] Error deleting profile: $e');
    rethrow;
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

void main() async {
  print('[Demo] Initializing Vault ...');

  final keyStorageAlice = InMemoryVaultStore();
  var accountIndexAlice = 0;
  await keyStorageAlice.writeAccountIndex(accountIndexAlice);

  final seedAlice = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
  await keyStorageAlice.setSeed(seedAlice);

  const vfsRepositoryId = 'vfs';
  final profileRepositoriesAlice = <String, ProfileRepository>{
    vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
  };

  final vaultAlice = await Vault.fromVaultStore(
    keyStorageAlice,
    profileRepositories: profileRepositoriesAlice,
    defaultProfileRepositoryId: vfsRepositoryId,
  );

  await vaultAlice.ensureInitialized();

  print('[Demo] Retrieving Profiles ...');

  var profilesAlice = await vaultAlice.listProfiles();
  print(
      '[Demo] ${profilesAlice.isEmpty ? 'No profiles found' : 'Available profiles: ${profilesAlice.length}'}');
  _listProfileNames(profilesAlice, label: 'Initial profile names');

  await Future.wait(
      profilesAlice.map((profile) => _deleteProfile(vaultAlice, profile)));

  profilesAlice = await vaultAlice.listProfiles();
  _listProfileNames(profilesAlice, label: 'Cleared profiles');

  print('[Demo] Adding new profiles ...');

  accountIndexAlice =
      await _createProfile(vaultAlice, 'Ricardo', accountIndexAlice);
  final aliceAccountIndex = accountIndexAlice;

  var profilesAfterAccountsAlice = await vaultAlice.listProfiles();
  final aliceProfile = profilesAfterAccountsAlice
      .where((profile) => profile.accountIndex == aliceAccountIndex)
      .firstOrNull;

  if (aliceProfile == null) {
    throw UnsupportedError('Profile should exist');
  }

  print('[Demo] Alice is adding multiple files ...');

  final subfolders = <Folder>[];
  for (var i = 0; i < 6; i++) {
    final folder = await aliceProfile.defaultFileStorage!.createFolder(
      folderName: 'subfolder_$i',
      parentFolderId: aliceProfile.id,
    );
    subfolders.add(folder);
    print('[Demo] Created subfolder: ${folder.name}');
  }

  print('[Demo] Creating 100 files across subfolders...');
  for (var i = 0; i < 100; i++) {
    final subfolderIndex = i % subfolders.length;
    final subfolder = subfolders[subfolderIndex];
    await _addFileToProfile(aliceProfile, subfolder.id, 'file_$i');
    if (i % 10 == 0) {
      print('[Demo] Created $i files so far...');
    }
  }

  print('[Demo] Waiting for files to be fully processed...');
  await Future<void>.delayed(const Duration(seconds: 5));

  print('\n[Demo] ===== STARTING PAGINATION TEST =====');
  String? exclusiveStartKey;
  var totalFiles = 0;
  var batchCount = 0;

  try {
    do {
      batchCount++;
      print('\n[Demo] === Batch #$batchCount ===');
      print('[Demo] Using exclusiveStartKey: $exclusiveStartKey');

      try {
        final items = await aliceProfile.defaultFileStorage!.getFolder(
          folderId: aliceProfile.id,
          limit: 20,
          exclusiveStartKey: exclusiveStartKey,
        );

        if (items.isEmpty) {
          print('[Demo] No more items to fetch');
          break;
        }

        print('[Demo] Retrieved ${items.length} items in this batch');
        print(
            '[Demo] Item types: ${items.map((f) => f.runtimeType.toString()).join(', ')}');
        print('[Demo] Item names: ${items.map((f) => f.name).join(', ')}');

        totalFiles += items.length;

        if (items.isNotEmpty && items.last is Node) {
          final lastNode = items.last as Node;
          exclusiveStartKey = lastNode.lastEvaluatedKey;
          print('[Demo] Next exclusiveStartKey will be: $exclusiveStartKey');
        } else {
          exclusiveStartKey = null;
          print('[Demo] No more items to fetch (no lastEvaluatedKey)');
        }

        await Future<void>.delayed(const Duration(milliseconds: 500));
      } catch (e, stackTrace) {
        print('[Demo] Error fetching batch #$batchCount: $e');
        print('[Demo] Stack trace: $stackTrace');

        if (exclusiveStartKey != null) {
          print('[Demo] Retrying batch #$batchCount...');
          await Future<void>.delayed(const Duration(seconds: 1));
          continue;
        }
        rethrow;
      }
    } while (exclusiveStartKey != null);

    print('\n[Demo] ===== PAGINATION TEST COMPLETE =====');
    print('[Demo] Total items retrieved: $totalFiles');
    print('[Demo] Total batches processed: $batchCount');
  } catch (e, stackTrace) {
    print('\n[Demo] ===== PAGINATION TEST FAILED =====');
    print('[Demo] Error during pagination: $e');
    print('[Demo] Stack trace: $stackTrace');
  }

  print('\n[Demo] Waiting before cleanup...');
  await Future<void>.delayed(const Duration(seconds: 2));

  print('\n[Demo] ===== STARTING CLEANUP =====');
  try {
    for (final subfolder in subfolders) {
      print('\n[Demo] Cleaning up subfolder: ${subfolder.name}');
      String? cleanupStartKey;
      var filesDeleted = 0;
      var retryCount = 0;

      do {
        try {
          final items = await aliceProfile.defaultFileStorage!.getFolder(
            folderId: subfolder.id,
            limit: 20,
            exclusiveStartKey: cleanupStartKey,
          );

          for (final item in items) {
            if (item is File) {
              try {
                await aliceProfile.defaultFileStorage!
                    .deleteFile(fileId: item.id);
                filesDeleted++;
                print('[Demo] Deleted file: ${item.name}');
                await Future<void>.delayed(const Duration(milliseconds: 100));
              } catch (e) {
                print('[Demo] Error deleting file ${item.name}: $e');
              }
            }
          }

          if (items.length == 20) {
            cleanupStartKey = items.last.id;
          } else {
            cleanupStartKey = null;
          }

          retryCount = 0;

          await Future<void>.delayed(const Duration(milliseconds: 500));
        } catch (e) {
          print('[Demo] Error getting folder contents for cleanup: $e');
          retryCount++;

          if (retryCount < 3) {
            print('[Demo] Retrying cleanup batch (attempt $retryCount)...');
            await Future<void>.delayed(const Duration(seconds: 1));
            continue;
          }
          break;
        }
      } while (cleanupStartKey != null);

      print('[Demo] Deleted $filesDeleted files from ${subfolder.name}');

      try {
        await aliceProfile.defaultFileStorage!
            .deleteFolder(folderId: subfolder.id);
        print('[Demo] Deleted subfolder: ${subfolder.name}');
        await Future<void>.delayed(const Duration(milliseconds: 500));
      } catch (e) {
        print('[Demo] Error deleting subfolder ${subfolder.name}: $e');
      }
    }
  } catch (e) {
    print('[Demo] Error during cleanup: $e');
  }

  print('\n[Demo] Waiting before profile deletion...');
  await Future<void>.delayed(const Duration(seconds: 2));

  print('\n[Demo] ===== DELETING PROFILE =====');
  try {
    await vaultAlice.defaultProfileRepository.deleteProfile(aliceProfile);
    print('[Demo] Profile deleted successfully');
  } catch (e) {
    print('[Demo] Error deleting profile: $e');
  }
}
