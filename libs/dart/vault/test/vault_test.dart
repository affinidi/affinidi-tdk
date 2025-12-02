import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/vault_fixtures.dart';
import 'mocks/mock_vault.dart';

void main() {
  late MockVaultStore mockVaultStore;
  late MockProfileRepository mockProfileRepository;
  late MockFileStorage mockFileStorage;
  late MockCredentialStorage mockCredentialStorage;
  late MockSharedStorage mockSharedStorage;
  late Vault vault;

  setUpAll(() {
    registerFallbackValue(Permissions.read);
    registerFallbackValue(Uint8List.fromList([1, 2, 3]));
  });

  setUp(() async {
    mockVaultStore = MockVaultStore();
    mockProfileRepository = MockProfileRepository();
    mockFileStorage = MockFileStorage();
    mockCredentialStorage = MockCredentialStorage();
    mockSharedStorage = MockSharedStorage();

    // Setup basic mock behavior
    when(() => mockVaultStore.getSeed()).thenAnswer(
        (_) async => Uint8List.fromList(List.generate(32, (i) => i)));
    when(() => mockProfileRepository.isConfigured())
        .thenAnswer((_) async => false);
    when(() => mockProfileRepository.configure(any())).thenAnswer((_) async {});

    vault = await createTestVault(
      vaultStore: mockVaultStore,
      profileRepositories: {'test': mockProfileRepository},
    );
  });

  group('Vault Initialization', () {
    test('should throw when no profile repositories are provided', () async {
      expect(
        () => createTestVault(
          vaultStore: mockVaultStore,
          profileRepositories: {},
        ),
        throwsA(isA<TdkException>()),
      );
    });

    test('should throw when default profile repository ID is invalid',
        () async {
      expect(
        () => createTestVault(
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

    test('should throw when accessing repositories before initialization', () {
      expect(
        () => vault.profileRepositories,
        throwsA(isA<TdkException>()),
      );
      expect(
        () => vault.defaultProfileRepository,
        throwsA(isA<TdkException>()),
      );
    });

    test('should handle concurrent initialization', () async {
      final mockRepo1 = MockProfileRepository();
      final mockRepo2 = MockProfileRepository();

      when(mockRepo1.isConfigured).thenAnswer((_) async => false);
      when(mockRepo2.isConfigured).thenAnswer((_) async => false);
      when(() => mockRepo1.configure(any())).thenAnswer((_) async {});
      when(() => mockRepo2.configure(any())).thenAnswer((_) async {});

      final vault = await createTestVault(
        vaultStore: mockVaultStore,
        profileRepositories: {
          'repo1': mockRepo1,
          'repo2': mockRepo2,
        },
      );

      // Call ensureInitialized multiple times concurrently
      await Future.wait([
        vault.ensureInitialized(),
        vault.ensureInitialized(),
        vault.ensureInitialized(),
      ]);

      // Verify each repository was configured only once
      verify(() => mockRepo1.configure(any())).called(1);
      verify(() => mockRepo2.configure(any())).called(1);
    });

    test('should skip initialization when already initialized', () async {
      await vault.ensureInitialized();
      await vault.ensureInitialized();

      // Verify repository was configured only once
      verify(() => mockProfileRepository.configure(any())).called(1);
    });

    test('should skip configuration of already configured repositories',
        () async {
      when(() => mockProfileRepository.isConfigured())
          .thenAnswer((_) async => true);

      await vault.ensureInitialized();

      // Verify repository was not configured again
      verifyNever(() => mockProfileRepository.configure(any()));
    });

    test('should handle repository configuration error', () async {
      when(() => mockProfileRepository.isConfigured())
          .thenAnswer((_) async => false);
      when(() => mockProfileRepository.configure(any()))
          .thenThrow(Exception('Configuration error'));

      expect(
        () => vault.ensureInitialized(),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('Profile Repository Management', () {
    test('should return first repository as default when none specified',
        () async {
      final mockRepo1 = MockProfileRepository();
      final mockRepo2 = MockProfileRepository();

      when(mockRepo1.isConfigured).thenAnswer((_) async => false);
      when(mockRepo2.isConfigured).thenAnswer((_) async => false);
      when(() => mockRepo1.configure(any())).thenAnswer((_) async {});
      when(() => mockRepo2.configure(any())).thenAnswer((_) async {});

      final vault = await createTestVault(
        vaultStore: mockVaultStore,
        profileRepositories: {
          'repo1': mockRepo1,
          'repo2': mockRepo2,
        },
      );

      await vault.ensureInitialized();
      expect(vault.defaultProfileRepository, equals(mockRepo1));
    });

    test('should allow changing default repository', () async {
      final mockRepo1 = MockProfileRepository();
      final mockRepo2 = MockProfileRepository();

      when(mockRepo1.isConfigured).thenAnswer((_) async => false);
      when(mockRepo2.isConfigured).thenAnswer((_) async => false);
      when(() => mockRepo1.configure(any())).thenAnswer((_) async {});
      when(() => mockRepo2.configure(any())).thenAnswer((_) async {});

      final vault = await createTestVault(
        vaultStore: mockVaultStore,
        profileRepositories: {
          'repo1': mockRepo1,
          'repo2': mockRepo2,
        },
      );

      await vault.ensureInitialized();
      vault.defaultProfileRepositoryId = 'repo2';
      expect(vault.defaultProfileRepository, equals(mockRepo2));
    });

    test('should throw when setting invalid default repository', () async {
      await vault.ensureInitialized();
      expect(
        () => vault.defaultProfileRepositoryId = 'invalid',
        throwsA(isA<TdkException>()),
      );
    });
  });

  group('Profile Operations', () {
    setUp(() async {
      await vault.ensureInitialized();
    });

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

      final vault = await createTestVault(
        vaultStore: mockVaultStore,
        profileRepositories: {
          'repo1': mockRepo1,
          'repo2': mockRepo2,
        },
      );

      await vault.ensureInitialized();
      final profiles = await vault.listProfiles();

      expect(profiles.length, equals(2));
      expect(profiles.map((p) => p.id), containsAll(['profile1', 'profile2']));
    });

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

    test('should throw when sharing non-existent profile', () async {
      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => []);

      expect(
        () => vault.shareProfile(
          profileId: 'non-existent',
          toDid: 'did:test:123',
          permissions: Permissions.all,
        ),
        throwsA(isA<TdkException>()),
      );
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

    test('should handle empty profile list from repository', () async {
      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => []);

      final profiles = await vault.listProfiles();
      expect(profiles, isEmpty);
    });

    test('should handle repository list profiles error', () async {
      when(() => mockProfileRepository.listProfiles())
          .thenThrow(Exception('Repository error'));

      expect(
        () => vault.listProfiles(),
        throwsA(isA<Exception>()),
      );
    });

    test('should handle repository share profile error', () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockProfileRepository.grantProfileAccess(
            accountIndex: any(named: 'accountIndex'),
            granteeDid: any(named: 'granteeDid'),
            permissions: any(named: 'permissions'),
          )).thenThrow(Exception('Share error'));

      expect(
        () => vault.shareProfile(
          profileId: 'test-id',
          toDid: 'did:test:123',
          permissions: Permissions.all,
        ),
        throwsA(isA<Exception>()),
      );
    });

    test('should handle repository add shared profile error', () async {
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
          )).thenThrow(Exception('Add shared profile error'));

      final sharedProfile = VaultFixtures.createSharedProfile(
        profileId: 'shared-id',
        profileDID: 'did:test:456',
      );

      expect(
        () => vault.addSharedProfile(
          profileId: 'test-id',
          sharedProfile: sharedProfile,
        ),
        throwsA(isA<Exception>()),
      );
    });
  });

  group('File and Folder Sharing', () {
    setUp(() async {
      await vault.ensureInitialized();
    });

    test('should share file successfully', () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockProfileRepository.getNodeAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).thenAnswer((_) async => {'permissions': <dynamic>[]});
      when(() => mockProfileRepository.grantNodeAccessMultiple(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            permissionGroups:
                any<List<({List<String> nodeIds, Permissions permissions})>>(
                    named: 'permissionGroups'),
          )).thenAnswer((_) async {});

      await vault.shareFile(
        profileId: 'test-id',
        nodeId: 'node-123',
        toDid: 'did:test:123',
        permissions: Permissions.read,
      );

      verify(() => mockProfileRepository.getNodeAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).called(1);
      verify(() => mockProfileRepository.grantNodeAccessMultiple(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            permissionGroups:
                any<List<({List<String> nodeIds, Permissions permissions})>>(
                    named: 'permissionGroups'),
          )).called(1);
    });

    test('should throw when sharing file for non-existent profile', () async {
      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => []);

      expect(
        () => vault.shareFile(
          profileId: 'non-existent',
          nodeId: 'node-123',
          toDid: 'did:test:123',
          permissions: Permissions.read,
        ),
        throwsA(isA<TdkException>()),
      );
    });

    test('should revoke file access successfully', () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockProfileRepository.revokeNodeAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            nodeIds: ['node-123'],
          )).thenAnswer((_) async {});

      await vault.revokeFileAccess(
        profileId: 'test-id',
        nodeId: 'node-123',
        granteeDid: 'did:test:123',
      );

      verify(() => mockProfileRepository.revokeNodeAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            nodeIds: ['node-123'],
          )).called(1);
    });

    test('should get node access successfully', () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      final expectedPermissions = {
        'permissions': [
          {
            'nodeIds': ['node-123'],
            'rights': ['vfsRead'],
          }
        ]
      };

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockProfileRepository.getNodeAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).thenAnswer((_) async => expectedPermissions);

      final result = await vault.getNodeAccess(
        profileId: 'test-id',
        granteeDid: 'did:test:123',
      );

      expect(result, equals(expectedPermissions));
      verify(() => mockProfileRepository.getNodeAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).called(1);
    });

    test('should throw when repository does not support access sharing',
        () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      final mockRepoWithoutSharing = MockProfileRepositoryOnly();
      when(() => mockRepoWithoutSharing.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockRepoWithoutSharing.isConfigured())
          .thenAnswer((_) async => false);
      when(() => mockRepoWithoutSharing.configure(any()))
          .thenAnswer((_) async {});

      final vaultWithoutSharing = await createTestVault(
        vaultStore: mockVaultStore,
        profileRepositories: {'test': mockRepoWithoutSharing},
      );
      await vaultWithoutSharing.ensureInitialized();

      expect(
        () => vaultWithoutSharing.shareFile(
          profileId: 'test-id',
          nodeId: 'node-123',
          toDid: 'did:test:123',
          permissions: Permissions.read,
        ),
        throwsA(isA<TdkException>()),
      );
    });
  });

  group('Vault Operations', () {
    setUp(() async {
      await vault.ensureInitialized();
    });

    test('should handle vault store get seed error', () async {
      when(() => mockVaultStore.getSeed())
          .thenThrow(Exception('Get seed error'));

      expect(
        () => createTestVault(
          vaultStore: mockVaultStore,
          profileRepositories: {'test': mockProfileRepository},
        ),
        throwsA(isA<Exception>()),
      );
    });

    test('should handle vault store get seed returning null', () async {
      when(() => mockVaultStore.getSeed()).thenAnswer((_) async => null);

      expect(
        () => createTestVault(
          vaultStore: mockVaultStore,
          profileRepositories: {'test': mockProfileRepository},
        ),
        throwsA(isA<TdkException>()),
      );
    });
  });
}
