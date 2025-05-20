import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/src/vault/in_memory_vault_store.dart';
import 'package:test/test.dart';

void main() {
  late InMemoryVaultStore store;

  setUp(() {
    store = InMemoryVaultStore();
  });

  group('InMemoryVaultStore', () {
    test('should store and retrieve keys', () async {
      final key = StoredKey.fromJson({
        'representation': 'privateKeyBytes',
        'keyType': 'ed25519',
        'privateKeyBytes': [1, 2, 3, 4],
      });

      await store.set('test_key', key);
      final retrieved = await store.get('test_key');
      expect(retrieved?.toJson(), equals(key.toJson()));
    });

    test('should store and retrieve seed', () async {
      final seed = Uint8List.fromList([1, 2, 3, 4, 5]);
      await store.setSeed(seed);
      final retrieved = await store.getSeed();
      expect(retrieved, equals(seed));
    });

    test('should store and retrieve account index', () async {
      await store.writeAccountIndex(42);
      final index = await store.readAccountIndex();
      expect(index, equals(42));
    });

    test('should check if key exists', () async {
      final key = StoredKey.fromJson({
        'representation': 'privateKeyBytes',
        'keyType': 'ed25519',
        'privateKeyBytes': [1, 2, 3, 4],
      });

      expect(await store.contains('test_key'), isFalse);
      await store.set('test_key', key);
      expect(await store.contains('test_key'), isTrue);
    });

    test('should remove key', () async {
      final key = StoredKey.fromJson({
        'representation': 'privateKeyBytes',
        'keyType': 'ed25519',
        'privateKeyBytes': [1, 2, 3, 4],
      });

      await store.set('test_key', key);
      expect(await store.contains('test_key'), isTrue);
      await store.remove('test_key');
      expect(await store.contains('test_key'), isFalse);
    });

    test('should clear all data', () async {
      final key = StoredKey.fromJson({
        'representation': 'privateKeyBytes',
        'keyType': 'ed25519',
        'privateKeyBytes': [1, 2, 3, 4],
      });
      final seed = Uint8List.fromList([1, 2, 3, 4, 5]);

      await store.set('test_key', key);
      await store.setSeed(seed);
      await store.writeAccountIndex(42);

      await store.clear();

      expect(await store.get('test_key'), isNull);
      expect(await store.getSeed(), isNull);
      expect(await store.readAccountIndex(), equals(0));
    });
  });
}
