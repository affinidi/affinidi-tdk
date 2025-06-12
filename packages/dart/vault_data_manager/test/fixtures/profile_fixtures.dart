import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/account.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/vault_data_manager_profile.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';

class ProfileFixtures {
  static const String repositoryId = 'test_repository';
  static const String testProfileId = 'test_profile_id';
  static const String testProfileName = 'Test Profile';
  static const String testProfileDescription = 'Test Description';
  static const String testDid = 'did:test:123';
  static const String testDidKeyId = 'did:test:123#key-1';
  static const int testAccountIndex = 1;

  static Uint8List get testEncryptedData => Uint8List.fromList([4, 5, 6]);
  static Uint8List get testDecryptedData => Uint8List.fromList([7, 8, 9]);

  static Profile get testProfile => Profile(
        id: testProfileId,
        name: testProfileName,
        description: testProfileDescription,
        profilePictureURI: '',
        did: testDid,
        accountIndex: testAccountIndex,
        profileRepositoryId: repositoryId,
        fileStorages: {},
        credentialStorages: {},
        sharedStorages: {},
      );

  static Profile get differentProfile => Profile(
        id: 'different_profile_id',
        name: 'Different Profile',
        did: 'did:test:456',
        accountIndex: 2,
        profileRepositoryId: 'different_repository',
        fileStorages: {},
        credentialStorages: {},
        sharedStorages: {},
      );

  static Account get testAccount => Account(
        accountIndex: testAccountIndex,
        accountDid: testDid,
        accountMetadata: AccountMetadata(
          dekekInfo: DekekInfo(encryptedDekek: 'dGVzdF9rZXk='),
          sharedStorageData: [],
        ),
      );

  static VaultDataManagerProfile get testVaultDataManagerProfile =>
      VaultDataManagerProfile(
        id: testProfileId,
        name: testProfileName,
        description: testProfileDescription,
        pictureURI: '',
      );

  static DidDocument get testDidDocument {
    final publicKey = PublicKeyFake();
    return DidKey.generateDocument(publicKey);
  }
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
