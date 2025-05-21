import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// An in memory implementation of [VaultStore] for storing keys and seed data.
///
/// This implementation stores all data in memory
class InMemoryVaultStore extends VaultStore {
  /// Creates a new instance of [InMemoryVaultStore].
  InMemoryVaultStore();

  final Map<String, StoredKey> _keyPairStore = {};
  int _accountIndex = 0;

  @override
  Future<void> set(String key, StoredKey value) async {
    _keyPairStore[key] = value;
  }

  @override
  Future<StoredKey?> get(String key) async {
    return _keyPairStore[key];
  }

  @override
  Future<void> remove(String key) async {
    _keyPairStore.remove(key);
  }

  @override
  Future<bool> contains(String key) async {
    return _keyPairStore.containsKey(key);
  }

  @override
  Future<void> clear() async {
    _keyPairStore.clear();
    _accountIndex = 0;
  }

  @override
  Future<int> readAccountIndex() async {
    return _accountIndex;
  }

  @override
  Future<void> writeAccountIndex(int accountIndex) async {
    _accountIndex = accountIndex;
  }
}
