import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:test/test.dart';

import 'fixtures/file_fixtures.dart';
import 'fixtures/folder_fixtures.dart';

void main() {
  group('File', () {
    late File file;

    setUp(() {
      file = FileFixtures.testFile;
    });

    group('initialization', () {
      test('should initialize with correct values', () {
        expect(file.id, equals('test-file-id'));
        expect(file.name, equals('test-file.txt'));
        expect(file.createdAt, equals(FileFixtures.testDate));
        expect(file.modifiedAt, equals(FileFixtures.testDate));
        expect(file.parentId, equals('test-folder-id'));
      });

      test('should allow null parentId', () {
        final rootFile = FileFixtures.rootFile;
        expect(rootFile.parentId, isNull);
      });
    });

    group('immutability', () {
      test('should be immutable', () {
        expect(
          () => (file as dynamic).id = 'new-id',
          throwsA(isA<Error>()),
        );
        expect(
          () => (file as dynamic).name = 'new-name',
          throwsA(isA<Error>()),
        );
        expect(
          () => (file as dynamic).createdAt = DateTime.now(),
          throwsA(isA<Error>()),
        );
        expect(
          () => (file as dynamic).modifiedAt = DateTime.now(),
          throwsA(isA<Error>()),
        );
        expect(
          () => (file as dynamic).parentId = 'new-parent',
          throwsA(isA<Error>()),
        );
      });
    });
  });

  group('Folder', () {
    late Folder folder;

    setUp(() {
      folder = FolderFixtures.testFolder;
    });

    group('initialization', () {
      test('should initialize with correct values', () {
        expect(folder.id, equals('test-folder-id'));
        expect(folder.name, equals('test-folder'));
        expect(folder.createdAt, equals(FolderFixtures.testDate));
        expect(folder.modifiedAt, equals(FolderFixtures.testDate));
        expect(folder.parentId, equals('parent-folder-id'));
      });

      test('should allow null parentId', () {
        final rootFolder = FolderFixtures.rootFolder;
        expect(rootFolder.parentId, isNull);
      });
    });

    group('immutability', () {
      test('should be immutable', () {
        expect(
          () => (folder as dynamic).id = 'new-id',
          throwsA(isA<Error>()),
        );
        expect(
          () => (folder as dynamic).name = 'new-name',
          throwsA(isA<Error>()),
        );
        expect(
          () => (folder as dynamic).createdAt = DateTime.now(),
          throwsA(isA<Error>()),
        );
        expect(
          () => (folder as dynamic).modifiedAt = DateTime.now(),
          throwsA(isA<Error>()),
        );
        expect(
          () => (folder as dynamic).parentId = 'new-parent',
          throwsA(isA<Error>()),
        );
      });
    });
  });
}
