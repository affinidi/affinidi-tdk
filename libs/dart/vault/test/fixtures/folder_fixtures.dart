import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class FolderFixtures {
  static final DateTime testDate = DateTime(2024, 1, 1);

  static Folder createFolder({
    required String id,
    required String name,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? parentId,
  }) {
    return Folder(
      id: id,
      name: name,
      createdAt: createdAt ?? testDate,
      modifiedAt: modifiedAt ?? testDate,
      parentId: parentId,
    );
  }

  static Folder get testFolder => createFolder(
        id: 'test-folder-id',
        name: 'test-folder',
        parentId: 'parent-folder-id',
      );

  static Folder get rootFolder => createFolder(
        id: 'root-folder-id',
        name: 'root-folder',
      );
}
