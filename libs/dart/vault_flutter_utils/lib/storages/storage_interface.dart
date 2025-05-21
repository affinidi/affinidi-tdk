import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

abstract interface class StorageInterface {
  Future<void> set(String key, StoredKey value);
  Future<StoredKey?> get(String key);
  Future<void> remove(String key);
  Future<bool> contains(String key);
}
