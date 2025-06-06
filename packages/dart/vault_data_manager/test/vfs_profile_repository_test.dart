import 'dart:typed_data';

import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/account.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'fixtures/key_fixtures.dart';
import 'fixtures/profile_fixtures.dart';
import 'mocks/mock_iam_api_service.dart';
import 'mocks/mock_key_pair.dart';
import 'mocks/mock_vault_data_manager_service.dart';

class MockWallet extends Mock implements Wallet {}

class MockVaultStore extends Mock implements VaultStore {}

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

class TestVfsProfileRepository extends VfsProfileRepository {
  TestVfsProfileRepository(
    super.id, {
    super.consumerAuthProviderFactory,
    super.iamApiServiceFactory,
    super.vaultDataManagerServiceFactory,
  });
}

void main() {
  late TestVfsProfileRepository repository;
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
  });

  setUp(() {
    mockDataManagerService = MockVaultDataManagerService();
    mockWallet = MockWallet();
    mockVaultStore = MockVaultStore();
    mockDidSigner = MockDidSigner();
    mockIamApiService = MockIamApiService();
    mockKeyPair = MockKeyPair();

    repository = TestVfsProfileRepository(
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
    when(() => mockDidSigner.didKeyId).thenReturn(ProfileFixtures.testDidKeyId);
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

        await repository.configure(config);
        final isConfigured = await repository.isConfigured();
        expect(isConfigured, isTrue);
      });

      test('should throw error when configured without keyStorage', () async {
        final config = RepositoryConfiguration(
          wallet: mockWallet,
          keyStorage: null,
        );

        expect(
          () => repository.configure(config),
          throwsA(isA<TdkException>()),
        );
      });

      test('should throw error when configured with invalid configuration type',
          () async {
        expect(
          () => repository.configure('invalid_config'),
          throwsA(isA<TdkException>()),
        );
      });
    });

    group('Profile Operations', () {
      setUp(() async {
        await repository.configure(RepositoryConfiguration(
          wallet: mockWallet,
          keyStorage: mockVaultStore,
        ));
      });

      group('When creating a profile', () {
        test('should create a new profile successfully', () async {
          when(() => mockVaultStore.readAccountIndex())
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
          when(() => mockVaultStore.writeAccountIndex(any()))
              .thenAnswer((_) async {});
          when(() => mockDataManagerService.getProfiles()).thenAnswer(
              (_) async => [ProfileFixtures.testVaultDataManagerProfile]);

          await repository.createProfile(
            name: ProfileFixtures.testProfileName,
            description: ProfileFixtures.testProfileDescription,
          );

          verify(() => mockDataManagerService.createProfile(
                name: ProfileFixtures.testProfileName,
                description: ProfileFixtures.testProfileDescription,
              )).called(1);
          verify(() => mockVaultStore
              .writeAccountIndex(ProfileFixtures.testAccountIndex)).called(1);
        });
      });

      group('When listing profiles', () {
        test('should list profiles successfully', () async {
          when(() => mockDataManagerService.getAccounts())
              .thenAnswer((_) async => [ProfileFixtures.testAccount]);
          when(() => mockDataManagerService.getProfiles()).thenAnswer(
              (_) async => [ProfileFixtures.testVaultDataManagerProfile]);

          final profiles = await repository.listProfiles();

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

          await repository.updateProfile(ProfileFixtures.testProfile);

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
            () => repository.updateProfile(ProfileFixtures.differentProfile),
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

          await repository.deleteProfile(ProfileFixtures.testProfile);

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
            () => repository.deleteProfile(ProfileFixtures.differentProfile),
            throwsA(isA<TdkException>()),
          );
        });
      });
    });
  });
}
