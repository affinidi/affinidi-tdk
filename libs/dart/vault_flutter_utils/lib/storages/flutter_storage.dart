import 'dart:convert';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class Storage {
  Future<void> set(String key, StoredKey value);
  Future<StoredKey?> get(String key);
  Future<void> remove(String key);
  Future<bool> contains(String key);
}

class FlutterStorage implements Storage {
  /// Creates a new instance of [FlutterStorage].

  late final _secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.unlocked_this_device,
    ),
  );

  @override
  Future<void> set(String key, StoredKey value) async {
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
    await _secureStorage.delete(key: key);
  }

  @override
  Future<bool> contains(String key) async =>
      _secureStorage.containsKey(key: key);
}
