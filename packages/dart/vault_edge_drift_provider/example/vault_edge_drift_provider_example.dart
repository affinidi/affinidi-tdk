// ignore_for_file: avoid_print

import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_drift_provider/affinidi_tdk_vault_edge_drift_provider.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';

void main() async {
  // Create an in-memory database directly
  final database = Database(NativeDatabase.memory());

  // Create repositories
  final profileRepository = EdgeDriftProfileRepository(database: database);
  String? currentProfileId;

  // Create a profile
  print('Adding a new profile');
  await profileRepository.createProfile(
    name: 'My Profile',
    description: 'A test profile',
    accountIndex: 1,
  );

  final profiles = await profileRepository.listProfiles();
  print('Profiles: ${profiles.map((p) => p.name).join(', ')}');
  currentProfileId = profiles.first.id;

  // Create file repository
  final fileRepository = EdgeDriftFileRepository(
    database: database,
    profileId: currentProfileId,
  );

  // Create a file in the root folder
  print('Creating a file in the root folder');
  await fileRepository.createFile(
    profileId: currentProfileId,
    fileName: 'root_file.txt',
    data: Uint8List.fromList([10, 20, 30, 40, 50]),
  );

  // Create a folder
  print('Creating a folder');
  final folder = await fileRepository.createFolder(
    profileId: currentProfileId,
    folderName: 'Folder1',
    parentFolderId: null,
  );

  // Create a file in the folder
  print('Creating a file in the folder');
  await fileRepository.createFile(
    profileId: currentProfileId,
    fileName: 'test.txt',
    data: Uint8List.fromList([1, 2, 3, 4, 5]),
    parentFolderId: folder.id,
  );

  // List contents of root folder
  print('Listing root folder contents:');
  final rootItems = await fileRepository.getFolder(folderId: null);
  for (final item in rootItems) {
    print('- ${item.name} (${item is Folder ? 'Folder' : 'File'})');
  }

  // List contents of Folder1
  print('Listing Folder1 contents:');
  final folderItems = await fileRepository.getFolder(folderId: folder.id);
  for (final item in folderItems) {
    print('- ${item.name} (${item is Folder ? 'Folder' : 'File'})');
  }

  // Read file content
  print('Reading file content:');
  final fileContent = await fileRepository.getFileContent(
    fileId: folderItems.first.id,
  );
  print('File content: ${fileContent.join(', ')}');

  // Try to delete the profile (should fail)
  print('Attempting to delete profile with contents:');
  try {
    await profileRepository.deleteProfile(profileId: currentProfileId);
  } catch (e) {
    print('Expected error: $e');
  }

  // Delete all contents
  print('Deleting all contents:');
  for (final item in rootItems) {
    if (item is File) {
      print('Deleting file: ${item.name}');
      await fileRepository.deleteFile(fileId: item.id);
    } else if (item is Folder) {
      print('Deleting folder: ${item.name}');
      // Delete folder contents first
      final folderContents = await fileRepository.getFolder(folderId: item.id);
      for (final content in folderContents) {
        // TODO: should check for item if type file or folder and do some recursion
        print('  Deleting file: ${content.name}');
        await fileRepository.deleteFile(fileId: content.id);
      }
      await fileRepository.deleteFolder(folderId: item.id);
    }
  }

  // Verify all contents are deleted
  print('Verifying root folder is empty:');
  final remainingItems = await fileRepository.getFolder(folderId: null);
  print('Remaining items: ${remainingItems.length}');

  print('Deleting profile:');
  try {
    await profileRepository.deleteProfile(profileId: currentProfileId);
    print('Profile deleted successfully');
  } catch (e) {
    print('Unexpected error while deleting profile: $e');
  }

  // List profiles to verify deletion
  final remainingProfiles = await profileRepository.listProfiles();
  print('Remaining profiles: ${remainingProfiles.length}');

  // Close the database
  await database.close();
}
