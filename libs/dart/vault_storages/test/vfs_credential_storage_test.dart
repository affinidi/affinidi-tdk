import 'dart:convert';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/src/credential/vfs_credential_storage.dart';
import 'package:affinidi_tdk_vault_storages/src/services/vault_data_manager_service/vault_data_manager_service_interface.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'fixtures/credential_fixtures.dart';
import 'mocks/mock_verifiable_credential.dart';

class MockVaultDataManagerService extends Mock
    implements VaultDataManagerServiceInterface {
  @override
  Future<void> addVerifiableCredentialToProfile({
    required VerifiableCredential verifiableCredential,
    required String profileId,
  }) {
    return super.noSuchMethod(
      Invocation.method(#addVerifiableCredentialToProfile, [], {
        #verifiableCredential: verifiableCredential,
        #profileId: profileId,
      }),
    ) as Future<void>;
  }

  @override
  Future<void> deleteClaimedCredential({required String nodeId}) {
    return super.noSuchMethod(
      Invocation.method(#deleteClaimedCredential, [], {
        #nodeId: nodeId,
      }),
    ) as Future<void>;
  }

  @override
  Future<List<DigitalCredential>> getDigitalCredentials(String profileId) {
    return super.noSuchMethod(
      Invocation.method(#getDigitalCredentials, [profileId]),
    ) as Future<List<DigitalCredential>>;
  }
}

void main() {
  late VFSCredentialStorage storage;
  late MockVaultDataManagerService mockService;
  const profileId = 'test_profile';
  const storageId = 'test_storage';

  setUpAll(() {
    registerFallbackValue(MockVerifiableCredential());
  });

  setUp(() {
    mockService = MockVaultDataManagerService();
    storage = VFSCredentialStorage(
      id: storageId,
      dataManagerService: mockService,
      profileId: profileId,
    );
  });

  tearDown(() {
    reset(mockService);
  });

  group('VFSCredentialStorage', () {
    test('should list credentials', () async {
      final mockCreds = CredentialFixtures.mockCredentials;
      when(() => mockService.getDigitalCredentials(profileId))
          .thenAnswer((_) async => mockCreds);

      final result = await storage.listCredentials();
      expect(result.length, equals(mockCreds.length));
      expect(result[0].id, equals(mockCreds[0].id));
      verify(() => mockService.getDigitalCredentials(profileId)).called(1);
    });

    test('should save credential', () async {
      final mockVC = CredentialFixtures.mockVerifiableCredential;
      when(() => mockService.addVerifiableCredentialToProfile(
            verifiableCredential: mockVC,
            profileId: profileId,
          )).thenAnswer((_) async => Future<void>.value());

      await storage.saveCredential(verifiableCredential: mockVC);
      verify(() => mockService.addVerifiableCredentialToProfile(
            verifiableCredential: mockVC,
            profileId: profileId,
          )).called(1);
    });

    test('should delete credential', () async {
      const credentialId = 'cred1';

      when(() => mockService.deleteClaimedCredential(nodeId: credentialId))
          .thenAnswer((_) async => Future<void>.value());

      await storage.deleteCredential(digitalCredentialId: credentialId);
      verify(() => mockService.deleteClaimedCredential(nodeId: credentialId))
          .called(1);
    });

    test('should get credential by id', () async {
      const credentialId = 'cred1';
      when(() => mockService.getDigitalCredentials(profileId))
          .thenAnswer((_) async => CredentialFixtures.mockCredentials);

      final result =
          await storage.getCredential(digitalCredentialId: credentialId);
      expect(result.id, equals(credentialId));
      verify(() => mockService.getDigitalCredentials(profileId)).called(1);
    });

    test('should throw when credential not found', () async {
      const credentialId = 'non_existent';
      when(() => mockService.getDigitalCredentials(profileId))
          .thenAnswer((_) async => []);

      expect(
        () => storage.getCredential(digitalCredentialId: credentialId),
        throwsA(isA<TdkException>()),
      );
    });

    test('should throw when query is called', () async {
      expect(
        () => storage.query('test query'),
        throwsA(isA<TdkException>()),
      );
    });

    test('should handle empty credential list', () async {
      when(() => mockService.getDigitalCredentials(profileId))
          .thenAnswer((_) async => []);

      final result = await storage.listCredentials();
      expect(result, isEmpty);
      verify(() => mockService.getDigitalCredentials(profileId)).called(1);
    });

    test('should handle multiple credentials', () async {
      final verifiableCredential1 = UniversalParser.parse(jsonEncode({
        '@context': [
          'https://www.w3.org/2018/credentials/v1',
          'https://schema.affinidi.io/HITContactsV1R0.jsonld'
        ],
        'id': 'cred1',
        'type': ['VerifiableCredential', 'HITContacts'],
        'holder': {
          'id': 'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa'
        },
        'credentialSubject': {'email': 'user1@affinidi.com'},
        'credentialSchema': {
          'id': 'credentialSchemaId',
          'type': 'credentialSchemaType'
        },
        'issuanceDate': DateTime.now().toIso8601String(),
        'expirationDate':
            DateTime.now().add(const Duration(days: 2)).toIso8601String(),
        'issuer': 'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
        'proof': {
          'type': 'EcdsaSecp256k1Signature2019',
          'created': DateTime.now().toUtc().toIso8601String(),
          'proofPurpose': 'assertionMethod',
          'verificationMethod':
              'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa#aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
          'jws':
              'eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..ee19g6fjm34kb9aG_tGzVyW5-sLq6KvFTBnmOHX3ibBFrikO8xYMp3pCg1SU3gePtSnAVKzyDIfxj1xifGcQHw'
        }
      }));
      final verifiableCredential2 = UniversalParser.parse(jsonEncode({
        '@context': [
          'https://www.w3.org/2018/credentials/v1',
          'https://schema.affinidi.io/HITContactsV1R0.jsonld'
        ],
        'id': 'cred2',
        'type': ['VerifiableCredential', 'HITContacts'],
        'holder': {
          'id': 'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa'
        },
        'credentialSubject': {'email': 'user2@affinidi.com'},
        'credentialSchema': {
          'id': 'credentialSchemaId',
          'type': 'credentialSchemaType'
        },
        'issuanceDate': DateTime.now().toIso8601String(),
        'expirationDate':
            DateTime.now().add(const Duration(days: 2)).toIso8601String(),
        'issuer': 'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
        'proof': {
          'type': 'EcdsaSecp256k1Signature2019',
          'created': DateTime.now().toUtc().toIso8601String(),
          'proofPurpose': 'assertionMethod',
          'verificationMethod':
              'did:key:aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa#aaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaabaaaa',
          'jws':
              'eyJhbGciOiJFUzI1NksiLCJiNjQiOmZhbHNlLCJjcml0IjpbImI2NCJdfQ..ee19g6fjm34kb9aG_tGzVyW5-sLq6KvFTBnmOHX3ibBFrikO8xYMp3pCg1SU3gePtSnAVKzyDIfxj1xifGcQHw'
        }
      }));
      final credentials = [
        DigitalCredential(
          verifiableCredential: verifiableCredential1,
          id: 'cred1',
        ),
        DigitalCredential(
          verifiableCredential: verifiableCredential2,
          id: 'cred2',
        ),
      ];

      when(() => mockService.getDigitalCredentials(profileId))
          .thenAnswer((_) async => credentials);

      final result = await storage.listCredentials();
      expect(result.length, equals(2));
      expect(result[0].id, equals('cred1'));
      expect(result[1].id, equals('cred2'));
      verify(() => mockService.getDigitalCredentials(profileId)).called(1);
    });
  });
}
