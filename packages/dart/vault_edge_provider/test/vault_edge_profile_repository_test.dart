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
  late VaultEdgeProfileRepository sut;

  setUp(() {
    mockRepository = MockEdgeProfileRepository();
    mockFileRepository = MockEdgeFileRepository();
    mockCredentialRepository = MockEdgeCredentialRepository();
    sut = VaultEdgeProfileRepository(
        'sut', mockRepository, mockFileRepository, mockCredentialRepository);
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
            () async => await sut.listProfiles(),
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

      test('it throws error when configuration is wrong type', () async {
        expect(
          () async => await sut.configure('invalid configuration'),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.invalidRepositoryConfigurationType.code,
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

    test('it returns the correct id', () async {
      expect(sut.id, equals('sut'));
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
        mockRepository.listProfilesReturnValue = [mockProfile];

        // Act
        final profiles = await sut.listProfiles();

        // Assert
        expect(profiles.length, equals(1));
        final profile = profiles.first;
        expect(profile.defaultFileStorage, isNotNull);
        expect(profile.defaultFileStorage!.id, equals('sut'));
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
        mockRepository.listProfilesReturnValue = mockProfiles;

        // Act
        final profiles = await sut.listProfiles();

        // Assert
        expect(profiles.length, equals(2));

        // Verify each profile has its own file storage
        for (final profile in profiles) {
          expect(profile.defaultFileStorage, isNotNull);
          expect(profile.defaultFileStorage!.id, equals('sut'));
        }
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
