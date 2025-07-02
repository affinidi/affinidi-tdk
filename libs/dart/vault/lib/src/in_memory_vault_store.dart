import 'dart:typed_data';

import 'storage_interfaces/vault_store.dart';

/// An in memory implementation of [VaultStore] for storing seed and account index data.
///
/// This implementation stores all data in memory
class InMemoryVaultStore extends VaultStore {
  /// Creates a new instance of [InMemoryVaultStore].
  InMemoryVaultStore();

  int _accountIndex = 0;
  Uint8List? _seed;

  @override
  Future<void> setSeed(Uint8List seed) async {
    _seed = seed;
  }

  @override
  Future<Uint8List?> getSeed() async {
    return _seed;
  }

  @override
  Future<void> clear() async {
    _seed = null;
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
