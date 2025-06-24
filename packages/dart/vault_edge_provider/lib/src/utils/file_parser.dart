import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// Utility class for parsing Files
class FileParser {
  /// Creates a File object from raw data
  static File parseFile({
    required String id,
    required String name,
    required DateTime createdAt,
    required DateTime modifiedAt,
    String? parentId,
  }) {
    return File(
      id: id,
      name: name,
      createdAt: createdAt,
      modifiedAt: modifiedAt,
      parentId: parentId,
    );
  }

  /// Creates a Folder object from raw data
  static Folder parseFolder({
    required String id,
    required String name,
    required DateTime createdAt,
    required DateTime modifiedAt,
    String? parentId,
  }) {
    return Folder(
      id: id,
      name: name,
      createdAt: createdAt,
      modifiedAt: modifiedAt,
      parentId: parentId,
    );
  }

  /// Creates an Item object from raw data (either File or Folder)
  static Item parseItem({
    required String id,
    required String name,
    required DateTime createdAt,
    required DateTime modifiedAt,
    required bool isFolder,
    String? parentId,
  }) {
    if (isFolder) {
      return parseFolder(
        id: id,
        name: name,
        createdAt: createdAt,
        modifiedAt: modifiedAt,
        parentId: parentId,
      );
    } else {
      return parseFile(
        id: id,
        name: name,
        createdAt: createdAt,
        modifiedAt: modifiedAt,
        parentId: parentId,
      );
    }
  }
}
