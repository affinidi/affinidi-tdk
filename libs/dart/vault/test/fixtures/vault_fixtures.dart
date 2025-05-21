import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class VaultFixtures {
  static Profile createTestProfile({
    String id = 'test-id',
    String name = 'Test Profile',
    String description = 'Test Description',
    int accountIndex = 0,
    String did = 'did:test:123',
    String profileRepositoryId = 'test',
    Map<String, FileStorage> fileStorages = const {},
    Map<String, CredentialStorage> credentialStorages = const {},
    Map<String, SharedStorage> sharedStorages = const {},
  }) {
    return Profile(
      id: id,
      name: name,
      description: description,
      accountIndex: accountIndex,
      did: did,
      profileRepositoryId: profileRepositoryId,
      fileStorages: fileStorages,
      credentialStorages: credentialStorages,
      sharedStorages: sharedStorages,
    );
  }

  static SharedProfileDto createSharedProfile({
    required String profileId,
    required String profileDID,
    List<int> kek = const [1, 2, 3],
  }) {
    return SharedProfileDto(
      kek: Uint8List.fromList(kek),
      profileId: profileId,
      profileDID: profileDID,
    );
  }

  static Profile defaultTestProfile({
    required FileStorage fileStorage,
    required CredentialStorage credentialStorage,
    required SharedStorage sharedStorage,
  }) {
    return createTestProfile(
      fileStorages: {'test': fileStorage},
      credentialStorages: {'test': credentialStorage},
      sharedStorages: {'test': sharedStorage},
    );
  }
}
