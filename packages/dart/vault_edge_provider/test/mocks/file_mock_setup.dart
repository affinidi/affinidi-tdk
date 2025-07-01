import 'package:mocktail/mocktail.dart';

import '../fixtures/file_fixtures.dart';
import 'mock_edge_file_repository.dart';

class FileMockSetup {
  static void setupFallbackValues() {
    registerFallbackValue(FileFixtures.smallFileData);
    registerFallbackValue(FileFixtures.largeFileData);
    registerFallbackValue(FileFixtures.invalidFileData);
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

    when(() => mockRepository.createFolder(
          profileId: any(named: 'profileId'),
          folderName: any(named: 'folderName'),
          parentFolderId: any(named: 'parentFolderId'),
        )).thenAnswer((_) async => FileFixtures.createMockFolder());

    when(() => mockRepository.getFile(fileId: any(named: 'fileId')))
        .thenAnswer((_) async => FileFixtures.createMockFileData());

    when(() => mockRepository.getFileContent(fileId: any(named: 'fileId')))
        .thenAnswer((_) async => FileFixtures.smallFileData);

    when(() => mockRepository.getFolder(
          folderId: any(named: 'folderId'),
          limit: any(named: 'limit'),
          exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
        )).thenAnswer((invocation) async {
      final folderId =
          invocation.namedArguments[const Symbol('folderId')] as String?;
      if (folderId == 'test-folder-id') {
        return [FileFixtures.createMockFolder(id: folderId)];
      }
      return [];
    });

    when(() => mockRepository.deleteFile(fileId: any(named: 'fileId')))
        .thenAnswer((_) async {});

    when(() => mockRepository.deleteFolder(folderId: any(named: 'folderId')))
        .thenAnswer((_) async => true);

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
