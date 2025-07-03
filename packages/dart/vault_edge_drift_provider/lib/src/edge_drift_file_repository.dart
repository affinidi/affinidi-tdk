import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import 'database/database.dart' as db;

/// Repository class to manage files and folders on a local Drift database
class EdgeDriftFileRepository implements EdgeFileRepositoryInterface {
  /// Creates a new instance of [EdgeDriftFileRepository].
  EdgeDriftFileRepository._({
    required db.Database database,
    required String profileId,
  })  : _database = database,
        _profileId = profileId;

  /// Creates a new instance of [EdgeDriftFileRepository].
  factory EdgeDriftFileRepository({
    required db.Database database,
    required String profileId,
  }) {
    return EdgeDriftFileRepository._(
      database: database,
      profileId: profileId,
    );
  }

  final db.Database _database;
  final String _profileId;

  @override
  Future<File> createFile({
    required String profileId,
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
  }) async {
    if (parentFolderId != null) {
      final parentFolder = await (_database.select(_database.items)
            ..where((filter) =>
                filter.id.equals(parentFolderId) &
                filter.itemType.equals(db.ItemType.folder.value) &
                filter.profileId.equals(_profileId)))
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

    final fileId = const Uuid().v4();

    final fileItem = db.ItemsCompanion.insert(
      id: Value(fileId),
      profileId: _profileId,
      name: fileName,
      parentId: Value(parentFolderId),
      itemType: db.ItemType.file,
    );

    final fileContent = db.FileContentsCompanion.insert(
      id: fileId,
      content: data,
    );

    await _database.transaction(() async {
      await _database.into(_database.items).insert(fileItem);
      await _database.into(_database.fileContents).insert(fileContent);
    });

    return await getFile(fileId: fileId);
  }

  @override
  Future<Folder> createFolder({
    required String profileId,
    required String folderName,
    String? parentFolderId,
  }) async {
    if (parentFolderId != null) {
      final parentFolder = await (_database.select(_database.items)
            ..where((filter) =>
                filter.id.equals(parentFolderId) &
                filter.itemType.equals(db.ItemType.folder.value) &
                filter.profileId.equals(_profileId)))
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

    final folderId = const Uuid().v4();

    final folderItem = db.ItemsCompanion.insert(
      id: Value(folderId),
      profileId: _profileId,
      name: folderName,
      parentId: Value(parentFolderId),
      itemType: db.ItemType.folder,
    );
    await _database.into(_database.items).insert(folderItem);

    // Verify the folder was created with correct parentId
    final createdFolder = await (_database.select(_database.items)
          ..where((filter) =>
              filter.id.equals(folderId) &
              filter.itemType.equals(db.ItemType.folder.value) &
              filter.profileId.equals(_profileId)))
        .getSingleOrNull();

    if (createdFolder == null) {
      throw Exception('Failed to create folder');
    }

    return Folder(
      id: createdFolder.id,
      name: createdFolder.name,
      createdAt: createdFolder.createdAt,
      modifiedAt: createdFolder.modifiedAt,
      parentId: createdFolder.parentId,
    );
  }

  @override
  Future<void> deleteFile({required String fileId}) async {
    await _database.transaction(() async {
      await (_database.delete(_database.fileContents)
            ..where((filter) => filter.id.equals(fileId)))
          .go();

      await (_database.delete(_database.items)
            ..where((filter) => filter.id.equals(fileId)))
          .go();
    });
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
  Future<File> getFile({required String fileId}) async {
    final file = await (_database.select(_database.items)
          ..where((filter) =>
              filter.id.equals(fileId) &
              filter.itemType.equals(db.ItemType.file.value)))
        .getSingleOrNull();

    if (file == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''File does not exist''',
            code: TdkExceptionType.invalidFileId.code),
        StackTrace.current,
      );
    }

    return File(
      id: file.id,
      name: file.name,
      createdAt: file.createdAt,
      modifiedAt: file.modifiedAt,
      parentId: file.parentId,
    );
  }

  @override
  Future<Uint8List> getFileContent({required String fileId}) async {
    final content = await (_database.select(_database.fileContents)
          ..where((filter) => filter.id.equals(fileId)))
        .getSingleOrNull();

    if (content == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''File content does not exist''',
            code: TdkExceptionType.invalidFileId.code),
        StackTrace.current,
      );
    }

    return content.content;
  }

  @override
  Future<List<Item>> getFolder({
    String? folderId,
    int? limit,
    String? exclusiveStartItemId,
  }) async {
    if (folderId != null && folderId.isNotEmpty) {
      final existingFolder = await _getExistingFolder(folderId);
      if (existingFolder == null) {
        return []; // Return empty list for non-existent folders
      }
    }

    var query = _database.select(_database.items)
      ..where((filter) =>
          filter.profileId.equals(_profileId) &
          (folderId != null && folderId.isNotEmpty
              ? filter.parentId.equals(folderId)
              : filter.parentId.isNull()));

    if (limit != null) {
      query = query..limit(limit);
    }

    final items = await query.get();
    return items.map((item) {
      return (item.itemType == db.ItemType.folder)
          ? Folder(
              id: item.id,
              name: item.name,
              createdAt: item.createdAt,
              modifiedAt: item.modifiedAt,
              parentId: item.parentId,
            )
          : File(
              id: item.id,
              name: item.name,
              createdAt: item.createdAt,
              modifiedAt: item.modifiedAt,
              parentId: item.parentId,
            );
    }).toList();
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
  }) async {
    final file = await (_database.select(_database.items)
          ..where((filter) =>
              filter.id.equals(fileId) &
              filter.itemType.equals(db.ItemType.file.value)))
        .getSingleOrNull();

    if (file == null) {
      Error.throwWithStackTrace(
        TdkException(
            message: '''File does not exist''',
            code: TdkExceptionType.invalidFileId.code),
        StackTrace.current,
      );
    }

    await (_database.update(_database.items)
          ..where((filter) => filter.id.equals(fileId)))
        .write(db.ItemsCompanion(name: Value(newName)));
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
        .write(db.ItemsCompanion(name: Value(newName)));

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
