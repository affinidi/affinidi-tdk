import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum _Key {
  accountIndex,
  seed;

  String key(String vaultId) => '${vaultId}_$name';
}

/// Implementation of [VaultStore] that uses Flutter's secure storage.
///
/// Uses platform specific secure storage:
/// - Android: Encrypted SharedPreferences
/// - iOS: Keychain with device-only accessibility
class FlutterSecureVaultStore extends VaultStore {
  /// Creates a new instance of [FlutterSecureVaultStore].
  ///
  /// [_vaultId] - Unique identifier for this vault store instance.
  FlutterSecureVaultStore(this._vaultId);

  final String _vaultId;

  late final _secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.unlocked_this_device,
    ),
  );

  /// Returns any pre-saved seed or null
  @override
  Future<Uint8List?> getSeed() async {
    final data = await _secureStorage.read(
      key: _Key.seed.key(_vaultId),
    );

    if (data == null) {
      return null;
    }

    return base64Decode(data);
  }

  /// Persists a seed for next time usage
  @override
  Future<void> setSeed(Uint8List value) async {
    await _secureStorage.write(
      key: _Key.seed.key(_vaultId),
      value: base64Encode(value),
    );
  }

  @override
  Future<void> set(String key, StoredKey value) async {
    if (_Key.values.any((k) => k.key(_vaultId) == key)) {
      throw ArgumentError('Cannot use reserved key: $key');
    }
    await _secureStorage.write(
      key: key,
      value: jsonEncode(value.toJson()),
    );
  }

  @override
  Future<StoredKey?> get(String key) async {
    final data = await _secureStorage.read(
      key: key,
    );
    if (data == null) {
      return null;
    }
    return StoredKey.fromJson(jsonDecode(data) as Map<String, dynamic>);
  }

  @override
  Future<void> remove(String key) async {
    if (_Key.values.any((k) => k.key(_vaultId) == key)) {
      throw ArgumentError('Cannot remove reserved key: $key');
    }
    await _secureStorage.delete(key: key);
  }

  @override
  Future<bool> contains(String key) async =>
      _secureStorage.containsKey(key: key);

  /// Returns a pre-saved account index or 0 if none was found
  @override
  Future<int> readAccountIndex() async {
    final data = await _secureStorage.read(
      key: _Key.accountIndex.key(_vaultId),
    );

    if (data == null) {
      return 0;
    }

    return int.tryParse(data) ?? 0;
  }

  /// Persists an account index
  @override
  Future<void> writeAccountIndex(int accountIndex) async {
    await _secureStorage.write(
      key: _Key.accountIndex.key(_vaultId),
      value: accountIndex.toString(),
    );
  }

  /// Removes any stored seed preventing it's re-use.
  /// Removes any stored accountIndex
  @override
  Future<void> clear() async {
    await _secureStorage.delete(key: _Key.seed.key(_vaultId));
    await _secureStorage.delete(key: _Key.accountIndex.key(_vaultId));
  }
}
