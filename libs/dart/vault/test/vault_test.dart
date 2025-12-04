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
    when(() => mockVaultStore.getAccountIndex()).thenAnswer((_) async => 0);
    when(() => mockVaultStore.setAccountIndex(any())).thenAnswer((_) async {});

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
  });

  group('Profile Sharing', () {
    setUp(() async {
      await vault.ensureInitialized();
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

      final sharedProfile = await vault.shareProfile(
        profileId: 'test-id',
        toDid: 'did:test:123',
        permissions: Permissions.all,
      );

      expect(sharedProfile, isNotNull);
      expect(sharedProfile.profileId, 'test-id');
      expect(sharedProfile.profileDID, 'did:test:123');
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

    test('should throw when profile repository does not support sharing',
        () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      final mockRepositoryOnly = MockProfileRepositoryOnly();
      final vaultWithNonSharingRepo = await createTestVault(
        vaultStore: mockVaultStore,
        profileRepositories: {'test': mockRepositoryOnly},
        defaultProfileRepositoryId: 'test',
      );

      when(mockRepositoryOnly.listProfiles)
          .thenAnswer((_) async => [testProfile]);

      expect(
        () => vaultWithNonSharingRepo.shareProfile(
          profileId: 'test-id',
          toDid: 'did:test:123',
          permissions: Permissions.all,
        ),
        throwsA(isA<TdkException>()),
      );
    });

    test('should throw when adding shared profile with invalid profile',
        () async {
      final sharedProfile = SharedProfileDto(
        kek: Uint8List.fromList([1, 2, 3]),
        profileId: 'shared-id',
        profileDID: 'did:test:shared',
      );

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => []);

      expect(
        () => vault.addSharedProfile(
          profileId: 'non-existent',
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
      when(() => mockProfileRepository.getItemAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).thenAnswer((_) async => {'permissions': <dynamic>[]});
      when(() => mockProfileRepository.grantItemAccessMultiple(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            permissionGroups:
                any<List<({List<String> itemIds, Permissions permissions})>>(
                    named: 'permissionGroups'),
          )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3, 4]));

      await vault.shareItem(
        profileId: 'test-id',
        itemId: 'node-123',
        toDid: 'did:test:123',
        permissions: [Permissions.read],
      );

      verify(() => mockProfileRepository.getItemAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).called(1);
      verify(() => mockProfileRepository.grantItemAccessMultiple(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            permissionGroups:
                any<List<({List<String> itemIds, Permissions permissions})>>(
                    named: 'permissionGroups'),
          )).called(1);
    });

    test('should throw when sharing node for non-existent profile', () async {
      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => []);

      expect(
        () => vault.shareItem(
          profileId: 'non-existent',
          itemId: 'node-123',
          toDid: 'did:test:123',
          permissions: [Permissions.read],
        ),
        throwsA(isA<TdkException>()),
      );
    });

    test('should handle multiple permission groups for same item', () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      const itemId1 = 'NzY3ZjYjNWJ1UksjN3p4SEI=';
      const itemId2 = 'NzY3ZjYjNWJ1UksjblNHcTc=';

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockProfileRepository.getItemAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).thenAnswer((_) async => {
            'permissions': [
              {
                'nodeIds': [itemId1],
                'rights': ['vfsRead'],
              },
              {
                'nodeIds': [itemId2],
                'rights': ['vfsWrite'],
              },
            ]
          });
      when(() => mockProfileRepository.grantItemAccessMultiple(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            permissionGroups:
                any<List<({List<String> itemIds, Permissions permissions})>>(
                    named: 'permissionGroups'),
          )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3, 4]));

      await vault.shareItem(
        profileId: 'test-id',
        itemId: itemId2,
        toDid: 'did:test:123',
        permissions: [Permissions.read, Permissions.write],
      );

      final captured =
          verify(() => mockProfileRepository.grantItemAccessMultiple(
                accountIndex: 0,
                granteeDid: 'did:test:123',
                permissionGroups: captureAny(named: 'permissionGroups'),
              )).captured;

      expect(captured.length, 1);
      final permissionGroups = captured.first
          as List<({List<String> itemIds, Permissions permissions})>;

      expect(permissionGroups.length, greaterThanOrEqualTo(2));
      final item2Groups =
          permissionGroups.where((g) => g.itemIds.contains(itemId2)).toList();
      expect(item2Groups.length, greaterThanOrEqualTo(1));
    });

    test('should merge permissions when same item shared multiple times',
        () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      const itemId = 'NzY3ZjYjNWJ1UksjblNHcTc=';

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockProfileRepository.getItemAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).thenAnswer((_) async => {'permissions': <dynamic>[]});
      when(() => mockProfileRepository.grantItemAccessMultiple(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            permissionGroups:
                any<List<({List<String> itemIds, Permissions permissions})>>(
                    named: 'permissionGroups'),
          )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3, 4]));

      await vault.shareItem(
        profileId: 'test-id',
        itemId: itemId,
        toDid: 'did:test:123',
        permissions: [Permissions.read],
      );

      when(() => mockProfileRepository.getItemAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).thenAnswer((_) async => {
            'permissions': [
              {
                'nodeIds': [itemId],
                'rights': ['vfsRead'],
              },
            ]
          });

      await vault.shareItem(
        profileId: 'test-id',
        itemId: itemId,
        toDid: 'did:test:123',
        permissions: [Permissions.write],
      );

      final captured = verify(
        () => mockProfileRepository.grantItemAccessMultiple(
          accountIndex: 0,
          granteeDid: 'did:test:123',
          permissionGroups: captureAny(named: 'permissionGroups'),
        ),
      ).captured;

      expect(captured.length, 2);
      final secondCallGroups = captured.last
          as List<({List<String> itemIds, Permissions permissions})>;

      final itemGroups =
          secondCallGroups.where((g) => g.itemIds.contains(itemId)).toList();
      expect(itemGroups.length, 1);
      expect(itemGroups.first.permissions, Permissions.all);
    });

    test('should handle revoke for specific item', () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockProfileRepository.revokeItemAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            itemIds: ['node-123'],
          )).thenAnswer((_) async {});

      await vault.revokeItemAccess(
        profileId: 'test-id',
        itemId: 'node-123',
        granteeDid: 'did:test:123',
      );

      verify(() => mockProfileRepository.revokeItemAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
            itemIds: ['node-123'],
          )).called(1);
    });

    test('should get item access successfully', () async {
      final testProfile = VaultFixtures.createTestProfile(
        fileStorages: {'test': mockFileStorage},
        credentialStorages: {'test': mockCredentialStorage},
        sharedStorages: {'test': mockSharedStorage},
      );

      final expectedPermissionsMap = {
        'permissions': [
          {
            'nodeIds': ['node-123'],
            'rights': ['vfsRead'],
          }
        ]
      };

      when(() => mockProfileRepository.listProfiles())
          .thenAnswer((_) async => [testProfile]);
      when(() => mockProfileRepository.getItemAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).thenAnswer((_) async => expectedPermissionsMap);

      final result = await vault.getItemAccess(
        profileId: 'test-id',
        granteeDid: 'did:test:123',
      );

      expect(result.length, equals(1));
      expect(result[0].itemIds, equals(['node-123']));
      expect(result[0].rights, contains('vfsRead'));
      verify(() => mockProfileRepository.getItemAccess(
            accountIndex: 0,
            granteeDid: 'did:test:123',
          )).called(1);
    });

    group('Complex Permission Scenarios', () {
      test(
          'should handle same item in multiple permission groups with different rights',
          () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        const itemId1 = 'NzY3ZjYjNWJ1UksjN3p4SEI=';
        const itemId2 = 'NzY3ZjYjNWJ1UksjblNHcTc=';
        const itemId3 = 'abc';

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);
        when(() => mockProfileRepository.getItemAccess(
              accountIndex: 0,
              granteeDid: 'did:test:123',
            )).thenAnswer((_) async => {
              'permissions': [
                {
                  'nodeIds': [itemId1],
                  'rights': ['vfsRead'],
                },
                {
                  'nodeIds': [itemId2],
                  'rights': ['vfsWrite'],
                },
                {
                  'nodeIds': [itemId2, itemId3],
                  'rights': ['vfsRead', 'vfsWrite'],
                },
              ]
            });
        when(() => mockProfileRepository.grantItemAccessMultiple(
              accountIndex: 0,
              granteeDid: 'did:test:123',
              permissionGroups:
                  any<List<({List<String> itemIds, Permissions permissions})>>(
                      named: 'permissionGroups'),
            )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3, 4]));

        final access = await vault.getItemAccess(
          profileId: 'test-id',
          granteeDid: 'did:test:123',
        );

        expect(access.length, 3);

        final item2Groups =
            access.where((p) => p.itemIds.contains(itemId2)).toList();
        expect(item2Groups.length, 2);

        final writeOnlyGroup = item2Groups.firstWhere(
          (p) => p.rights.contains('vfsWrite') && !p.rights.contains('vfsRead'),
          orElse: () => item2Groups.first,
        );
        final readWriteGroup = item2Groups.firstWhere(
          (p) => p.rights.contains('vfsRead') && p.rights.contains('vfsWrite'),
          orElse: () => item2Groups.last,
        );

        expect(writeOnlyGroup.rights, contains('vfsWrite'));
        expect(readWriteGroup.rights, containsAll(['vfsRead', 'vfsWrite']));
      });

      test('should handle revoke removing only specific rights, not all',
          () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        const itemId1 = 'NzY3ZjYjNWJ1UksjN3p4SEI=';
        const itemId2 = 'NzY3ZjYjNWJ1UksjblNHcTc=';
        const itemId3 = 'abc';

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);
        when(() => mockProfileRepository.getItemAccess(
              accountIndex: 0,
              granteeDid: 'did:test:123',
            )).thenAnswer((_) async => {
              'permissions': [
                {
                  'nodeIds': [itemId1],
                  'rights': ['vfsRead'],
                },
                {
                  'nodeIds': [itemId2],
                  'rights': ['vfsWrite'],
                },
                {
                  'nodeIds': [itemId2, itemId3],
                  'rights': ['vfsRead', 'vfsWrite'],
                },
              ]
            });

        when(() => mockProfileRepository.grantItemAccessMultiple(
              accountIndex: 0,
              granteeDid: 'did:test:123',
              permissionGroups:
                  any<List<({List<String> itemIds, Permissions permissions})>>(
                      named: 'permissionGroups'),
            )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3, 4]));

        await vault.revokeItemAccess(
          profileId: 'test-id',
          itemId: itemId2,
          granteeDid: 'did:test:123',
          permissions: [Permissions.write],
        );

        final captured =
            verify(() => mockProfileRepository.grantItemAccessMultiple(
                  accountIndex: 0,
                  granteeDid: 'did:test:123',
                  permissionGroups: captureAny(named: 'permissionGroups'),
                )).captured;

        expect(captured.length, 1);
        final permissionGroups = captured.first
            as List<({List<String> itemIds, Permissions permissions})>;

        expect(permissionGroups.length, greaterThanOrEqualTo(1));

        expect(
          permissionGroups.any((g) =>
              g.itemIds.contains(itemId1) && g.permissions == Permissions.read),
          isTrue,
        );
        expect(
          permissionGroups.any((g) =>
              g.itemIds.length == 1 &&
              g.itemIds.contains(itemId2) &&
              g.permissions == Permissions.write),
          isFalse,
        );
      });

      test('should handle adding permissions creating new groups', () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        const itemId1 = 'NzY3ZjYjNWJ1UksjN3p4SEI=';

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);
        when(() => mockProfileRepository.getItemAccess(
              accountIndex: 0,
              granteeDid: 'did:test:123',
            )).thenAnswer((_) async => {
              'permissions': [
                {
                  'nodeIds': [itemId1],
                  'rights': ['vfsRead'],
                },
              ]
            });
        when(() => mockProfileRepository.grantItemAccessMultiple(
              accountIndex: 0,
              granteeDid: 'did:test:123',
              permissionGroups:
                  any<List<({List<String> itemIds, Permissions permissions})>>(
                      named: 'permissionGroups'),
            )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3, 4]));

        await vault.shareItem(
          profileId: 'test-id',
          itemId: itemId1,
          toDid: 'did:test:123',
          permissions: [Permissions.write],
        );

        final captured =
            verify(() => mockProfileRepository.grantItemAccessMultiple(
                  accountIndex: 0,
                  granteeDid: 'did:test:123',
                  permissionGroups: captureAny(named: 'permissionGroups'),
                )).captured;

        expect(captured.length, 1);
        final permissionGroups = captured.first
            as List<({List<String> itemIds, Permissions permissions})>;
        expect(permissionGroups.length, greaterThanOrEqualTo(1));

        final item1Groups =
            permissionGroups.where((g) => g.itemIds.contains(itemId1)).toList();
        expect(item1Groups.length, greaterThanOrEqualTo(1));
      });

      test(
          'should handle equivalent permission groups (read+write vs separate)',
          () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        const itemId = 'NzY3ZjYjNWJ1UksjblNHcTc=';

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);
        when(() => mockProfileRepository.getItemAccess(
              accountIndex: 0,
              granteeDid: 'did:test:123',
            )).thenAnswer((_) async => {'permissions': <dynamic>[]});
        when(() => mockProfileRepository.grantItemAccessMultiple(
              accountIndex: 0,
              granteeDid: 'did:test:123',
              permissionGroups:
                  any<List<({List<String> itemIds, Permissions permissions})>>(
                      named: 'permissionGroups'),
            )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3, 4]));

        await vault.shareItem(
          profileId: 'test-id',
          itemId: itemId,
          toDid: 'did:test:123',
          permissions: [Permissions.read, Permissions.write],
        );

        final captured =
            verify(() => mockProfileRepository.grantItemAccessMultiple(
                  accountIndex: 0,
                  granteeDid: 'did:test:123',
                  permissionGroups: captureAny(named: 'permissionGroups'),
                )).captured;

        expect(captured.length, 1);
        final permissionGroups = captured.first
            as List<({List<String> itemIds, Permissions permissions})>;

        final itemGroups =
            permissionGroups.where((g) => g.itemIds.contains(itemId)).toList();
        expect(itemGroups.length, greaterThanOrEqualTo(1));

        final itemGroup = itemGroups.first;
        expect(itemGroup.permissions, Permissions.all);
      });
    });
  });
}
