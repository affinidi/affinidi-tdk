import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/vault_fixtures.dart';
import 'mocks/mock_vault.dart';

void main() {
  late MockDeterministicWallet mockWallet;
  late MockVaultStore mockVaultStore;
  late MockProfileRepository mockProfileRepository;
  late MockFileStorage mockFileStorage;
  late MockCredentialStorage mockCredentialStorage;
  late MockSharedStorage mockSharedStorage;
  late Vault vault;

  setUpAll(() {
    registerFallbackValue(Permissions.read);
    registerFallbackValue(FakeKeyStore());
    registerFallbackValue(Uint8List.fromList([1, 2, 3]));
  });

  setUp(() {
    mockWallet = MockDeterministicWallet();
    mockVaultStore = MockVaultStore();
    mockProfileRepository = MockProfileRepository();
    mockFileStorage = MockFileStorage();
    mockCredentialStorage = MockCredentialStorage();
    mockSharedStorage = MockSharedStorage();

    when(() => mockProfileRepository.isConfigured())
        .thenAnswer((_) async => false);
    when(() => mockProfileRepository.configure(any())).thenAnswer((_) async {});
    when(() => mockProfileRepository.grantProfileAccess(
          accountIndex: any(named: 'accountIndex'),
          granteeDid: any(named: 'granteeDid'),
          permissions: any(named: 'permissions'),
        )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3]));
    when(() => mockProfileRepository.listProfiles())
        .thenAnswer((_) async => []);

    vault = Vault(
      wallet: mockWallet,
      vaultStore: mockVaultStore,
      profileRepositories: {'test': mockProfileRepository},
    );
  });

  group('Vault Initialization', () {
    test('should throw when no profile repositories are provided', () {
      expect(
        () => Vault(
          wallet: mockWallet,
          vaultStore: mockVaultStore,
          profileRepositories: {},
        ),
        throwsA(isA<TdkException>()),
      );
    });

    test('should throw when default profile repository ID is invalid', () {
      expect(
        () => Vault(
          wallet: mockWallet,
          vaultStore: mockVaultStore,
          profileRepositories: {'test': mockProfileRepository},
          defaultProfileRepositoryId: 'invalid',
        ),
        throwsA(isA<TdkException>()),
      );
    });

    test('should initialize successfully with valid configuration', () async {
      await vault.ensureInitialized();
      expect(vault.profileRepositories['test'], equals(mockProfileRepository));
    });

    test('should create vault from vault store', () async {
      final vault = await TestVault.fromVaultStore(
        mockVaultStore,
        profileRepositories: {'test': mockProfileRepository},
      );

      await vault.ensureInitialized();
      expect(vault.profileRepositories['test'], equals(mockProfileRepository));
    });

    test('should configure all profile repositories on initialization',
        () async {
      final mockRepo1 = MockProfileRepository();
      final mockRepo2 = MockProfileRepository();

      when(mockRepo1.isConfigured).thenAnswer((_) async => false);
      when(mockRepo2.isConfigured).thenAnswer((_) async => false);
      when(() => mockRepo1.configure(any())).thenAnswer((_) async {});
      when(() => mockRepo2.configure(any())).thenAnswer((_) async {});

      final vault = Vault(
        wallet: mockWallet,
        vaultStore: mockVaultStore,
        profileRepositories: {
          'repo1': mockRepo1,
          'repo2': mockRepo2,
        },
      );

      await vault.ensureInitialized();

      verify(mockRepo1.isConfigured).called(1);
      verify(mockRepo2.isConfigured).called(1);
      verify(() => mockRepo1.configure(any())).called(1);
      verify(() => mockRepo2.configure(any())).called(1);
    });

    test('should skip configuration for already configured repositories',
        () async {
      final mockRepo1 = MockProfileRepository();
      final mockRepo2 = MockProfileRepository();

      when(mockRepo1.isConfigured).thenAnswer((_) async => true);
      when(mockRepo2.isConfigured).thenAnswer((_) async => false);
      when(() => mockRepo2.configure(any())).thenAnswer((_) async {});

      final vault = Vault(
        wallet: mockWallet,
        vaultStore: mockVaultStore,
        profileRepositories: {
          'repo1': mockRepo1,
          'repo2': mockRepo2,
        },
      );

      await vault.ensureInitialized();

      verify(mockRepo1.isConfigured).called(1);
      verify(mockRepo2.isConfigured).called(1);
      verifyNever(() => mockRepo1.configure(any()));
      verify(() => mockRepo2.configure(any())).called(1);
    });

    test('should handle concurrent initialization calls', () async {
      final mockRepo = MockProfileRepository();
      when(mockRepo.isConfigured).thenAnswer((_) async => false);
      when(() => mockRepo.configure(any())).thenAnswer((_) async {});

      final vault = Vault(
        wallet: mockWallet,
        vaultStore: mockVaultStore,
        profileRepositories: {'test': mockRepo},
      );

      await Future.wait([
        vault.ensureInitialized(),
        vault.ensureInitialized(),
        vault.ensureInitialized(),
      ]);

      verify(mockRepo.isConfigured).called(1);
      verify(() => mockRepo.configure(any())).called(1);
    });

    test('should handle initialization when _initializing is not null',
        () async {
      final mockRepo = MockProfileRepository();
      when(mockRepo.isConfigured).thenAnswer((_) async => false);
      when(() => mockRepo.configure(any())).thenAnswer((_) async {
        await Future<void>.delayed(const Duration(milliseconds: 100));
      });

      final vault = Vault(
        wallet: mockWallet,
        vaultStore: mockVaultStore,
        profileRepositories: {'test': mockRepo},
      );

      final init1 = vault.ensureInitialized();
      final init2 = vault.ensureInitialized();

      await Future.wait([init1, init2]);

      verify(mockRepo.isConfigured).called(1);
      verify(() => mockRepo.configure(any())).called(1);
    });
  });

  group('Vault Operations', () {
    test(
        'should throw when accessing profileRepositories before initialization',
        () {
      expect(
        () => vault.profileRepositories,
        throwsA(isA<TdkException>()),
      );
    });

    test(
        'should throw when accessing defaultProfileRepository before initialization',
        () {
      expect(
        () => vault.defaultProfileRepository,
        throwsA(isA<TdkException>()),
      );
    });

    test('should set default profile repository ID', () async {
      await vault.ensureInitialized();
      vault.defaultProfileRepositoryId = 'test';
      expect(vault.defaultProfileRepository, equals(mockProfileRepository));
    });

    test('should throw when setting invalid default profile repository ID',
        () async {
      await vault.ensureInitialized();
      expect(
        () => vault.defaultProfileRepositoryId = 'invalid',
        throwsA(isA<TdkException>()),
      );
    });

    test('should return first repository when no default is set', () async {
      final mockRepo1 = MockProfileRepository();
      final mockRepo2 = MockProfileRepository();

      when(mockRepo1.isConfigured).thenAnswer((_) async => false);
      when(mockRepo2.isConfigured).thenAnswer((_) async => false);
      when(() => mockRepo1.configure(any())).thenAnswer((_) async {});
      when(() => mockRepo2.configure(any())).thenAnswer((_) async {});

      final vault = Vault(
        wallet: mockWallet,
        vaultStore: mockVaultStore,
        profileRepositories: {
          'repo1': mockRepo1,
          'repo2': mockRepo2,
        },
      );

      await vault.ensureInitialized();
      expect(vault.defaultProfileRepository, equals(mockRepo1));
    });

    test('should return specified repository when default is set', () async {
      final mockRepo1 = MockProfileRepository();
      final mockRepo2 = MockProfileRepository();

      when(mockRepo1.isConfigured).thenAnswer((_) async => false);
      when(mockRepo2.isConfigured).thenAnswer((_) async => false);
      when(() => mockRepo1.configure(any())).thenAnswer((_) async {});
      when(() => mockRepo2.configure(any())).thenAnswer((_) async {});

      final vault = Vault(
        wallet: mockWallet,
        vaultStore: mockVaultStore,
        profileRepositories: {
          'repo1': mockRepo1,
          'repo2': mockRepo2,
        },
        defaultProfileRepositoryId: 'repo2',
      );

      await vault.ensureInitialized();
      expect(vault.defaultProfileRepository, equals(mockRepo2));
    });
  });

  group('Profile Operations', () {
    setUp(() async {
      await vault.ensureInitialized();
    });

    group('List Profiles', () {
      test('should list profiles from all repositories', () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);

        final profiles = await vault.listProfiles();
        expect(profiles.length, equals(1));
        expect(profiles.first.id, equals('test-id'));
        expect(profiles.first.name, equals('Test Profile'));
      });

      test('should return empty list when no profiles exist', () async {
        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => []);

        final profiles = await vault.listProfiles();
        expect(profiles, isEmpty);
      });

      test('should throw when vault is not initialized', () async {
        final uninitializedVault = Vault(
          wallet: mockWallet,
          vaultStore: mockVaultStore,
          profileRepositories: {'test': mockProfileRepository},
        );

        expect(
          uninitializedVault.listProfiles,
          throwsA(isA<TdkException>()),
        );
      });

      test('should combine profiles from multiple repositories', () async {
        final mockRepo1 = MockProfileRepository();
        final mockRepo2 = MockProfileRepository();

        when(mockRepo1.isConfigured).thenAnswer((_) async => false);
        when(mockRepo2.isConfigured).thenAnswer((_) async => false);
        when(() => mockRepo1.configure(any())).thenAnswer((_) async {});
        when(() => mockRepo2.configure(any())).thenAnswer((_) async {});

        final profile1 = VaultFixtures.createTestProfile(
          id: 'profile1',
          name: 'Profile 1',
          profileRepositoryId: 'repo1',
        );

        final profile2 = VaultFixtures.createTestProfile(
          id: 'profile2',
          name: 'Profile 2',
          accountIndex: 1,
          did: 'did:test:2',
          profileRepositoryId: 'repo2',
        );

        when(mockRepo1.listProfiles).thenAnswer((_) async => [profile1]);
        when(mockRepo2.listProfiles).thenAnswer((_) async => [profile2]);

        final vault = Vault(
          wallet: mockWallet,
          vaultStore: mockVaultStore,
          profileRepositories: {
            'repo1': mockRepo1,
            'repo2': mockRepo2,
          },
        );

        await vault.ensureInitialized();
        final profiles = await vault.listProfiles();

        expect(profiles.length, equals(2));
        expect(
            profiles.map((p) => p.id), containsAll(['profile1', 'profile2']));
      });
    });

    group('Share Profile', () {
      test('should share profile successfully', () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);
        when(() => mockProfileRepository.grantProfileAccess(
              accountIndex: 0,
              granteeDid: 'did:test:123',
              permissions: Permissions.all,
            )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3]));

        final result = await vault.shareProfile(
          profileId: 'test-id',
          toDid: 'did:test:123',
          permissions: Permissions.all,
        );

        expect(result.profileId, equals('test-id'));
        expect(result.profileDID, equals('did:test:123'));
        expect(result.kek, equals(Uint8List.fromList([1, 2, 3])));
      });

      test('should throw when vault is not initialized', () async {
        final uninitializedVault = Vault(
          wallet: mockWallet,
          vaultStore: mockVaultStore,
          profileRepositories: {'test': mockProfileRepository},
        );

        expect(
          () => uninitializedVault.shareProfile(
            profileId: 'test-id',
            toDid: 'did:test:123',
            permissions: Permissions.all,
          ),
          throwsA(isA<TdkException>()),
        );
      });

      test('should throw when profile repository not found', () async {
        final testProfile = VaultFixtures.createTestProfile(
          profileRepositoryId: 'non-existent',
        );

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);

        expect(
          () => vault.shareProfile(
            profileId: 'test-id',
            toDid: 'did:test:123',
            permissions: Permissions.all,
          ),
          throwsA(isA<TdkException>()),
        );
      });
    });

    test('should add shared profile', () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockProfileRepository.receiveProfileAccess(
            accountIndex: any(named: 'accountIndex'),
            profileId: any(named: 'profileId'),
            kek: any(named: 'kek'),
            grantedProfileDid: any(named: 'grantedProfileDid'),
          )).thenAnswer((_) async {});

      await vault.ensureInitialized();

      final sharedProfile = VaultFixtures.createSharedProfile(
        profileId: 'shared-id',
        profileDID: 'did:test:456',
      );

      await vault.addSharedProfile(
        profileId: 'test-id',
        sharedProfile: sharedProfile,
      );

      verify(() => mockProfileRepository.receiveProfileAccess(
            accountIndex: 0,
            profileId: 'shared-id',
            kek: Uint8List.fromList([1, 2, 3]),
            grantedProfileDid: 'did:test:456',
          )).called(1);
    });
  });
}
