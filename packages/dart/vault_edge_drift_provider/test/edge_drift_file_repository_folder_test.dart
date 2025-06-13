import 'package:affinidi_tdk_vault_edge_drift_provider/affinidi_tdk_vault_edge_drift_provider.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:test/test.dart';

void main() {
  late Database database;
  late EdgeDriftFileRepository sut;
  final profileId = 'test_profile_id';

  setUp(() {
    database = Database(NativeDatabase.memory());
    sut = EdgeDriftFileRepository(database: database);
  });

  tearDown(() {
    database.close();
  });

  group('When creating a folder', () {
    group('and the folder is at root level', () {
      test('it correctly creates the database entry', () async {
        final folderName = 'Folder';
        final folder = await sut.createFolder(
            profileId: profileId, folderName: folderName);

        expect(folder.name, equals(folderName));
        expect(folder.parentId, isNull);
      });
    });

    group('and the folder has a parent', () {
      test('it correctly creates the database entry', () async {
        final parentFolderName = 'Parent Folder';
        final parentFolder = await sut.createFolder(
          profileId: profileId,
          folderName: parentFolderName,
        );

        final nestedFolderName = 'Nested Folder';
        final nestedFolder = await sut.createFolder(
          profileId: profileId,
          folderName: nestedFolderName,
          parentFolderId: parentFolder.id,
        );

        expect(nestedFolder.name, equals(nestedFolderName));
        expect(nestedFolder.parentId, parentFolder.id);
      });
    });

    group('and the parent does not exist', () {
      test('it throws an exception', () async {
        final nestedFolderName = 'Nested Folder';

        expect(
            () async => await sut.createFolder(
                  profileId: profileId,
                  folderName: nestedFolderName,
                  parentFolderId: 'undefined',
                ),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.invalidParentFolderId.code)));
      });
    });
  });

  group('When deleting a folder', () {
    group('and the folder exists', () {
      late Folder folder;
      setUp(() async {
        folder = await sut.createFolder(
            profileId: profileId, folderName: 'Folder to delete');
      });

      test('it correclty deletes the folder', () async {
        final success = await sut.deleteFolder(folderId: folder.id);
        expect(success, isTrue);
      });
    });

    group('and the folder has content', () {
      late Folder parentFolder;
      setUp(() async {
        parentFolder = await sut.createFolder(
            profileId: profileId, folderName: 'Parent folder');
        await sut.createFolder(
          profileId: profileId,
          folderName: 'Nested Folder',
          parentFolderId: parentFolder.id,
        );
      });

      test('it throws an exception', () async {
        expect(
            () async => await sut.deleteFolder(folderId: parentFolder.id),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.unableToDeleteFolderWithContent.code)));
      });
    });

    group('and the folder does not exist', () {
      test('it throws an exception', () async {
        expect(
            () async => await sut.deleteFolder(folderId: 'invalid_folder_id'),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.invalidFolderId.code)));
      });
    });
  });

  group('When renaming a folder', () {
    group('and the folder exists', () {
      late Folder folder;
      setUp(() async {
        folder = await sut.createFolder(
            profileId: profileId, folderName: 'Folder to rename');
      });

      test('it correctly renames the folder', () async {
        final success = await sut.renameFolder(
            folderId: folder.id, newName: 'Renamed folder');
        expect(success, isTrue);
      });
    });

    group('and the folder does not exists', () {
      test('it throws an exception', () async {
        expect(
            () async => await sut.renameFolder(
                folderId: 'invalid_folder_id', newName: 'Renamed folder'),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.invalidFolderId.code)));
      });
    });
  });
}
