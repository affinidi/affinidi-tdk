import 'dart:math';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';

class MockVaultStore extends Mock implements VaultStore {}

class TestVaultStore extends VaultStore {
  int? _accountIndex;
  final Map<String, StoredKey> _store = {};
  final _random = Random.secure();

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
  Uint8List getRandomSeed() {
    final seed = Uint8List(32);
    for (var i = 0; i < 32; i++) {
      seed[i] = _random.nextInt(256);
    }
    return seed;
  }

  @override
  Future<void> remove(String key) async {
    _store.remove(key);
  }

  @override
  Future<void> set(String key, StoredKey value) async {
    _store[key] = value;
  }
}
