import 'dart:typed_data';
import 'package:affinidi_tdk_vault_storages/src/file/github_file_storage.dart';

class GithubFileStorageFixtures {
  static const String testId = 'test';
  static const String testToken = 'token';
  static const String testFolderId = 'folder_id';
  static const String testFolderName = 'test_folder';
  static const String testParentFolderId = 'parent_folder_id';
  static const String testFileId = 'file_id';
  static const String testFileName = 'test_file.txt';
  static const String testNewName = 'new_name';

  static final Uint8List testFileData = Uint8List.fromList([1, 2, 3, 4, 5]);

  static GithubFileStorage get storage => GithubFileStorage(
        id: testId,
        personalAccessToken: testToken,
      );
}
