import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:mocktail/mocktail.dart';

class MockVaultStore extends Mock implements VaultStore {}

class TestVaultStore extends VaultStore {
  int? _accountIndex;
  final Map<String, StoredKey> _store = {};

  @override
  Future<void> writeAccountIndex(int accountIndex) async {
    _accountIndex = accountIndex;
  }

  @override
  Future<int> readAccountIndex() async {
    return _accountIndex ?? 0;
  }

  @override
  Future<void> clear() async {
    _store.clear();
  }

  @override
  Future<bool> contains(String key) async {
    return _store.containsKey(key);
  }

  @override
  Future<StoredKey?> get(String key) async {
    return _store[key];
  }

  @override
  Future<Uint8List> getSeed() async {
    return Uint8List.fromList([1, 2, 3]);
  }

  @override
  Future<void> remove(String key) async {
    _store.remove(key);
  }

  @override
  Future<void> set(String key, StoredKey value) async {
    _store[key] = value;
  }

  @override
  Future<void> setSeed(Uint8List seed) async {}
}
