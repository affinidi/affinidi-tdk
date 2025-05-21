import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_flutter_utils/vault_flutter_utils.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

  Future<void> _create() async {
    try {
      const vfsRepositoryId = 'vfs';
      final profileRepositories = <String, ProfileRepository>{
        vfsRepositoryId: VfsProfileRepository(vfsRepositoryId),
      };
      final keyStorage = ref.read(_keyStorageProvider);
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
}

final _keyStorageProvider = Provider<FlutterSecureVaultStore>((ref) {
  const vaultId = 'unique_vault_id';

  return FlutterSecureVaultStore(vaultId);
}, name: 'keyStorageProvider');
