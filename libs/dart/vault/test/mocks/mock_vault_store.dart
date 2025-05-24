import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:mocktail/mocktail.dart';

class MockVaultStore extends Mock implements VaultStore {}

class TestVaultStore extends VaultStore {
  int? _accountIndex;
  final Map<String, StoredKey> _store = {};
  Uint8List? _seed;

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
    _accountIndex = null;
    _seed = null;
  }

  @override
  Future<void> setSeed(Uint8List seed) async {
    _seed = seed;
  }

  @override
  Future<Uint8List?> getSeed() async {
    return _seed;
  }
}
