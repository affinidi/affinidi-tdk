import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:base_codecs/base_codecs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:affinidi_tdk_vault_flutter_utils/vault_flutter_utils.dart';

import 'vault_service_state.dart';

part 'vault_service.g.dart';

@Riverpod(keepAlive: true)
class VaultService extends _$VaultService {
  VaultService() : super();

  @override
  VaultServiceState build() {
    Future(() {
      _create();
    });

    return VaultServiceState();
  }

  Future<void> clearKeyStorage() async {
    final keyStorage = _getkeyStorage();
    await keyStorage.clear();
    print('Vault key storage cleared');

    _makeSeedIfNeeded(keyStorage);
  }

  Future<void> _create() async {
    try {
      const vfsRepositoryId = 'vfs';
      final profileRepositories = <String, ProfileRepository>{
        vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
      };
      final keyStorage = ref.read(_keyStorageProvider);
      await _makeSeedIfNeeded(keyStorage);
      final vault = await Vault.fromVaultStore(
        keyStorage,
        profileRepositories: profileRepositories,
      );
      state = state.copyWith(vault: vault);
    } on TdkException catch (error) {
      state = state.copyWith(error: error.code);
    } catch (error) {
      state = state.copyWith(error: error.toString());
    }
  }

  Future<void> _makeSeedIfNeeded(FlutterSecureVaultStore vaultStore) async {
    final existingSeed = await vaultStore.getSeed();
    print(
      'Existing seed: ${existingSeed != null ? hexEncode(existingSeed) : 'null'}',
    );
    if (existingSeed == null) {
      final seed = hexDecode(
        'abc123', // Replace with the seed associated to the whitelisted Vault
      );
      // final seed = vaultStore.getRandomSeed();
      // final seed = Uint8List.fromList(List.generate(32, (idx) => idx + 1));
      print('Generated seed: ${hexEncode(seed)}');
      await vaultStore.setSeed(seed);
    }
  }

  FlutterSecureVaultStore _getkeyStorage() {
    return ref.read(_keyStorageProvider);
  }
}

final _keyStorageProvider = Provider<FlutterSecureVaultStore>((ref) {
  const vaultId = 'unique_vault_id';

  return FlutterSecureVaultStore(vaultId);
}, name: 'keyStorageProvider');
