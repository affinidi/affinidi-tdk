import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:dio/dio.dart';

import '../exceptions/tdk_exception_type.dart';
import '../interfaces/edge_file_repository_interface.dart';
import '../utils/file_parser.dart';

/// An Edge based implementation of [FileStorage] for storing and managing
/// files and folders.
class VaultEdgeFileStorage implements FileStorage {
  /// Creates a new instance of [VaultEdgeFileStorage].
  VaultEdgeFileStorage({
    required EdgeFileRepositoryInterface repository,
    required String id,
    required String profileId,
  })  : _repository = repository,
        _id = id,
        _profileId = profileId;

  final EdgeFileRepositoryInterface _repository;
  final String _id;
  final String _profileId;

  @override
  String get id => _id;

  @override
  Future<void> createFile({
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
    VaultCancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
  }) async {
    if (data.length > _repository.maxFileSize) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'File size exceeds maximum limit of ${(_repository.maxFileSize / (1024 * 1024)).toStringAsFixed(1)}MB',
          code: TdkExceptionType.invalidFileSize.code,
        ),
        StackTrace.current,
      );
    }

    // Validate file type
    final extension = fileName.split('.').last.toLowerCase();
    if (!_repository.allowedExtensions.contains(extension)) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'File type not allowed. Allowed types: ${_repository.allowedExtensions.join(', ')}',
          code: TdkExceptionType.invalidFileType.code,
        ),
        StackTrace.current,
      );
    }

    // Check if parent folder exists and is a folder
    if (parentFolderId != null) {
      final items = await _repository.getFolder(folderId: parentFolderId);
      if (items.isEmpty) {
        Error.throwWithStackTrace(
          TdkException(
            message: 'Parent folder does not exist',
            code: TdkExceptionType.invalidParentFolderId.code,
          ),
          StackTrace.current,
        );
      }
      final parentFolder = items.first;
      if (parentFolder is! Folder) {
        Error.throwWithStackTrace(
          TdkException(
            message: 'Parent ID does not refer to a folder',
            code: TdkExceptionType.invalidParentFolderId.code,
          ),
          StackTrace.current,
        );
      }
    }

    // Create the file
    await _repository.createFile(
      profileId: _profileId,
      fileName: fileName,
      data: data,
      parentFolderId: parentFolderId,
    );
  }

  /// Gets the ID of a file by its name and parent folder
  Future<String?> getFileId({
    required String fileName,
    String? parentFolderId,
  }) async {
    final items = await _repository.getFolder(
      folderId: parentFolderId,
    );
    try {
      final file = items.firstWhere(
        (item) => item.name == fileName && item is! Folder,
      );
      return file.id;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Folder> createFolder({
    required String folderName,
    required String parentFolderId,
    VaultCancelToken? cancelToken,
  }) async {
    final folderData = await _repository.createFolder(
      profileId: _profileId,
      folderName: folderName,
      parentFolderId: parentFolderId,
    );

    return FileParser.parseFolder(
      id: folderData.id,
      name: folderData.name,
      createdAt: folderData.createdAt,
      modifiedAt: folderData.modifiedAt,
      parentId: folderData.parentId,
    );
  }

  @override
  Future<void> deleteFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) async {
    // Check if file exists
    await _repository.getFile(fileId: fileId);
    await _repository.deleteFile(fileId: fileId);
  }

  @override
  Future<void> deleteFolder({
    required String folderId,
    VaultCancelToken? cancelToken,
  }) async {
    // Check if folder exists
    final items = await _repository.getFolder(folderId: folderId);
    if (items.isEmpty) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Folder does not exist',
          code: TdkExceptionType.invalidFolderId.code,
        ),
        StackTrace.current,
      );
    }

    await _repository.deleteFolder(folderId: folderId);
  }

  @override
  Future<File> getFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) async {
    final fileData = await _repository.getFile(fileId: fileId);

    return FileParser.parseFile(
      id: fileData.id,
      name: fileData.name,
      createdAt: fileData.createdAt,
      modifiedAt: fileData.modifiedAt,
      parentId: fileData.parentId,
    );
  }

  @override
  Future<Uint8List> getFileContent({
    required String fileId,
    VaultCancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final content = await _repository.getFileContent(fileId: fileId);

    // TODO: handle encryption?

    return content;
  }

  @override
  Future<PaginatedList<Item>> getFolder({
    String? folderId,
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  }) async {
    final items = await _repository.getFolder(
      folderId: folderId,
      limit: limit,
      exclusiveStartItemId: exclusiveStartItemId,
    );

    final lastEvaluatedItemId = items.lastOrNull?.id;

    return PaginatedList(
        items: items, lastEvaluatedItemId: lastEvaluatedItemId);
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    // Check if new name has valid extension
    final extension = newName.split('.').last.toLowerCase();
    if (!_repository.allowedExtensions.contains(extension)) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'File type not allowed. Allowed types: ${_repository.allowedExtensions.join(', ')}',
          code: TdkExceptionType.invalidFileType.code,
        ),
        StackTrace.current,
      );
    }

    await _repository.renameFile(
      fileId: fileId,
      newName: newName,
    );
  }

  @override
  Future<void> renameFolder({
    required String folderId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    // Check if folder exists
    final items = await _repository.getFolder(folderId: folderId);
    if (items.isEmpty) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Folder does not exist',
          code: TdkExceptionType.invalidFolderId.code,
        ),
        StackTrace.current,
      );
    }

    await _repository.renameFolder(
      folderId: folderId,
      newName: newName,
    );
  }
}
