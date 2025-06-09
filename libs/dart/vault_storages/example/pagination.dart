import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';

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
  print('[Demo] Deleting folderId: $folderId');
  String? exclusiveStartKey;
  var hasErrors = false;

  try {
    do {
      final page = await profile.defaultFileStorage!.getFolder(
        folderId: folderId,
        limit: 20,
        exclusiveStartKey: exclusiveStartKey,
      );

      print('[Demo] Found ${page.items.length} items in folder $folderId');

      for (final item in page.items) {
        if (item is File) {
          try {
            print('[Demo] Deleting file: ${item.name}');
            await profile.defaultFileStorage!.deleteFile(fileId: item.id);
            print('[Demo] Successfully deleted file: ${item.name}');
          } catch (e) {
            print('[Demo] Error deleting file ${item.name}: $e');
            hasErrors = true;
          }
        }
      }

      for (final item in page.items) {
        if (item is Folder) {
          try {
            print('[Demo] Processing subfolder: ${item.name}');
            await _deleteFolder(
              vault: vault,
              profile: profile,
              folderId: item.id,
            );
          } catch (e) {
            print('[Demo] Error processing subfolder ${item.name}: $e');
            hasErrors = true;
          }
        }
      }

      exclusiveStartKey = page.nextPageKey;
    } while (exclusiveStartKey != null);

    if (folderId != profile.id) {
      try {
        final verifyPage = await profile.defaultFileStorage!.getFolder(
          folderId: folderId,
          limit: 1,
        );

        if (verifyPage.items.isNotEmpty) {
          print(
              '[Demo] Warning: Folder $folderId is not empty, contains ${verifyPage.items.length} items');
          hasErrors = true;
        } else {
          print('[Demo] Folder $folderId is empty, proceeding with deletion');
          await profile.defaultFileStorage!.deleteFolder(folderId: folderId);
          print('[Demo] Successfully deleted folder: $folderId');
        }
      } catch (e) {
        print('[Demo] Error verifying/deleting folder $folderId: $e');
        hasErrors = true;
      }
    } else {
      final verifyPage = await profile.defaultFileStorage!.getFolder(
        folderId: folderId,
        limit: 1,
      );
      if (verifyPage.items.isNotEmpty) {
        print(
            '[Demo] Warning: Root folder still contains ${verifyPage.items.length} items');
        hasErrors = true;
      } else {
        print('[Demo] Root folder is empty');
      }
    }
  } catch (e) {
    print('[Demo] Error getting folder contents for $folderId: $e');
    hasErrors = true;
  }

  if (hasErrors) {
    throw Exception('Failed to completely empty folder $folderId');
  }
}

