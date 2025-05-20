import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockFileStorage extends Mock implements FileStorage {}

class MockCredentialStorage extends Mock implements CredentialStorage {}

class MockSharedStorage extends Mock implements SharedStorage {}

void main() {
  late MockFileStorage mockFileStorage;
  late MockCredentialStorage mockCredentialStorage;
  late MockSharedStorage mockSharedStorage;
  late Profile profile;

  setUp(() {
    mockFileStorage = MockFileStorage();
    mockCredentialStorage = MockCredentialStorage();
    mockSharedStorage = MockSharedStorage();

    profile = Profile(
      id: 'test-id',
      name: 'Test Profile',
      description: 'Test Description',
      accountIndex: 0,
      did: 'did:test:123',
      profileRepositoryId: 'test',
      fileStorages: {'test': mockFileStorage},
      credentialStorages: {'test': mockCredentialStorage},
      sharedStorages: {'test': mockSharedStorage},
    );
  });

  group('Profile Properties', () {
    test('should initialize with correct values', () {
      expect(profile.id, equals('test-id'));
      expect(profile.name, equals('Test Profile'));
      expect(profile.description, equals('Test Description'));
      expect(profile.accountIndex, equals(0));
      expect(profile.did, equals('did:test:123'));
      expect(profile.profileRepositoryId, equals('test'));
      expect(profile.profilePictureURI, isNull);
    });

    test('should allow updating name and description', () {
      profile.name = 'Updated Name';
      profile.description = 'Updated Description';
      profile.profilePictureURI = 'https://example.com/avatar.png';

      expect(profile.name, equals('Updated Name'));
      expect(profile.description, equals('Updated Description'));
      expect(
          profile.profilePictureURI, equals('https://example.com/avatar.png'));
    });
  });

  group('File Storage Operations', () {
    test('should return file storages map', () {
      expect(profile.fileStorages, equals({'test': mockFileStorage}));
    });

    test('should set and get default file storage', () {
      profile.defaultFileStorageId = 'test';
      expect(profile.defaultFileStorage, equals(mockFileStorage));
    });

    test('should throw when setting invalid default file storage', () {
      expect(
        () => profile.defaultFileStorageId = 'invalid',
        throwsA(isA<TdkException>()),
      );
    });

    test('should return first file storage when no default is set', () {
      expect(profile.defaultFileStorage, equals(mockFileStorage));
    });

    test('should return null when no file storages exist', () {
      final emptyProfile = Profile(
        id: 'empty-id',
        name: 'Empty Profile',
        accountIndex: 0,
        did: 'did:test:456',
        profileRepositoryId: 'test',
        fileStorages: {},
        credentialStorages: {},
        sharedStorages: {},
      );

      expect(emptyProfile.defaultFileStorage, isNull);
    });
  });

  group('Credential Storage Operations', () {
    test('should return credential storages map', () {
      expect(
          profile.credentialStorages, equals({'test': mockCredentialStorage}));
    });

    test('should set and get default credential storage', () {
      profile.defaultCredentialStorageId = 'test';
      expect(profile.defaultCredentialStorage, equals(mockCredentialStorage));
    });

    test('should throw when setting invalid default credential storage', () {
      expect(
        () => profile.defaultCredentialStorageId = 'invalid',
        throwsA(isA<TdkException>()),
      );
    });

    test('should return first credential storage when no default is set', () {
      expect(profile.defaultCredentialStorage, equals(mockCredentialStorage));
    });

    test('should return null when no credential storages exist', () {
      final emptyProfile = Profile(
        id: 'empty-id',
        name: 'Empty Profile',
        accountIndex: 0,
        did: 'did:test:456',
        profileRepositoryId: 'test',
        fileStorages: {},
        credentialStorages: {},
        sharedStorages: {},
      );

      expect(emptyProfile.defaultCredentialStorage, isNull);
    });
  });

  group('Shared Storage Operations', () {
    test('should return shared storages list', () {
      expect(profile.sharedStorages, equals([mockSharedStorage]));
    });

    test('should get shared storage by id', () {
      expect(profile.sharedStorage('test'), equals(mockSharedStorage));
    });

    test('should throw when getting non-existent shared storage', () {
      expect(
        () => profile.sharedStorage('invalid'),
        throwsA(isA<TdkException>()),
      );
    });

    test('should add new shared storage', () {
      final newStorage = MockSharedStorage();
      profile.addSharedStorage(id: 'new', sharedStorage: newStorage);
      expect(profile.sharedStorage('new'), equals(newStorage));
    });

    test('should throw when adding duplicate shared storage', () {
      expect(
        () => profile.addSharedStorage(
            id: 'test', sharedStorage: MockSharedStorage()),
        throwsA(isA<TdkException>()),
      );
    });

    test('should remove shared storage', () {
      profile.removeSharedStorage(id: 'test');
      expect(
        () => profile.sharedStorage('test'),
        throwsA(isA<TdkException>()),
      );
    });

    test('should throw when removing non-existent shared storage', () {
      expect(
        () => profile.removeSharedStorage(id: 'invalid'),
        throwsA(isA<TdkException>()),
      );
    });
  });

  group('Profile Initialization', () {
    test('should create profile with minimal required fields', () {
      final minimalProfile = Profile(
        id: 'minimal-id',
        name: 'Minimal Profile',
        accountIndex: 0,
        did: 'did:test:789',
        profileRepositoryId: 'test',
        fileStorages: {},
        credentialStorages: {},
        sharedStorages: {},
      );

      expect(minimalProfile.id, equals('minimal-id'));
      expect(minimalProfile.name, equals('Minimal Profile'));
      expect(minimalProfile.description, isNull);
      expect(minimalProfile.profilePictureURI, isNull);
      expect(minimalProfile.fileStorages, isEmpty);
      expect(minimalProfile.credentialStorages, isEmpty);
      expect(minimalProfile.sharedStorages, isEmpty);
    });

    test('should create profile with all optional fields', () {
      final fullProfile = Profile(
        id: 'full-id',
        name: 'Full Profile',
        description: 'Full Description',
        accountIndex: 0,
        did: 'did:test:101',
        profilePictureURI: 'https://example.com/avatar.png',
        profileRepositoryId: 'test',
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      expect(fullProfile.id, equals('full-id'));
      expect(fullProfile.name, equals('Full Profile'));
      expect(fullProfile.description, equals('Full Description'));
      expect(fullProfile.profilePictureURI,
          equals('https://example.com/avatar.png'));
      expect(fullProfile.fileStorages, isNotEmpty);
      expect(fullProfile.credentialStorages, isNotEmpty);
      expect(fullProfile.sharedStorages, isNotEmpty);
    });
  });
}
