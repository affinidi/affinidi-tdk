import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class EdgeFileStorage implements FileStorage {
  @override
  Future<void> createFile(
      {required String fileName,
      required Uint8List data,
      String? parentFolderId}) {
    // TODO: implement createFile
    throw UnimplementedError();
  }

  @override
  Future<Folder> createFolder(
      {required String folderName, required String parentFolderId}) {
    // TODO: implement createFolder
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFile({required String fileId}) {
    // TODO: implement deleteFile
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFolder({required String folderId}) {
    // TODO: implement deleteFolder
    throw UnimplementedError();
  }

  @override
  Future<File> getFile({required String fileId}) {
    // TODO: implement getFile
    throw UnimplementedError();
  }

  @override
  Future<Uint8List> getFileContent({required String fileId}) {
    // TODO: implement getFileContent
    throw UnimplementedError();
  }

  @override
  Future<List<Item>> getFolder({String? folderId}) {
    // TODO: implement getFolder
    throw UnimplementedError();
  }

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  @override
  Future<void> renameFile({required String fileId, required String newName}) {
    // TODO: implement renameFile
    throw UnimplementedError();
  }

  @override
  Future<void> renameFolder(
      {required String folderId, required String newName}) {
    // TODO: implement renameFolder
    throw UnimplementedError();
  }
}

/// [Profiles DB]
///
///
/// profiles: <handicapped Profile>[]
///
///
Drift entity -> class Profile {
  /// [id] - Unique identifier for the profile
  /// [accountIndex] - Index of the account
  /// [name] - Name of the profile
  /// [description] - Optional description of the profile
  /// [profilePictureURI] - Optional URI to the profile picture
  /// [dek]
}


/// FIle system
/// root
///  |__Folder
///      |__Folder1
///                |__File
///      |__Folder2

Folder
1 | Folder | null
2 | Folder1 | 1
3 | Folder2 | 1

File
1 | File | 2

/// [File DB]
///
///
/// files: []
///
Drift entity -> class Node {
  /// [id] - uuid, identifies a file;
  /// [name] - friendly name passport.pdf
  /// [profileId] - used to identify to which profile it belongs
  /// [parentId] - Folder1 -- should only point to a a nod
  /// [type] - Folder | file
}

///
Drift entity -> class Node {
  /// [id] - uuid, identifies a credential;
  /// [profileId] - used to identify to which profile it belongs
  /// credentialJson - stores the whole cred;
}

///credentials: []

/// get children nodes of folder with ID 10
select * from Node where parentId = 10 and profileId = 'aaaa';

/// get children nodes of root folder
select * from Node where parentId = null and profileId = 'aaaa';


String getFilePath(String profileID) {
  return '$profileId/${file.id}'; // bytes from disk... encrypted
}

Drift entity -> class Folder {
  [id] - folder id
  [name] - folder friendly name
  [parentId] - nullable
  [profileId] - used to identify to which profile it belongs
}

id: "dsdsad-asdsadas-sadsadds",
name:  "image1"
extension: "jpeg"
profileId: 'dsdsad-asdsadas-sadsadds'
parentId: null




// Root> file1
// Root> Folder1 > file2

profile.defaultFileStorage.getFileContent('balh')