Future<void> _deleteProfile(Vault vault, Profile profile) async {
  print('[Demo] Starting profile deletion for: ${profile.name}');
  try {
    await _deleteFolder(vault: vault, profile: profile, folderId: profile.id);

    final verifyPage = await profile.defaultFileStorage!.getFolder(
      folderId: profile.id,
      limit: 1,
    );
    if (verifyPage.items.isNotEmpty) {
      throw Exception('Profile still contains items, cannot delete');
    }

    final credentials =
        await profile.defaultCredentialStorage!.listCredentials();
    print('[Demo] Found ${credentials.length} credentials to delete');

    for (final credential in credentials) {
      try {
        await profile.defaultCredentialStorage!
            .deleteCredential(digitalCredentialId: credential.id);
        print('[Demo] Successfully deleted credential: ${credential.id}');
      } catch (e) {
        print('[Demo] Error deleting credential ${credential.id}: $e');
        throw Exception('Failed to delete all credentials');
      }
    }

    print('[Demo] Deleting profile: ${profile.name}');
    await vault.defaultProfileRepository.deleteProfile(profile);
    print('[Demo] Successfully deleted profile: ${profile.name}');
  } catch (e) {
    print('[Demo] Error during profile deletion: $e');
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

Future<void> main() async {
  try {
    print('[Demo] Initializing Vault ...');

    final vaultStore = InMemoryVaultStore();
    var accountIndex = 0;
    await vaultStore.writeAccountIndex(accountIndex);

    final seed = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
    await vaultStore.setSeed(seed);

    const vfsRepositoryId = 'vfs';
    final profileRepositories = <String, ProfileRepository>{
      vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
    };

    final vault = await Vault.fromVaultStore(
      vaultStore,
      profileRepositories: profileRepositories,
      defaultProfileRepositoryId: vfsRepositoryId,
    );

    await vault.ensureInitialized();

    print('[Demo] Retrieving Profiles ...');

    var profiles = await vault.listProfiles();
    print(
        '[Demo] ${profiles.isEmpty ? 'No profiles found' : 'Available profiles: ${profiles.length}'}');
    _listProfileNames(profiles, label: 'Initial profile names');

    print('[Demo] Deleting all existing profiles...');
    for (final profile in profiles) {
      try {
        await _deleteProfile(vault, profile);
        print('[Demo] Successfully deleted profile: ${profile.name}');
      } catch (e) {
        print('[Demo] Error deleting profile ${profile.name}: $e');
      }
    }

    profiles = await vault.listProfiles();
    _listProfileNames(profiles, label: 'After deleting all profiles');
    if (profiles.isNotEmpty) {
      print('[Demo] Warning: Some profiles could not be deleted');
    }

    print('[Demo] Adding new profile ...');

    accountIndex = await _createProfile(vault, 'Musk', accountIndex);
    final testAccountIndex = accountIndex;

    var profilesAfterAccount = await vault.listProfiles();
    _listProfileNames(profilesAfterAccount, label: 'After creating profile');

    final testProfile = profilesAfterAccount
        .where((profile) => profile.accountIndex == testAccountIndex)
        .firstOrNull;

    if (testProfile == null) {
      throw UnsupportedError('Profile should exist');
    }

    print(
        '[Demo] Profile created successfully: ${testProfile.name} (${testProfile.id})');

    await Future<void>.delayed(const Duration(seconds: 2));

    try {
      final initialFolder = await testProfile.defaultFileStorage!.getFolder(
        folderId: testProfile.id,
      );
      print(
          '[Demo] Initial folder contents: ${initialFolder.items.length} items');
    } catch (e) {
      print('[Demo] Error accessing profile folder: $e');
      rethrow;
    }

    print('[Demo] Creating test files ...');

    // Create subfolders and distribute files
    final filesPerFolder = 5;
    final totalFiles = 20;
    final numFolders = (totalFiles / filesPerFolder).ceil();

    for (var folderIndex = 0; folderIndex < numFolders; folderIndex++) {
      final folderName = 'folder_$folderIndex';
      print('[Demo] Creating folder: $folderName');

      try {
        final folder = await testProfile.defaultFileStorage!.createFolder(
          folderName: folderName,
          parentFolderId: testProfile.id,
        );
        print('[Demo] Successfully created folder: $folderName (${folder.id})');

        final startFileIndex = folderIndex * filesPerFolder;
        final endFileIndex = (folderIndex + 1) * filesPerFolder;

        for (var i = startFileIndex; i < endFileIndex && i < totalFiles; i++) {
          try {
            await Future<void>.delayed(const Duration(milliseconds: 500));

            final fileName = 'test_file_$i.txt';
            print('[Demo] Creating file: $fileName in folder $folderName');

            await testProfile.defaultFileStorage!.createFile(
              fileName: fileName,
              data: Uint8List.fromList([1, 2, 3, 4, 5]),
              parentFolderId: folder.id,
            );
            print('[Demo] Successfully created file $i in folder $folderName');
          } on TdkException catch (error) {
            print('[Demo] Error creating file $i:');
            print('  Code: ${error.code}');
            print('  Message: ${error.message}');
            print('  Original: ${error.originalMessage}');
            continue;
          }
        }
      } on TdkException catch (error) {
        print('[Demo] Error creating folder $folderName:');
        print('  Code: ${error.code}');
        print('  Message: ${error.message}');
        print('  Original: ${error.originalMessage}');
        continue;
      }
    }

    await Future<void>.delayed(const Duration(seconds: 3));

    try {
      final rootFolder = await testProfile.defaultFileStorage!.getFolder(
        folderId: testProfile.id,
      );
      print('[Demo] Root folder contents: ${rootFolder.items.length} items');
      for (final item in rootFolder.items) {
        if (item is Folder) {
          final subFolder = await testProfile.defaultFileStorage!.getFolder(
            folderId: item.id,
          );
          print(
              '[Demo] Folder ${item.name} contains ${subFolder.items.length} items');
        }
      }
    } catch (e) {
      print('[Demo] Error verifying files: $e');
    }

    print('[Demo] Finished creating test files');

    print('[Demo] Testing pagination...');
    String? exclusiveStartKey;
    var totalItems = 0;
    var pageCount = 0;

    do {
      print('[Demo] Fetching page ${pageCount + 1}...');
      if (exclusiveStartKey != null) {
        print('[Demo] Using exclusiveStartKey: $exclusiveStartKey');
      }

      try {
        final page = await testProfile.defaultFileStorage!.getFolder(
          folderId: testProfile.id,
          exclusiveStartKey: exclusiveStartKey,
          limit: 2,
        );

        if (page.items.isEmpty) {
          print('[Demo] No more items found');
          break;
        }

        totalItems += page.items.length;
        print('[Demo] Retrieved ${page.items.length} items');
        print(
            '[Demo] Items: ${page.items.map((item) => item.name).join(', ')}');

        exclusiveStartKey = page.nextPageKey;
        if (exclusiveStartKey != null) {
          print('[Demo] Next page key: $exclusiveStartKey');
        }

        pageCount++;

        if (!page.hasMore) {
          print('[Demo] No more pages available');
          break;
        }
      } catch (e) {
        print('[Demo] Error fetching page: $e');
        break;
      }
    } while (exclusiveStartKey != null);

    print('[Demo] Pagination test completed');
    print('[Demo] Total items retrieved: $totalItems');
    print('[Demo] Total pages: $pageCount');

    print('[Demo] Starting cleanup...');
    await _deleteProfile(vault, testProfile);
    print('[Demo] Cleanup completed successfully');
  } catch (e) {
    print('[Demo] Error in main: $e');
    rethrow;
  }
}
