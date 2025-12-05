import 'dart:math';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

void main() async {
  print('[Demo] Time-Bound Sharing Example');

  // Initialize vaults for Alice and Bob
  final keyStorageAlice = InMemoryVaultStore();
  var accountIndexAlice = 0;
  await keyStorageAlice.setAccountIndex(accountIndexAlice);

  final keyStorageBob = InMemoryVaultStore();
  var accountIndexBob = 0;
  await keyStorageBob.setAccountIndex(accountIndexBob);

  final seedAlice = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
  final seedBob = Uint8List.fromList(List.generate(32, (idx) => idx + 2));
  await keyStorageAlice.setSeed(seedAlice);
  await keyStorageBob.setSeed(seedBob);

  const vfsRepositoryId = 'vfs';
  final vaultAlice = await Vault.fromVaultStore(
    keyStorageAlice,
    profileRepositories: {
      vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
    },
    defaultProfileRepositoryId: vfsRepositoryId,
  );

  final vaultBob = await Vault.fromVaultStore(
    keyStorageBob,
    profileRepositories: {
      vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
    },
    defaultProfileRepositoryId: vfsRepositoryId,
  );

  await vaultAlice.ensureInitialized();
  await vaultBob.ensureInitialized();

  print('[Demo] Retrieving Profiles ...');
  var profilesAlice = await vaultAlice.listProfiles();
  var profilesBob = await vaultBob.listProfiles();
  print(
      '[Demo] ${profilesAlice.isEmpty ? 'No profiles found' : 'Available profiles: ${profilesAlice.length}'}');
  _listProfileNames(profilesAlice, label: 'Initial profile names');
  _listProfileNames(profilesBob, label: 'Initial profile names');

  // Delete all existing profiles sequentially
  print('[Demo] Starting profile cleanup...');

  // Clean up Alice's profiles
  for (var profile in profilesAlice) {
    print('[Demo] Deleting Alice profile: ${profile.name}');
    await _deleteProfile(vaultAlice, profile);
    var remainingProfiles = await vaultAlice.listProfiles();
    if (remainingProfiles.any((p) => p.id == profile.id)) {
      throw Exception('Failed to delete profile: ${profile.name}');
    }
  }

  // Clean up Bob's profiles
  for (var profile in profilesBob) {
    print('[Demo] Deleting Bob profile: ${profile.name}');
    await _deleteProfile(vaultBob, profile);
    var remainingProfiles = await vaultBob.listProfiles();
    if (remainingProfiles.any((p) => p.id == profile.id)) {
      throw Exception('Failed to delete profile: ${profile.name}');
    }
  }

  profilesAlice = await vaultAlice.listProfiles();
  profilesBob = await vaultBob.listProfiles();
  if (profilesAlice.isNotEmpty || profilesBob.isNotEmpty) {
    throw Exception('Cleanup failed: Found remaining profiles');
  }
  print('[Demo] All profiles successfully deleted');
  _listProfileNames(profilesAlice, label: 'Cleared profiles');
  _listProfileNames(profilesBob, label: 'Cleared profiles');

  print('[Demo] Adding new profiles ...');

  // Create Alice
  accountIndexAlice =
      await _createProfile(vaultAlice, 'Alice88', accountIndexAlice);
  final aliceAccountIndex = accountIndexAlice;

  // Create Bob
  accountIndexBob = await _createProfile(vaultBob, 'Bob8888', accountIndexBob);
  final bobAccountIndex = accountIndexBob;

  // Get Alice and Bob profiles
  var profilesAfterAccountsAlice = await vaultAlice.listProfiles();
  var profilesAfterAccountsBob = await vaultBob.listProfiles();
  final aliceProfile = profilesAfterAccountsAlice
      .where((profile) => profile.accountIndex == aliceAccountIndex)
      .firstOrNull;
  final bobProfile = profilesAfterAccountsBob
      .where((profile) => profile.accountIndex == bobAccountIndex)
      .firstOrNull;

  if (aliceProfile == null || bobProfile == null) {
    throw UnsupportedError('Both Alice and Bob should have a profile');
  }

  // Create a file
  print('[Demo] Alice is creating a file...');
  final timestamp = DateTime.now().millisecondsSinceEpoch;
  final random = Random().nextInt(1000000);
  final fileName = 'shared_file_$timestamp-$random.txt';
  final fileContent = Uint8List.fromList([1, 2, 3]);

  await aliceProfile.defaultFileStorage!.createFile(
    fileName: fileName,
    data: fileContent,
    parentFolderId: aliceProfile.id,
  );

  final filesPage = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  final file = filesPage.items.firstWhere((item) => item.name == fileName);

  // Share file with time-bound access (1 minute expiration)
  print(
      '[Demo] Alice is sharing $fileName with Bob with READ access for 1 minute...');
  var policy = await vaultAlice.getItemPermissionsPolicy(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
  );

  policy.addPermission([file.id], [Permissions.read],
      expiresAt: DateTime.now().add(const Duration(minutes: 1)));

  final kek = await vaultAlice.setItemAccess(
    profileId: aliceProfile.id,
    granteeDid: bobProfile.did,
    policy: policy,
  );

  final sharedItems = SharedItemsDto(
    kek: kek,
    ownerProfileId: aliceProfile.id,
    ownerProfileDID: aliceProfile.did,
    itemIds: [file.id],
  );

  // Bob accepts the shared item
  print('[Demo] Bob is accepting the shared item...');
  await vaultBob.acceptSharedItems(
    profileId: bobProfile.id,
    sharedItems: sharedItems,
  );

  // Bob reads the file (should succeed)
  print('[Demo] Bob is reading the file (should succeed)...');
  try {
    final content = await vaultBob.readSharedItem(
      ownerProfileId: aliceProfile.id,
      itemId: file.id,
    );
    print('[Demo] Bob successfully read the file: $content');
  } catch (e) {
    print('[Demo] Bob failed to read the file: $e');
  }

  // Wait for access to expire
  print('[Demo] Waiting 1 minute for access to expire...');
  await Future<void>.delayed(const Duration(minutes: 1));

  // Bob tries to read the file after expiration (should fail)
  print(
      '[Demo] Bob is trying to read the file after expiration (should fail)...');
  try {
    await vaultBob.readSharedItem(
      ownerProfileId: aliceProfile.id,
      itemId: file.id,
    );
    print('[Demo] WARNING: Bob was able to read the file after expiration');
  } catch (e) {
    print('[Demo] Bob correctly failed to read the file after expiration: $e');
    print(
        '[Demo] Time-bound sharing is working - access was automatically revoked');
  }

  // Cleanup
  print('[Demo] Alice is deleting all files...');
  final aliceFilesPage = await aliceProfile.defaultFileStorage!
      .getFolder(folderId: aliceProfile.id);
  await Future.wait(aliceFilesPage.items.map(
      (item) => aliceProfile.defaultFileStorage!.deleteFile(fileId: item.id)));

  // Clean up profiles
  print('[Demo] Cleaning up profiles...');
  profilesAlice = await vaultAlice.listProfiles();
  profilesBob = await vaultBob.listProfiles();
  await Future.wait(
      profilesAlice.map((profile) => _deleteProfile(vaultAlice, profile)));
  await Future.wait(
      profilesBob.map((profile) => _deleteProfile(vaultBob, profile)));

  profilesAlice = await vaultAlice.listProfiles();
  profilesBob = await vaultBob.listProfiles();
  print(
      '[Demo] Final profile count - Alice: ${profilesAlice.length}, Bob: ${profilesBob.length}');
}

