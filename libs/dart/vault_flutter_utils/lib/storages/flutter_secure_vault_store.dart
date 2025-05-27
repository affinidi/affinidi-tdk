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
  FlutterSecureVaultStore(this._vaultId, [FlutterSecureStorage? secureStorage])
      : _secureStorage = secureStorage ??
            const FlutterSecureStorage(
              aOptions: AndroidOptions(encryptedSharedPreferences: true),
              iOptions: IOSOptions(
                  accessibility: KeychainAccessibility.unlocked_this_device),
            );

  final String _vaultId;
  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> setSeed(Uint8List seed) async {
    await _secureStorage.write(
      key: _Key.seed.key(_vaultId),
      value: base64Encode(seed),
    );
  }

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

  /// Removes all stored data including account index and seed
  @override
  Future<void> clear() async {
    await _secureStorage.delete(key: _Key.accountIndex.key(_vaultId));
    await _secureStorage.delete(key: _Key.seed.key(_vaultId));
  }
}
