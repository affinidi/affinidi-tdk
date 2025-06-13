import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:affinidi_tdk_vault_edge_provider/src/exceptions/tdk_exception_type.dart';
import 'package:test/test.dart';

import 'fixtures/profile_fixtures.dart';
import 'fixtures/wallet_fixtures.dart';
import 'mocks/mock_edge_profile_repository.dart';

void main() {
  late MockEdgeProfileRepository mockRepository;
  late var sut = VaultEdgeProfileRepository('id', mockRepository);

  setUp(() {
    mockRepository = MockEdgeProfileRepository();
    sut = VaultEdgeProfileRepository('id', mockRepository);
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
  });

  group('When edge profile repository is configured', () {
    setUp(() async {
      await sut.configure(RepositoryConfiguration(
        wallet: WalletFixtures.wallet,
        keyStorage: InMemoryVaultStore(),
      ));
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
      test('it calls the repository', () async {
        await sut.listProfiles();

        expect(mockRepository.lastCalledListProfiles, isTrue);
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
