import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart'
    as vault;
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import '../affinidi_tdk_vault_edge_drift_provider.dart';
import 'database/database.dart' as db;

/// Repository class to manage files and folders on a local Drift database
class EdgeDriftFileRepository implements EdgeFileRepositoryInterface {
  /// Constructor
  const EdgeDriftFileRepository({required db.Database database})
      : _database = database;

  final db.Database _database;

  @override
  Future<void> createFile({
    required String profileId,
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
  }) {
    // TODO: implement createFile
    throw UnimplementedError();
  }

  @override
  Future<vault.Folder> createFolder({
    required String profileId,
    required String folderName,
    String? parentFolderId,
  }) async {
    if (parentFolderId != null) {
      final parentFolder = await (_database.select(_database.items)
            ..where((filter) =>
                filter.id.equals(parentFolderId) &
                filter.itemType.equals(db.ItemType.folder.value)))
          .getSingleOrNull();
      if (parentFolder == null) {
        Error.throwWithStackTrace(
          TdkException(
              message: '''Parent folder does not exist''',
              code: TdkExceptionType.invalidParentFolderId.code),
          StackTrace.current,
        );
      }
    }

    final newFolderId = const Uuid().v4();
    await _database.into(_database.items).insert(db.ItemsCompanion.insert(
          id: Value(newFolderId),
          profileId: profileId,
          name: folderName,
          itemType: db.ItemType.folder,
          parentId: Value.absentIfNull(parentFolderId),
        ));

    final existingFolder = await _getExistingFolder(newFolderId);
    if (existingFolder == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''Folder does not exist''',
            code: TdkExceptionType.invalidFolderId.code),
        StackTrace.current,
      );
    }

    return Folder(
      id: existingFolder.id,
      name: existingFolder.name,
      createdAt: existingFolder.createdAt,
      modifiedAt: existingFolder.modifiedAt,
      parentId: existingFolder.parentId,
    );
  }

  @override
  Future<void> deleteFile({
    required String fileId,
  }) {
    // TODO: implement deleteFile
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteFolder({
    required String folderId,
  }) async {
    final existingFolder = await _getExistingFolder(folderId);
    if (existingFolder == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''Folder does not exist''',
            code: TdkExceptionType.invalidFolderId.code),
        StackTrace.current,
      );
    }

    final atLeatsOneChild = await (_database.select(_database.items)
          ..where((filter) => filter.parentId.equals(folderId)))
        .getSingleOrNull();
    if (atLeatsOneChild != null) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''Folder has content and cannot be deleted''',
            code: TdkExceptionType.unableToDeleteFolderWithContent.code),
        StackTrace.current,
      );
    }

    final affectedRows =
        await _database.delete(_database.items).delete(existingFolder);
    return affectedRows > 0;
  }

  @override
  Future<vault.File> getFile({required String fileId}) {
    // TODO: implement getFile
    throw UnimplementedError();
  }

  @override
  Future<Uint8List> getFileContent({
    required String fileId,
  }) {
    // TODO: implement getFileContent
    throw UnimplementedError();
  }

  @override
  Future<List<vault.Item>> getFolder({
    String? folderId,
    int? limit,
    String? exclusiveStartItemId,
  }) async {
    if (folderId != null) {
      final existingFolder = await _getExistingFolder(folderId);
      if (existingFolder == null) {
        Error.throwWithStackTrace(
          TdkException(
              message: '''Folder does not exist''',
              code: TdkExceptionType.invalidFolderId.code),
          StackTrace.current,
        );
      }
    }

    // TODO: implement getFolder
    throw UnimplementedError();
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
  }) {
    // TODO: implement renameFile
    throw UnimplementedError();
  }

  @override
  Future<bool> renameFolder({
    required String folderId,
    required String newName,
  }) async {
    final existingFolder = await _getExistingFolder(folderId);
    if (existingFolder == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''Folder does not exist''',
            code: TdkExceptionType.invalidFolderId.code),
        StackTrace.current,
      );
    }

    final affectedRows = await (_database.update(_database.items)
          ..where((filter) => filter.id.equals(folderId)))
        .write(ItemsCompanion(name: Value(newName)));

    return affectedRows > 0;
  }

  Future<db.Item?> _getExistingFolder(String folderId) async {
    final existingFolder = await (_database.select(_database.items)
          ..where((filter) =>
              filter.id.equals(folderId) &
              filter.itemType.equals(db.ItemType.folder.value)))
        .getSingleOrNull();
    return existingFolder;
  }
}
