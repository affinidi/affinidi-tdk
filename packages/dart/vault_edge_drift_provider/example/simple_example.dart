// ignore_for_file: avoid_print

import 'dart:typed_data';
import 'package:affinidi_tdk_vault_edge_drift_provider/affinidi_tdk_vault_edge_drift_provider.dart';

/// Simple example using DatabaseConfig
void main() async {
  // Get platform info
  final platformInfo = DatabaseConfig.getPlatformInfo();
  print('Platform: ${platformInfo['platform']}');
  print('Database: ${platformInfo['database']}');

  // Create database
  final database = await DatabaseConfig.createDatabase();
  print('Database created successfully');

  // Create repositories
  final profileRepository = EdgeDriftProfileRepository(database: database);
  final fileRepository = EdgeDriftFileRepository(
    database: database,
    profileId: 'test-profile',
  );

  // Create a profile
  await profileRepository.createProfile(
    name: 'Test Profile',
    description: 'A test profile',
    accountIndex: 1,
  );

  final profiles = await profileRepository.listProfiles();
  print('Created profile: ${profiles.first.name}');

  // Create a file
  await fileRepository.createFile(
    profileId: profiles.first.id,
    fileName: 'test.txt',
    data: Uint8List.fromList([72, 101, 108, 108, 111]), // "Hello"
  );
  print('Created file: test.txt');

  // List files
  final files = await fileRepository.getFolder(folderId: null);
  print('Files in root: ${files.length}');

  // Close database
  await database.close();
  print('Database closed');
}
