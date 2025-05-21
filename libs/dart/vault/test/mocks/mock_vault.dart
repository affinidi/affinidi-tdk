import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';

class MockDeterministicWallet extends Mock implements DeterministicWallet {}

class MockBip32Wallet extends Mock implements Bip32Wallet {}

class MockVaultStore extends Mock implements VaultStore {
  @override
  Future<Uint8List?> getSeed() async => Uint8List.fromList([1, 2, 3]);
}

class MockProfileRepository extends Mock implements ProfileRepository {}

class MockFileStorage extends Mock implements FileStorage {}

class MockCredentialStorage extends Mock implements CredentialStorage {}

class MockSharedStorage extends Mock implements SharedStorage {}

class FakeKeyStore extends Fake implements KeyStore {
  @override
  Future<Uint8List> getSeed() async => Uint8List.fromList([1, 2, 3]);

  @override
  Future<void> setSeed(Uint8List seed) async {}

  @override
  Future<void> clear() async {}

  @override
  Future<bool> contains(String key) async => false;

  @override
  Future<StoredKey?> get(String key) async => null;

  @override
  Future<void> remove(String key) async {}

  @override
  Future<void> set(String key, StoredKey value) async {}
}

class TestVault extends Vault {
  TestVault({
    required super.wallet,
    required super.vaultStore,
    required super.profileRepositories,
    super.defaultProfileRepositoryId,
  });

  static Future<Vault> fromVaultStore(
    VaultStore vaultStore, {
    required Map<String, ProfileRepository> profileRepositories,
    String? defaultProfileRepositoryId,
  }) async {
    final wallet = MockBip32Wallet();
    return Vault(
      wallet: wallet,
      vaultStore: vaultStore,
      profileRepositories: profileRepositories,
      defaultProfileRepositoryId: defaultProfileRepositoryId,
    );
  }
}
