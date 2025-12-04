import 'dart:typed_data';

import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_consumer_iam_client/affinidi_tdk_consumer_iam_client.dart'
    as consumer_iam;
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/account.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'fixtures/key_fixtures.dart';
import 'fixtures/profile_fixtures.dart';
import 'mocks/mock_iam_api_service.dart';
import 'mocks/mock_key_pair.dart';
import 'mocks/mock_vault_data_manager_service.dart';
import 'mocks/mock_vault_store.dart';

class MockWallet extends Mock implements Wallet {}

class MockDidSigner extends Mock implements DidSigner {
  DidDocument get didDocument =>
      super.noSuchMethod(Invocation.getter(#didDocument)) as DidDocument;
}

class PublicKeyFake extends Fake implements PublicKey {
  @override
  String get id =>
      'did:key:z6Mkf5rGMoatrSj1f4CyvuHBeXJELe9RPdzo2PKGNCKVtZxP#z6Mkf5rGMoatrSj1f4CyvuHBeXJELe9RPdzo2PKGNCKVtZxP';
  @override
  Uint8List get bytes => KeyFixtures.testBytes;
  @override
  KeyType get type => KeyFixtures.testKeyType;
}

void main() {
  late VfsProfileRepository sut;
  late MockVaultDataManagerService mockDataManagerService;
  late MockWallet mockWallet;
  late MockVaultStore mockVaultStore;
  late MockDidSigner mockDidSigner;
  late MockIamApiService mockIamApiService;
  late MockKeyPair mockKeyPair;

  setUpAll(() {
    registerFallbackValue(Uint8List.fromList([1, 2, 3]));
    registerFallbackValue(AccountMetadata(
      dekekInfo: DekekInfo(encryptedDekek: 'dGVzdF9rZXk='),
      sharedStorageData: [],
    ));
    registerFallbackValue(PublicKeyFake());
    registerFallbackValue(Permissions.read);
  });

  setUp(() {
    mockDataManagerService = MockVaultDataManagerService();
    mockWallet = MockWallet();
    mockVaultStore = MockVaultStore();
    mockDidSigner = MockDidSigner();
    mockIamApiService = MockIamApiService();
    mockKeyPair = MockKeyPair();

    sut = VfsProfileRepository.withDependencies(
      ProfileFixtures.repositoryId,
      consumerAuthProviderFactory: (didSigner, {client}) =>
          ConsumerAuthProvider(signer: didSigner, client: client),
      iamApiServiceFactory: (provider) => mockIamApiService,
      vaultDataManagerServiceFactory: ({
        required Uint8List encryptedDekek,
        required KeyPair keyPair,
      }) async =>
          mockDataManagerService,
    );

    // Setup common mock behaviors
    when(() => mockWallet.generateKey(keyId: any(named: 'keyId')))
        .thenAnswer((_) async => mockKeyPair);

    when(() => mockKeyPair.publicKey).thenReturn(PublicKeyFake());
    when(() => mockKeyPair.encrypt(any()))
        .thenAnswer((_) async => ProfileFixtures.testEncryptedData);
    when(() => mockKeyPair.decrypt(any()))
        .thenAnswer((_) async => ProfileFixtures.testDecryptedData);

    // Mock DidSigner behavior
    when(() => mockDidSigner.did).thenReturn(ProfileFixtures.testDid);
    when(() => mockDidSigner.keyId).thenReturn(ProfileFixtures.testDidKeyId);
    when(() => mockDidSigner.didDocument)
        .thenReturn(ProfileFixtures.testDidDocument);
  });

  group('VfsProfileRepository', () {
    group('Configuration', () {
      test('should configure repository with valid configuration', () async {
        final config = RepositoryConfiguration(
          wallet: mockWallet,
          keyStorage: mockVaultStore,
        );

        await sut.configure(config);
        final isConfigured = await sut.isConfigured();
        expect(isConfigured, isTrue);
      });

      test('should throw error when configured without keyStorage', () async {
        final config = RepositoryConfiguration(
          wallet: mockWallet,
          keyStorage: null,
        );

        expect(
          () => sut.configure(config),
          throwsA(isA<TdkException>()),
        );
      });

      test('should throw error when configured with invalid configuration type',
          () async {
        expect(
          () => sut.configure('invalid_config'),
          throwsA(isA<TdkException>()),
        );
      });
    });

    group('Profile Operations', () {
      setUp(() async {
        await sut.configure(RepositoryConfiguration(
          wallet: mockWallet,
          keyStorage: mockVaultStore,
        ));
      });

      group('When creating a profile', () {
        test('should create a new profile successfully', () async {
          when(() => mockVaultStore.getAccountIndex())
              .thenAnswer((_) async => 0);
          when(() => mockDataManagerService.createProfile(
                name: any(named: 'name'),
                description: any(named: 'description'),
              )).thenAnswer((_) async => Response<CreateNodeOK>(
                data: CreateNodeOK(
                    (b) => b..nodeId = ProfileFixtures.testProfileId),
                requestOptions: RequestOptions(path: ''),
              ));
          when(() => mockDataManagerService.createAccount(
                accountIndex: any(named: 'accountIndex'),
                accountDid: any(named: 'accountDid'),
                didProof: any(named: 'didProof'),
                metadata: any(named: 'metadata'),
              )).thenAnswer((_) async {});
          when(() => mockVaultStore.setAccountIndex(any()))
              .thenAnswer((_) async {});
          when(() => mockDataManagerService.getProfiles()).thenAnswer(
              (_) async => [ProfileFixtures.testVaultDataManagerProfile]);

          await sut.createProfile(
            name: ProfileFixtures.testProfileName,
            description: ProfileFixtures.testProfileDescription,
          );

          verify(() => mockDataManagerService.createProfile(
                name: ProfileFixtures.testProfileName,
                description: ProfileFixtures.testProfileDescription,
              )).called(1);
          verify(() => mockVaultStore
              .setAccountIndex(ProfileFixtures.testAccountIndex)).called(1);
        });
      });

      group('When listing profiles', () {
        test('should list profiles successfully', () async {
          when(() => mockDataManagerService.getAccounts())
              .thenAnswer((_) async => [ProfileFixtures.testAccount]);
          when(() => mockDataManagerService.getProfiles()).thenAnswer(
              (_) async => [ProfileFixtures.testVaultDataManagerProfile]);

          final profiles = await sut.listProfiles();

          expect(profiles.length, 1);
          expect(profiles.first.name, ProfileFixtures.testProfileName);
        });
      });

      group('When updating a profile', () {
        test('should update profile successfully', () async {
          when(() => mockDataManagerService.updateProfileMetadata(
                id: any(named: 'id'),
                name: any(named: 'name'),
                description: any(named: 'description'),
                profilePictureURI: any(named: 'profilePictureURI'),
              )).thenAnswer((_) async {});

          await sut.updateProfile(ProfileFixtures.testProfile);

          verify(() => mockDataManagerService.updateProfileMetadata(
                id: ProfileFixtures.testProfileId,
                name: ProfileFixtures.testProfileName,
                description: ProfileFixtures.testProfileDescription,
                profilePictureURI:
                    ProfileFixtures.testProfile.profilePictureURI,
              )).called(1);
        });

        test(
            'should throw error when updating profile from different repository',
            () async {
          expect(
            () => sut.updateProfile(ProfileFixtures.differentProfile),
            throwsA(isA<TdkException>()),
          );
        });
      });

      group('When deleting a profile', () {
        test('should delete profile successfully', () async {
          when(() => mockDataManagerService.deleteProfile(any()))
              .thenAnswer((_) async {});
          when(() => mockDataManagerService.deleteAccount(
                accountIndex: any(named: 'accountIndex'),
              )).thenAnswer((_) async {});

          await sut.deleteProfile(ProfileFixtures.testProfile);

          verify(() => mockDataManagerService
              .deleteProfile(ProfileFixtures.testProfileId)).called(1);
          verify(() => mockDataManagerService.deleteAccount(
                accountIndex: ProfileFixtures.testAccountIndex,
              )).called(1);
        });

        test(
            'should throw error when deleting profile from different repository',
            () async {
          expect(
            () => sut.deleteProfile(ProfileFixtures.differentProfile),
            throwsA(isA<TdkException>()),
          );
        });
      });
    });

    group('Node Access Sharing', () {
      setUp(() async {
        await sut.configure(RepositoryConfiguration(
          wallet: mockWallet,
          keyStorage: mockVaultStore,
        ));
      });

      test('should grant node access successfully', () async {
        when(() => mockIamApiService.updateItemAccessVfs(
              granteeDid: any(named: 'granteeDid'),
              itemIds: any(named: 'itemIds'),
              permissions: any(named: 'permissions'),
            )).thenAnswer((_) async {});

        when(() => mockDataManagerService.getAccounts())
            .thenAnswer((_) async => [
                  Account(
                    accountIndex: 0,
                    accountDid: ProfileFixtures.testDid,
                    accountMetadata: AccountMetadata(
                      dekekInfo: DekekInfo(encryptedDekek: 'dGVzdF9rZXk='),
                      sharedStorageData: [],
                    ),
                  ),
                ]);

        await sut.grantItemAccess(
          accountIndex: 0,
          granteeDid: 'did:test:123',
          itemIds: ['node-1', 'node-2'],
          permissions: Permissions.read,
        );

        verify(() => mockIamApiService.updateItemAccessVfs(
              granteeDid: 'did:test:123',
              itemIds: ['node-1', 'node-2'],
              permissions: Permissions.read,
            )).called(1);
      });

      test('should revoke item access successfully', () async {
        when(() => mockIamApiService.revokeItemAccessVfs(
              granteeDid: any(named: 'granteeDid'),
              itemIds: any(named: 'itemIds'),
            )).thenAnswer((_) async {});

        await sut.revokeItemAccess(
          accountIndex: 0,
          granteeDid: 'did:test:123',
          itemIds: ['node-1'],
        );

        verify(() => mockIamApiService.revokeItemAccessVfs(
              granteeDid: 'did:test:123',
              itemIds: ['node-1'],
            )).called(1);
      });

      test('should get item access successfully', () async {
        final expectedResponse = Response<consumer_iam.GetAccessOutput>(
          data: consumer_iam.GetAccessOutput(
            (b) => b.permissions = ListBuilder([
              consumer_iam.Permission(
                (b) => b
                  ..nodeIds = ListBuilder(['node-1'])
                  ..rights = ListBuilder([consumer_iam.RightsEnum.vfsRead]),
              ),
            ]),
          ),
          requestOptions: RequestOptions(path: '/'),
        );

        when(() => mockIamApiService.getItemAccessVfs(
              granteeDid: any(named: 'granteeDid'),
            )).thenAnswer((_) async => expectedResponse);

        final result = await sut.getItemAccess(
          accountIndex: 0,
          granteeDid: 'did:test:123',
        );

        expect(result['permissions'], isA<List>());
        verify(() => mockIamApiService.getItemAccessVfs(
              granteeDid: 'did:test:123',
            )).called(1);
      });

      test('should grant multiple item access groups successfully', () async {
        when(() => mockIamApiService.updateItemAccessVfsWithMultiplePermissions(
              granteeDid: any<String>(named: 'granteeDid'),
              permissionGroups:
                  any<List<({List<String> itemIds, Permissions permissions})>>(
                      named: 'permissionGroups'),
              cancelToken: any<CancelToken?>(named: 'cancelToken'),
            )).thenAnswer((_) async {});

        final permissionGroups = [
          (itemIds: ['node-1'], permissions: Permissions.read),
          (itemIds: ['node-2'], permissions: Permissions.write),
        ];

        when(() => mockDataManagerService.getAccounts())
            .thenAnswer((_) async => [
                  Account(
                    accountIndex: 0,
                    accountDid: ProfileFixtures.testDid,
                    accountMetadata: AccountMetadata(
                      dekekInfo: DekekInfo(encryptedDekek: 'dGVzdF9rZXk='),
                      sharedStorageData: [],
                    ),
                  ),
                ]);

        await sut.grantItemAccessMultiple(
          accountIndex: 0,
          granteeDid: 'did:test:123',
          permissionGroups: permissionGroups,
        );

        verify(() =>
            mockIamApiService.updateItemAccessVfsWithMultiplePermissions(
              granteeDid: 'did:test:123',
              permissionGroups:
                  any<List<({List<String> itemIds, Permissions permissions})>>(
                      named: 'permissionGroups'),
              cancelToken: any<CancelToken?>(named: 'cancelToken'),
            )).called(1);
      });
    });
  });
}
