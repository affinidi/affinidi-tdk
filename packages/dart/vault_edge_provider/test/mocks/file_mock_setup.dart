import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/src/models/item_data.dart';
import 'package:mocktail/mocktail.dart';

import '../fixtures/file_fixtures.dart';
import 'mock_edge_file_repository.dart';

class FileMockSetup {
  static void setupFallbackValues() {
    registerFallbackValue(Uint8List(0));
    registerFallbackValue(DateTime.now());
  }

  static void setupFileRepositoryMocks(
    MockEdgeFileRepositoryInterface mockRepository,
  ) {
    when(() => mockRepository.createFile(
          profileId: any(named: 'profileId'),
          fileName: any(named: 'fileName'),
          data: any(named: 'data'),
          parentFolderId: any(named: 'parentFolderId'),
        )).thenAnswer((_) async {});

    when(() => mockRepository.getFileId(
          fileName: any(named: 'fileName'),
          parentFolderId: any(named: 'parentFolderId'),
        )).thenAnswer((_) async => null);

    when(() => mockRepository.createFolder(
          profileId: any(named: 'profileId'),
          folderName: any(named: 'folderName'),
          parentFolderId: any(named: 'parentFolderId'),
        )).thenAnswer((_) async => FileFixtures.createMockFolderData());

    when(() => mockRepository.deleteFile(fileId: any(named: 'fileId')))
        .thenAnswer((_) async {});

    when(() => mockRepository.deleteFolder(folderId: any(named: 'folderId')))
        .thenAnswer((_) async => true);

    when(() => mockRepository.getFileData(fileId: any(named: 'fileId')))
        .thenAnswer((_) async => FileFixtures.createMockFileData());

    when(() => mockRepository.getFileContent(fileId: any(named: 'fileId')))
        .thenAnswer((_) async => FileFixtures.fileContent);

    when(() => mockRepository.getFolderData(
          folderId: any(named: 'folderId'),
          limit: any(named: 'limit'),
          exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
        )).thenAnswer((_) async => [
          ItemData(
            id: FileFixtures.folderId,
            name: FileFixtures.folderName,
            createdAt: DateTime.now(),
            modifiedAt: DateTime.now(),
            isFolder: true,
            parentId: FileFixtures.parentFolderId,
          )
        ]);

    when(() => mockRepository.renameFile(
          fileId: any(named: 'fileId'),
          newName: any(named: 'newName'),
        )).thenAnswer((_) async {});

    when(() => mockRepository.renameFolder(
          folderId: any(named: 'folderId'),
          newName: any(named: 'newName'),
        )).thenAnswer((_) async => true);
  }
}
