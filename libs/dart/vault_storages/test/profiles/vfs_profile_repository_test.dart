import 'dart:typed_data';

import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:affinidi_tdk_vault_storages/src/iam_api_service_interface.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import '../mocks/mocks.dart';
import '../mocks/mock_key_pair.dart';

class MockDeterministicWallet extends Mock implements DeterministicWallet {}

class MockVaultStore extends Mock implements VaultStore {}

class MockDidSigner extends Mock implements DidSigner {
  @override
  DidDocument get didDocument =>
      super.noSuchMethod(Invocation.getter(#didDocument)) as DidDocument;
}

class PublicKeyFake extends Fake implements PublicKey {
  @override
  String get id =>
      'did:key:z6Mkf5rGMoatrSj1f4CyvuHBeXJELe9RPdzo2PKGNCKVtZxP#z6Mkf5rGMoatrSj1f4CyvuHBeXJELe9RPdzo2PKGNCKVtZxP';
  @override
  Uint8List get bytes => Uint8List.fromList([
        3,
        90,
        191,
        180,
        186,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44,
        44
      ]);
  @override
  KeyType get type => KeyType.secp256k1;
}

class TestVfsProfileRepository extends VfsProfileRepository {
  final MockDidSigner mockDidSigner;

  TestVfsProfileRepository(
    String id, {
    required this.mockDidSigner,
    VaultDataManagerServiceInterface? dataManagerService,
    ConsumerAuthProvider? consumerAuthProvider,
    IamApiServiceInterface? iamApiService,
  }) : super(
          id,
          dataManagerService: dataManagerService,
          consumerAuthProvider: consumerAuthProvider,
          iamApiService: iamApiService,
        );

  @override
  Future<DidSigner> _makeDidSigner(KeyPair keyPair) async {
    return mockDidSigner;
  }
}

void main() {
  late TestVfsProfileRepository repository;
  late MockVaultDataManagerService mockDataManagerService;
  late MockDeterministicWallet mockWallet;
  late MockVaultStore mockVaultStore;
  late MockDidSigner mockDidSigner;
  late MockIamApiService mockIamApiService;
  late PublicKey publicKey;
  late MockKeyPair mockKeyPair;
  const repositoryId = 'test_repository';

  setUpAll(() {
    registerFallbackValue(Uint8List.fromList([1, 2, 3]));
    registerFallbackValue(AccountMetadata(
      dekekInfo: DekekInfo(
          encryptedDekek: 'dGVzdF9rZXk='), // base64 encoded "test_key"
      sharedStorageData: [],
    ));
    registerFallbackValue(PublicKeyFake());
  });

  setUp(() {
    mockDataManagerService = MockVaultDataManagerService();
    mockWallet = MockDeterministicWallet();
    mockVaultStore = MockVaultStore();
    mockDidSigner = MockDidSigner();
    mockIamApiService = MockIamApiService();
    mockKeyPair = MockKeyPair();

    repository = TestVfsProfileRepository(
      repositoryId,
      mockDidSigner: mockDidSigner,
      dataManagerService: mockDataManagerService,
      iamApiService: mockIamApiService,
    );

    // Setup common mock behaviors
    when(() => mockWallet.deriveKey(
          derivationPath: any(named: 'derivationPath'),
          keyId: any(named: 'keyId'),
        )).thenAnswer((_) async => mockKeyPair);

    final fakePublicKey = PublicKeyFake();
    final didDocument = DidKey.generateDocument(fakePublicKey);
    when(() => mockKeyPair.publicKey).thenReturn(fakePublicKey);
    publicKey = fakePublicKey;
    when(() => mockKeyPair.encrypt(any()))
        .thenAnswer((_) async => Uint8List.fromList([4, 5, 6]));
    when(() => mockKeyPair.decrypt(any()))
        .thenAnswer((_) async => Uint8List.fromList([7, 8, 9]));

    // Mock DidSigner behavior
    when(() => mockDidSigner.did).thenReturn('did:test:123');
    when(() => mockDidSigner.didKeyId).thenReturn('did:test:123#key-1');
    when(() => mockDidSigner.didDocument).thenReturn(didDocument);
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
      late Profile testProfile;

      setUp(() async {
        // Setup configuration
        await repository.configure(RepositoryConfiguration(
          wallet: mockWallet,
          keyStorage: mockVaultStore,
        ));

        // Create a test profile
        testProfile = Profile(
          id: 'test_profile_id',
          name: 'Test Profile',
          did: 'did:test:123',
          accountIndex: 1,
          profileRepositoryId: repositoryId,
          fileStorages: {},
          credentialStorages: {},
          sharedStorages: {},
        );
      });

      test('should create a new profile', () async {
        // Setup mock behaviors
        when(() => mockVaultStore.readAccountIndex())
            .thenAnswer((_) async => 0);
        when(() => mockDataManagerService.createProfile(
              name: any(named: 'name'),
              description: any(named: 'description'),
            )).thenAnswer((_) async => Response<CreateNodeOK>(
              data: CreateNodeOK((b) => b..nodeId = 'test_profile_id'),
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
        when(() => mockDataManagerService.getProfiles())
            .thenAnswer((_) async => [
                  VaultDataManagerProfile(
                    id: 'test_profile_id',
                    name: 'Test Profile',
                    description: 'Test Description',
                    pictureURI: '',
                  )
                ]);

        // Create profile
        await repository.createProfile(
          name: 'Test Profile',
          description: 'Test Description',
        );

        // Verify interactions
        verify(() => mockDataManagerService.createProfile(
              name: 'Test Profile',
              description: 'Test Description',
            )).called(1);
        verify(() => mockVaultStore.writeAccountIndex(1)).called(1);
      });

      test('should list profiles', () async {
        // Setup mock behaviors
        final mockAccount = Account(
          accountIndex: 1,
          accountDid: 'did:test:123',
          accountMetadata: AccountMetadata(
            dekekInfo: DekekInfo(
                encryptedDekek: 'dGVzdF9rZXk='), // base64 encoded "test_key"
            sharedStorageData: [],
          ),
        );

        when(() => mockDataManagerService.getAccounts())
            .thenAnswer((_) async => [mockAccount]);
        when(() => mockDataManagerService.getProfiles())
            .thenAnswer((_) async => [
                  VaultDataManagerProfile(
                    id: 'test_profile_id',
                    name: 'Test Profile',
                    description: 'Test Description',
                    pictureURI: '',
                  )
                ]);

        // Mock the key pair behavior
        when(() => mockKeyPair.decrypt(any()))
            .thenAnswer((_) async => Uint8List.fromList([7, 8, 9]));

        // List profiles
        final profiles = await repository.listProfiles();

        // Verify results
        expect(profiles.length, 1);
        expect(profiles.first.name, 'Test Profile');
      });

      test('should update profile', () async {
        // Setup mock behaviors
        when(() => mockDataManagerService.updateProfileMetadata(
              id: any(named: 'id'),
              name: any(named: 'name'),
              description: any(named: 'description'),
              profilePictureURI: any(named: 'profilePictureURI'),
            )).thenAnswer((_) async {});

        // Update profile
        await repository.updateProfile(testProfile);

        // Verify interactions
        verify(() => mockDataManagerService.updateProfileMetadata(
              id: testProfile.id,
              name: testProfile.name,
              description: testProfile.description,
              profilePictureURI: testProfile.profilePictureURI,
            )).called(1);
      });

      test('should throw error when updating profile from different repository',
          () async {
        final differentProfile = Profile(
          id: 'different_profile_id',
          name: 'Different Profile',
          did: 'did:test:456',
          accountIndex: 2,
          profileRepositoryId: 'different_repository',
          fileStorages: {},
          credentialStorages: {},
          sharedStorages: {},
        );

        expect(
          () => repository.updateProfile(differentProfile),
          throwsA(isA<TdkException>()),
        );
      });

      test('should delete profile', () async {
        // Setup mock behaviors
        when(() => mockDataManagerService.deleteProfile(any()))
            .thenAnswer((_) async {});
        when(() => mockDataManagerService.deleteAccount(
              accountIndex: any(named: 'accountIndex'),
            )).thenAnswer((_) async {});

        // Delete profile
        await repository.deleteProfile(testProfile);

        // Verify interactions
        verify(() => mockDataManagerService.deleteProfile(testProfile.id))
            .called(1);
        verify(() => mockDataManagerService.deleteAccount(
              accountIndex: testProfile.accountIndex,
            )).called(1);
      });

      test('should throw error when deleting profile from different repository',
          () async {
        final differentProfile = Profile(
          id: 'different_profile_id',
          name: 'Different Profile',
          did: 'did:test:456',
          accountIndex: 2,
          profileRepositoryId: 'different_repository',
          fileStorages: {},
          credentialStorages: {},
          sharedStorages: {},
        );

        expect(
          () => repository.deleteProfile(differentProfile),
          throwsA(isA<TdkException>()),
        );
      });

      test('should throw UnimplementedError when getting profile by id',
          () async {
        expect(
          () => repository.getProfile('test_profile_id'),
          throwsA(isA<UnimplementedError>()),
        );
      });
    });
  });
}
