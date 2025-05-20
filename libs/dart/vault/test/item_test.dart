import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:test/test.dart';

void main() {
  group('File', () {
    late File file;
    final now = DateTime.now();

    setUp(() {
      file = File(
        id: 'test-file-id',
        name: 'test-file.txt',
        createdAt: now,
        modifiedAt: now,
        parentId: 'test-folder-id',
      );
    });

    test('should initialize with correct values', () {
      expect(file.id, equals('test-file-id'));
      expect(file.name, equals('test-file.txt'));
      expect(file.createdAt, equals(now));
      expect(file.modifiedAt, equals(now));
      expect(file.parentId, equals('test-folder-id'));
    });

    test('should allow null parentId', () {
      final rootFile = File(
        id: 'root-file-id',
        name: 'root-file.txt',
        createdAt: now,
        modifiedAt: now,
      );

      expect(rootFile.parentId, isNull);
    });

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

  group('Folder', () {
    late Folder folder;
    final now = DateTime.now();

    setUp(() {
      folder = Folder(
        id: 'test-folder-id',
        name: 'test-folder',
        createdAt: now,
        modifiedAt: now,
        parentId: 'parent-folder-id',
      );
    });

    test('should initialize with correct values', () {
      expect(folder.id, equals('test-folder-id'));
      expect(folder.name, equals('test-folder'));
      expect(folder.createdAt, equals(now));
      expect(folder.modifiedAt, equals(now));
      expect(folder.parentId, equals('parent-folder-id'));
    });

    test('should allow null parentId', () {
      final rootFolder = Folder(
        id: 'root-folder-id',
        name: 'root-folder',
        createdAt: now,
        modifiedAt: now,
      );

      expect(rootFolder.parentId, isNull);
    });

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
}
