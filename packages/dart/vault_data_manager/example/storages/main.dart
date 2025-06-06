import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/src/storages/vfs_profile_repository.dart';
import 'package:ssi/ssi.dart';

// To start work with the storage make sure you have updated those values:
//
// [seed] - secret value that serves as the foundation for generating encryption keys.
final seed = Uint8List.fromList(List.generate(32, (idx) => idx + 1));

void main() async {
  // To create a folder in vault storage you first need to create VfsProfileRepository
  final profileRepository = VfsProfileRepository('vfs');

  // A VfsProfileRepository handling files will need to be configured with a wallet and a KeyStorage.
  final wallet = Bip32Wallet.fromSeed(seed);
  final keyStorage = InMemoryVaultStore();
  await profileRepository.configure(
      RepositoryConfiguration(wallet: wallet, keyStorage: keyStorage));

  //
  // Create a profile
  //

  try {
    await profileRepository.createProfile(name: 'Test 1');
  } on TdkException catch (error) {
    print([error.code, '[Demo] ${error.message}', error.originalMessage]
        .join('\n'));
    rethrow;
  }

  final profiles = await profileRepository.listProfiles();
  var profile = profiles.firstOrNull;
  if (profile == null) {
    throw UnsupportedError('Profile not available');
  }

  // once you have a profile and a file storage you can create folder under it using:
  try {
    await profile.defaultFileStorage?.createFolder(
      folderName: 'your_folder_name',
      parentFolderId: profile.id,
    );
  } on TdkException catch (error) {
    print([error.code, error.message, error.originalMessage].join('\n'));
  }
}
