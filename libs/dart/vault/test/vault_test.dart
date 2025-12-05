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

    group('Multiple Permission Scenarios', () {
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
    });

    group('ItemPermissionsPolicy', () {
      test('should get and set permissions policy efficiently', () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        final expectedPermissionsMap = {
          'permissions': [
            {
              'nodeIds': ['node-1'],
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
        when(() => mockProfileRepository.grantItemAccessMultiple(
              accountIndex: 0,
              granteeDid: 'did:test:123',
              permissionGroups:
                  any<List<({List<String> itemIds, Permissions permissions})>>(
                      named: 'permissionGroups'),
            )).thenAnswer((_) async => Uint8List.fromList([1, 2, 3, 4]));

        final policy = await vault.getItemPermissionsPolicy(
          profileId: 'test-id',
          granteeDid: 'did:test:123',
        );

        expect(policy.permissions.length, 1);
        expect(policy.permissions[0].itemIds, contains('node-1'));

        policy.addPermission(['node-2'], [Permissions.write]);
        policy.removePermission(['node-1'], []);

        await vault.setItemAccess(
          profileId: 'test-id',
          granteeDid: 'did:test:123',
          policy: policy,
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

      test('should handle multiple add and remove operations locally',
          () async {
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

        final policy = await vault.getItemPermissionsPolicy(
          profileId: 'test-id',
          granteeDid: 'did:test:123',
        );

        policy.addPermission(['file-1'], [Permissions.read]);
        policy.addPermission(['file-2'], [Permissions.write]);
        policy.addPermission(['file-3'], [Permissions.read, Permissions.write]);

        policy.removePermission(['file-2'], []);

        await vault.setItemAccess(
          profileId: 'test-id',
          granteeDid: 'did:test:123',
          policy: policy,
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

      test('should handle empty policy and clearing all permissions', () async {
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

        final policy = await vault.getItemPermissionsPolicy(
          profileId: 'test-id',
          granteeDid: 'did:test:123',
        );

        expect(policy.permissions, isEmpty);

        policy.addPermission(['file-1'], [Permissions.read]);
        policy.addPermission(['file-2'], [Permissions.write]);

        policy.clear();

        expect(policy.permissions, isEmpty);

        await vault.setItemAccess(
          profileId: 'test-id',
          granteeDid: 'did:test:123',
          policy: policy,
        );

        verify(() => mockProfileRepository.grantItemAccessMultiple(
              accountIndex: 0,
              granteeDid: 'did:test:123',
              permissionGroups:
                  any<List<({List<String> itemIds, Permissions permissions})>>(
                      named: 'permissionGroups'),
            )).called(1);
      });

      test('should throw when getting policy for non-existent profile',
          () async {
        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => []);

        expect(
          () => vault.getItemPermissionsPolicy(
            profileId: 'non-existent',
            granteeDid: 'did:test:123',
          ),
          throwsA(isA<TdkException>()),
        );
      });

      test('should throw when getting policy with unsupported repository',
          () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
          profileRepositoryId: 'non-sharing-repo',
        );

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);

        expect(
          () => vault.getItemPermissionsPolicy(
            profileId: 'test-id',
            granteeDid: 'did:test:123',
          ),
          throwsA(isA<TdkException>()),
        );
      });

      test('should throw when setting policy for non-existent profile',
          () async {
        final policy = ItemPermissionsPolicy.empty();

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => []);

        expect(
          () => vault.setItemAccess(
            profileId: 'non-existent',
            granteeDid: 'did:test:123',
            policy: policy,
          ),
          throwsA(isA<TdkException>()),
        );
      });

      test('should throw when setting policy with unsupported repository',
          () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
          profileRepositoryId: 'non-sharing-repo',
        );
        final policy = ItemPermissionsPolicy.empty();

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);

        expect(
          () => vault.setItemAccess(
            profileId: 'test-id',
            granteeDid: 'did:test:123',
            policy: policy,
          ),
          throwsA(isA<TdkException>()),
        );
      });
    });

    group('acceptSharedItems', () {
      test('should accept shared item successfully', () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        final sharedItem = SharedItemsDto(
          kek: Uint8List.fromList([1, 2, 3, 4]),
          ownerProfileId: 'owner-profile-id',
          ownerProfileDID: 'did:key:owner-did',
          itemIds: ['item-1', 'item-2'],
        );

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);
        when(() => mockProfileRepository.receiveItemAccess(
              accountIndex: 0,
              ownerProfileId: 'owner-profile-id',
              kek: Uint8List.fromList([1, 2, 3, 4]),
              ownerProfileDid: 'did:key:owner-did',
            )).thenAnswer((_) async {});

        await vault.acceptSharedItems(
          profileId: 'test-id',
          sharedItems: sharedItem,
        );

        verify(() => mockProfileRepository.receiveItemAccess(
              accountIndex: 0,
              ownerProfileId: 'owner-profile-id',
              kek: Uint8List.fromList([1, 2, 3, 4]),
              ownerProfileDid: 'did:key:owner-did',
            )).called(1);
      });

      test('should throw when accepting shared item for non-existent profile',
          () async {
        final sharedItem = SharedItemsDto(
          kek: Uint8List.fromList([1, 2, 3, 4]),
          ownerProfileId: 'owner-profile-id',
          ownerProfileDID: 'did:key:owner-did',
          itemIds: ['item-1'],
        );

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => []);

        expect(
          () => vault.acceptSharedItems(
            profileId: 'non-existent',
            sharedItems: sharedItem,
          ),
          throwsA(isA<TdkException>()),
        );
      });

      test(
          'should throw when accepting shared item with unsupported repository',
          () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
          profileRepositoryId: 'non-sharing-repo',
        );

        final sharedItem = SharedItemsDto(
          kek: Uint8List.fromList([1, 2, 3, 4]),
          ownerProfileId: 'owner-profile-id',
          ownerProfileDID: 'did:key:owner-did',
          itemIds: ['item-1'],
        );

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);

        expect(
          () => vault.acceptSharedItems(
            profileId: 'test-id',
            sharedItems: sharedItem,
          ),
          throwsA(isA<TdkException>()),
        );
      });
    });

    group('readSharedItem', () {
      test('should read shared item successfully', () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        final expectedContent = Uint8List.fromList([1, 2, 3, 4, 5]);

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);
        when(() => mockSharedStorage.id).thenReturn('owner-profile-id');
        when(() => mockSharedStorage.getFileContent(
              fileId: 'item-123',
            )).thenAnswer((_) async => expectedContent);

        final content = await vault.readSharedItem(
          ownerProfileId: 'owner-profile-id',
          itemId: 'item-123',
        );

        expect(content, equals(expectedContent));
        verify(() => mockSharedStorage.getFileContent(
              fileId: 'item-123',
            )).called(1);
      });

      test('should throw when reading shared item with no profiles', () async {
        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => []);

        expect(
          () => vault.readSharedItem(
            ownerProfileId: 'owner-profile-id',
            itemId: 'item-123',
          ),
          throwsA(isA<TdkException>()),
        );
      });

      test('should throw when shared storage not found', () async {
        final testProfile = VaultFixtures.createTestProfile(
          fileStorages: {'test': mockFileStorage},
          credentialStorages: {'test': mockCredentialStorage},
          sharedStorages: {'test': mockSharedStorage},
        );

        when(() => mockProfileRepository.listProfiles())
            .thenAnswer((_) async => [testProfile]);
        when(() => mockSharedStorage.id).thenReturn('different-profile-id');

        expect(
          () => vault.readSharedItem(
            ownerProfileId: 'owner-profile-id',
            itemId: 'item-123',
          ),
          throwsA(isA<TdkException>()),
        );
      });
    });
  });
}