Future<void> _deleteProfile(Vault vault, Profile profile) async {
  // Delete items recursively
  await _deleteItems(vault: vault, profile: profile, folderId: profile.id);

  await vault.defaultProfileRepository.deleteProfile(profile);
}

Future<void> _deleteItems({
  required Vault vault,
  required Profile profile,
  required String folderId,
}) async {
  String? exclusiveStartItemId;

  try {
    do {
      final page = await profile.defaultFileStorage!.getFolder(
        folderId: folderId,
        limit: 20,
        exclusiveStartItemId: exclusiveStartItemId,
      );

      for (final item in page.items) {
        if (item is Folder) {
          await _deleteItems(vault: vault, profile: profile, folderId: item.id);
        } else if (item is File) {
          await profile.defaultFileStorage!.deleteFile(fileId: item.id);
        }
      }

      exclusiveStartItemId = page.lastEvaluatedItemId;
    } while (exclusiveStartItemId != null);
  } catch (e) {
    print(
        '[Demo] Error while deleting folder $folderId in profile ${profile.name}: ${e.toString()}');
  }

  if (folderId != profile.id) {
    await profile.defaultFileStorage!.deleteFolder(folderId: folderId);
  }
}

Future<int> _createProfile(Vault vault, String name, int accountIndex) async {
  final newAccountIndex = accountIndex + 1;
  final existingProfiles = await vault.listProfiles();
  final existingProfile = existingProfiles
      .where((profile) => profile.accountIndex == newAccountIndex)
      .firstOrNull;

  if (existingProfile == null) {
    print('[Demo] Creating profile for $name ...');
    try {
      final profileRepository = vault.defaultProfileRepository;
      await profileRepository.createProfile(name: '$name $newAccountIndex');
    } on TdkException catch (error) {
      print([error.code, '[Demo] ${error.message}', error.originalMessage]
          .join('\n'));
      rethrow;
    }
  }

  final profiles = await vault.listProfiles();
  _listProfileNames(profiles, label: 'Names after adding $name profile');
  return newAccountIndex;
}

void _listProfileNames(
  List<Profile> profiles, {
  required String label,
}) {
  if (profiles.isEmpty) {
    print('[Demo] List of profiles is empty');
    return;
  }

  final names = profiles
      .map((profile) =>
          '${profile.name} | ${profile.accountIndex} | ${profile.did} ')
      .join(', ');
  print('[Demo] $label: $names');
}
