import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:test/test.dart';

import 'fixtures/profile_fixtures.dart';
import 'fixtures/wallet_fixtures.dart';
import 'mocks/mock_edge_credential_repository.dart';
import 'mocks/mock_edge_file_repository.dart';
import 'mocks/mock_edge_profile_repository.dart';

void main() {
  late MockEdgeProfileRepository mockRepository;
  late MockEdgeFileRepository mockFileRepository;
  late MockEdgeCredentialRepository mockCredentialRepository;
  late var sut = VaultEdgeProfileRepository(
      'id', mockRepository, mockFileRepository, mockCredentialRepository);

  setUp(() {
    mockRepository = MockEdgeProfileRepository();
    mockFileRepository = MockEdgeFileRepository();
    mockCredentialRepository = MockEdgeCredentialRepository();
    sut = VaultEdgeProfileRepository(
        'id', mockRepository, mockFileRepository, mockCredentialRepository);
  });

  group('When edge profile repository is not configured', () {
    group('and creates a profile', () {
      test('it throws an exception', () {
        expect(
            () async => await sut.createProfile(name: 'Name'),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.profleNotConfigured.code)));
      });
    });

    group('and deletes a profile', () {
      test('it throws an exception', () {
        expect(
            () async => await sut.deleteProfile(ProfileFixtures.profile),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.profleNotConfigured.code)));
      });
    });

    group('and updates a profile', () {
      test('it throws an exception', () {
        expect(
            () async => await sut.updateProfile(ProfileFixtures.profile),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.profleNotConfigured.code)));
      });
    });

    group('and retrieves profiles', () {
      test('it throws an exception', () {
        expect(
            () async => await sut.updateProfile(ProfileFixtures.profile),
            throwsA(isA<TdkException>().having((error) => error.code, 'code',
                TdkExceptionType.profleNotConfigured.code)));
      });
    });

    group('and configuring with invalid configuration', () {
      test('it throws error when keyStorage is null', () async {
        expect(
          () async => await sut.configure(RepositoryConfiguration(
            wallet: WalletFixtures.wallet,
            keyStorage: null,
          )),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.missingVaultStore.code,
          )),
        );
      });
    });
  });

  group('When edge profile repository is configured', () {
    setUp(() async {
      await sut.configure(RepositoryConfiguration(
        wallet: WalletFixtures.wallet,
        keyStorage: InMemoryVaultStore(),
      ));
    });

    test('it is configured with keyStorage', () async {
      final isConfigured = await sut.isConfigured();
      expect(isConfigured, isTrue);
    });

    group('and creates a profile', () {
      test('it calls the repository with the correct parameters', () async {
        final name = 'name';
        final description = 'Description';

        await sut.createProfile(name: name, description: description);
        expect(mockRepository.lastCalledCreateProfileName, equals(name));
        expect(mockRepository.lastCalledCreateProfileDescription,
            equals(description));
        expect(mockRepository.lastCalledCreateProfileAccountIndex, isNotNull);
      });
    });

    group('and deletes a profile', () {
      test('it calls the repository with the correct parameters', () async {
        final profile = ProfileFixtures.profile;
        await sut.deleteProfile(profile);

        expect(mockRepository.lastCalledDeletedProfileId, equals(profile.id));
      });
    });

    group('and lists profiles', () {
      test('it returns profiles with file storage', () async {
        // Arrange
        final mockProfile = const EdgeProfile(
          id: '1',
          name: 'Test Profile',
          description: 'Test Description',
          accountIndex: 1,
        );
        mockRepository.mockProfiles = [mockProfile];

        // Act
        final profiles = await sut.listProfiles();

        // Assert
        expect(profiles.length, equals(1));
        final profile = profiles.first;
        expect(profile.fileStorages, isNotEmpty);
        expect(profile.fileStorages['id'], isNotNull);

        // Verify file storage is properly configured
        final fileStorage = profile.fileStorages['id']!;
        expect(fileStorage.id, equals('id'));
      });

      test('it returns multiple profiles with file storage', () async {
        // Arrange
        final mockProfiles = [
          const EdgeProfile(
            id: '1',
            name: 'Test Profile 1',
            description: 'Test Description 1',
            accountIndex: 1,
          ),
          const EdgeProfile(
            id: '2',
            name: 'Test Profile 2',
            description: 'Test Description 2',
            accountIndex: 2,
          ),
        ];
        mockRepository.mockProfiles = mockProfiles;

        // Act
        final profiles = await sut.listProfiles();

        // Assert
        expect(profiles.length, equals(2));

        // Verify each profile has its own file storage
        for (var i = 0; i < profiles.length; i++) {
          final profile = profiles[i];

          expect(profile.fileStorages, isNotEmpty);
          expect(profile.fileStorages['id'], isNotNull);

          final fileStorage = profile.fileStorages['id']!;
          expect(fileStorage.id, equals('id'));
        }
      });

      test('file storage operations use correct profile ID', () async {
        // Arrange
        final mockProfile = const EdgeProfile(
          id: '1',
          name: 'Test Profile',
          description: 'Test Description',
          accountIndex: 1,
        );
        mockRepository.mockProfiles = [mockProfile];

        // Act
        final profiles = await sut.listProfiles();
        final profile = profiles.first;
        final fileStorage = profile.fileStorages['id']!;

        // Test createFile in root folder
        await fileStorage.createFile(
          fileName: 'root.txt',
          data: Uint8List.fromList([1, 2, 3]),
        );

        // Verify the file repository was called with the correct profile ID
        // and no parent
        expect(mockFileRepository.profileId, equals(mockProfile.id));
        expect(mockFileRepository.fileName, equals('root.txt'));
        expect(mockFileRepository.parentId, isNull);

        // Test createFile in parent folder
        await fileStorage.createFile(
          fileName: 'nested.txt',
          data: Uint8List.fromList([4, 5, 6]),
          parentFolderId: 'parent',
        );

        // Verify the file repository was called with the correct profile ID
        // and parent
        expect(mockFileRepository.profileId, equals(mockProfile.id));
        expect(mockFileRepository.fileName, equals('nested.txt'));
        expect(mockFileRepository.parentId, equals('parent'));

        // Test getFile and getFileContent for root file
        final rootFile = await fileStorage.getFile(
            fileId: mockFileRepository.getFileIds().first);
        expect(rootFile.name, equals('root.txt'));
        expect(rootFile.parentId, isNull);

        final rootContent =
            await fileStorage.getFileContent(fileId: rootFile.id);
        expect(rootContent, equals(Uint8List.fromList([1, 2, 3])));

        // Test getFile and getFileContent for nested file
        final nestedFileId = mockFileRepository.getFileIds().where((id) {
          final file = mockFileRepository.files[id];
          return file?.name == 'nested.txt';
        }).first;
        final nestedFile = await fileStorage.getFile(fileId: nestedFileId);
        expect(nestedFile.name, equals('nested.txt'));
        expect(nestedFile.parentId, equals('parent'));

        final nestedContent =
            await fileStorage.getFileContent(fileId: nestedFile.id);
        expect(nestedContent, equals(Uint8List.fromList([4, 5, 6])));

        // Test createFolder
        await fileStorage.createFolder(
          folderName: 'test-folder',
          parentFolderId: 'parent',
        );

        // Verify the folder repository was called with the correct profile ID
        expect(mockFileRepository.folderProfileId, equals(mockProfile.id));
        expect(mockFileRepository.folderName, equals('test-folder'));
        expect(mockFileRepository.folderParentId, equals('parent'));
      });
    });

    group('and updates a profile', () {
      test('it calls the repository with the correct parameters', () async {
        final profile = ProfileFixtures.profile;

        await sut.updateProfile(profile);

        expect(mockRepository.lastCalledUpdateProfile, isNotNull);
        expect(
            mockRepository.lastCalledUpdateProfile!.name, equals(profile.name));
        expect(mockRepository.lastCalledUpdateProfile!.description,
            equals(profile.description));
      });
    });
  });
}
