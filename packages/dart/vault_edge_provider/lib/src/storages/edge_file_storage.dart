import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:dio/dio.dart';

import '../exceptions/tdk_exception_type.dart';
import '../interfaces/edge_file_repository_interface.dart';
import '../services/edge_encryption_service_interface.dart';

/// An Edge based implementation of [FileStorage] for storing and managing
/// files and folders.
class EdgeFileStorage implements FileStorage {
  /// Creates a new instance of [EdgeFileStorage].
  EdgeFileStorage({
    required EdgeFileRepositoryInterface repository,
    required String id,
    required String profileId,
    required EdgeEncryptionServiceInterface encryptionService,
    FileProviderConfiguration? configuration,
  })  : _repository = repository,
        _id = id,
        _profileId = profileId,
        _encryptionService = encryptionService,
        _maxFileSize =
            configuration?.maxFileSize ?? FileUtils.defaultMaxFileSize,
        _allowedExtensions = configuration?.allowedExtensions ??
            FileUtils.defaultAllowedExtensions;

  final EdgeFileRepositoryInterface _repository;
  final String _id;
  final String _profileId;
  final EdgeEncryptionServiceInterface _encryptionService;
  final int _maxFileSize;
  final List<String> _allowedExtensions;

  @override
  String get id => _id;

  // A folderId matching the _profileId should be considered null as it identifies the root folder.
  String? _convertToRootFolderIfNeeded(String? folderId) {
    if (folderId == _profileId || folderId == '') {
      return null;
    }
    return folderId;
  }

  @override
  Future<void> createFile({
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
    VaultCancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
  }) async {
    // Validate file size
    if (!FileUtils.isFileSizeValid(data.length, _maxFileSize)) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              FileUtils.createFileSizeErrorMessage(data.length, _maxFileSize),
          code: TdkExceptionType.invalidFileSize.code,
        ),
        StackTrace.current,
      );
    }

    // Validate file type
    if (!FileUtils.isFileExtensionAllowed(fileName, _allowedExtensions)) {
      Error.throwWithStackTrace(
        TdkException(
          message: FileUtils.createFileExtensionErrorMessage(
              fileName, _allowedExtensions),
          code: TdkExceptionType.invalidFileType.code,
        ),
        StackTrace.current,
      );
    }

    final sanitizedParentFolderId =
        _convertToRootFolderIfNeeded(parentFolderId);

    final encryptedContent = await _encryptionService.encryptData(data);
    final encryptedFileName =
        await _encryptionService.encryptFileName(fileName);

    // Create the file
    await _repository.createFile(
      profileId: _profileId,
      fileName: encryptedFileName,
      data: encryptedContent,
      parentFolderId: sanitizedParentFolderId,
    );
  }

  @override
  Future<Folder> createFolder({
    required String folderName,
    required String parentFolderId,
    VaultCancelToken? cancelToken,
  }) async {
    final sanitizedParentFolderId =
        _convertToRootFolderIfNeeded(parentFolderId);

    final encryptedFolderName =
        await _encryptionService.encryptFileName(folderName);

    final folderData = await _repository.createFolder(
      profileId: _profileId,
      folderName: encryptedFolderName,
      parentFolderId: sanitizedParentFolderId,
    );

    return Folder(
      id: folderData.id,
      name: await _encryptionService.decryptFileName(folderData.name),
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
    final success = await _repository.deleteFolder(folderId: folderId);
    if (!success) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to delete folder',
          code: TdkExceptionType.invalidFolderId.code,
        ),
        StackTrace.current,
      );
    }
  }

  @override
  Future<File> getFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) async {
    final fileData = await _repository.getFile(fileId: fileId);

    return File(
      id: fileData.id,
      name: await _encryptionService.decryptFileName(fileData.name),
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
    final encryptedContent = await _repository.getFileContent(fileId: fileId);

    final decryptedContent =
        await _encryptionService.decryptData(encryptedContent);

    return decryptedContent;
  }

  @override
  Future<PaginatedList<Item>> getFolder({
    String? folderId,
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  }) async {
    final sanitizedFolderId = _convertToRootFolderIfNeeded(folderId);

    // Get the raw folder data from repository
    final rawFolderData = await _repository.getFolder(
      folderId: sanitizedFolderId,
      limit: limit,
      exclusiveStartItemId: exclusiveStartItemId,
    );

    final decryptedItems = await Future.wait(
      rawFolderData.items.map((item) async {
        final decryptedName =
            await _encryptionService.decryptFileName(item.name);

        if (item is Folder) {
          return Folder(
            id: item.id,
            name: decryptedName,
            createdAt: item.createdAt,
            modifiedAt: item.modifiedAt,
            parentId: item.parentId,
          );
        } else {
          return File(
            id: item.id,
            name: decryptedName,
            createdAt: item.createdAt,
            modifiedAt: item.modifiedAt,
            parentId: item.parentId,
          );
        }
      }),
    );

    return PaginatedList(
      items: decryptedItems,
      lastEvaluatedItemId: rawFolderData.lastEvaluatedItemId,
    );
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    // Check if new name has valid extension
    if (!FileUtils.isFileExtensionAllowed(newName, _allowedExtensions)) {
      Error.throwWithStackTrace(
        TdkException(
          message: FileUtils.createFileExtensionErrorMessage(
              newName, _allowedExtensions),
          code: TdkExceptionType.invalidFileType.code,
        ),
        StackTrace.current,
      );
    }

    final encryptedNewName = await _encryptionService.encryptFileName(newName);
    await _repository.renameFile(
      fileId: fileId,
      newName: encryptedNewName,
    );
  }

  @override
  Future<void> renameFolder({
    required String folderId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    final sanitizedFolderId = _convertToRootFolderIfNeeded(folderId);
    if (sanitizedFolderId == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Cannot rename root folder',
          code: TdkExceptionType.invalidFolderId.code,
        ),
        StackTrace.current,
      );
    }

    final encryptedNewName = await _encryptionService.encryptFileName(newName);
    final success = await _repository.renameFolder(
      folderId: folderId,
      newName: encryptedNewName,
    );
    if (!success) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to rename folder',
          code: TdkExceptionType.invalidFolderId.code,
        ),
        StackTrace.current,
      );
    }
  }
}
