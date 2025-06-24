import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import 'database/database.dart' as db;

/// Repository class to manage files and folders on a local Drift database
class EdgeDriftFileRepository implements EdgeFileRepositoryInterface {
  /// Constructor
  const EdgeDriftFileRepository({
    required db.Database database,
    required String profileId,
    this.maxFileSize = 10 * 1024 * 1024,
    this.allowedExtensions = const ['txt', 'pdf', 'jpg', 'jpeg', 'png', 'json'],
  })  : _database = database,
        _profileId = profileId;

  final db.Database _database;
  final String _profileId;

  @override
  final int maxFileSize;

  @override
  final List<String> allowedExtensions;

  @override
  Future<void> createFile({
    required String profileId,
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
  }) async {
    // Validate file size
    if (data.length > maxFileSize) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'File size exceeds maximum limit of 10MB',
          code: TdkExceptionType.invalidFileSize.code,
        ),
        StackTrace.current,
      );
    }

    // Validate file type
    final extension = fileName.split('.').last.toLowerCase();
    if (!allowedExtensions.contains(extension)) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'File type not allowed',
          code: TdkExceptionType.invalidFileType.code,
        ),
        StackTrace.current,
      );
    }

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

    // Create file item entry first
    final fileId = const Uuid().v4();

    final fileItem = db.ItemsCompanion.insert(
      id: Value(fileId),
      profileId: _profileId,
      name: fileName,
      parentId: Value(parentFolderId),
      itemType: db.ItemType.file,
    );
    await _database.into(_database.items).insert(fileItem);

    // Create file content entry with the same ID
    await _database.into(_database.fileContents).insert(
          db.FileContentsCompanion.insert(
            id: fileId,
            content: data,
          ),
        );

    // Verify the file was created with correct parentId
    final createdFile = await (_database.select(_database.items)
          ..where((filter) =>
              filter.id.equals(fileId) &
              filter.itemType.equals(db.ItemType.file.value) &
              filter.profileId.equals(_profileId)))
        .getSingleOrNull();
    if (createdFile == null) {
      throw Exception('Failed to create file');
    }

    if (createdFile.parentId != parentFolderId) {
      throw Exception('File was created with incorrect parentId.');
    }
  }

  @override
  Future<String?> getFileId({
    required String fileName,
    String? parentFolderId,
  }) async {
    final query = _database.select(_database.items)
      ..where((filter) =>
          filter.name.equals(fileName) &
          filter.itemType.equals(db.ItemType.file.value) &
          filter.profileId.equals(_profileId) &
          (parentFolderId != null
              ? filter.parentId.equals(parentFolderId)
              : filter.parentId.isNull()));

    final file = await query.getSingleOrNull();

    return file?.id;
  }

  @override
  Future<FolderData> createFolder({
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

    final newFolderId = const Uuid().v4();
    final folderItem = db.ItemsCompanion.insert(
      id: Value(newFolderId),
      profileId: _profileId,
      name: folderName,
      itemType: db.ItemType.folder,
      parentId: Value(parentFolderId),
    );

    try {
      await _database.into(_database.items).insert(folderItem);
    } catch (e) {
      throw Exception('Failed to create folder: $e');
    }

    // Verify the folder was created
    final createdFolder = await (_database.select(_database.items)
          ..where((filter) =>
              filter.id.equals(newFolderId) &
              filter.itemType.equals(db.ItemType.folder.value) &
              filter.profileId.equals(_profileId)))
        .getSingleOrNull();

    if (createdFolder == null) {
      throw Exception('Failed to create folder - verification failed');
    }

    return FolderData(
      id: createdFolder.id,
      name: createdFolder.name,
      createdAt: createdFolder.createdAt,
      modifiedAt: createdFolder.modifiedAt,
      parentId: createdFolder.parentId,
    );
  }

  @override
  Future<void> deleteFile({required String fileId}) async {
    await (_database.delete(_database.fileContents)
          ..where((filter) => filter.id.equals(fileId)))
        .go();

    await (_database.delete(_database.items)
          ..where((filter) => filter.id.equals(fileId)))
        .go();
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
  Future<FileData> getFileData({required String fileId}) async {
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

    return FileData(
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
  Future<List<ItemData>> getFolderData({
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
      return ItemData(
        id: item.id,
        name: item.name,
        createdAt: item.createdAt,
        modifiedAt: item.modifiedAt,
        isFolder: item.itemType == db.ItemType.folder,
        parentId: item.parentId,
      );
    }).toList();
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
  }) async {
    // Validate file type
    final extension = newName.split('.').last.toLowerCase();
    if (!allowedExtensions.contains(extension)) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'File type not allowed',
          code: TdkExceptionType.invalidFileType.code,
        ),
        StackTrace.current,
      );
    }

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
