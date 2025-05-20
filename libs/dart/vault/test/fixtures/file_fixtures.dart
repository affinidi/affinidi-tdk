import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class FileFixtures {
  static final DateTime testDate = DateTime(2024, 1, 1);

  static File createFile({
    required String id,
    required String name,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? parentId,
  }) {
    return File(
      id: id,
      name: name,
      createdAt: createdAt ?? testDate,
      modifiedAt: modifiedAt ?? testDate,
      parentId: parentId,
    );
  }

  static File get testFile => createFile(
        id: 'test-file-id',
        name: 'test-file.txt',
        parentId: 'test-folder-id',
      );

  static File get rootFile => createFile(
        id: 'root-file-id',
        name: 'root-file.txt',
      );
}
