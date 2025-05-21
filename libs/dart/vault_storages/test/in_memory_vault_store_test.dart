import 'package:affinidi_tdk_vault_storages/src/vault/in_memory_vault_store.dart';
import 'package:test/test.dart';
import 'fixtures/vault_store_fixtures.dart';

void main() {
  late InMemoryVaultStore store;

  setUp(() {
    store = InMemoryVaultStore();
  });

  group('InMemoryVaultStore', () {
    group('When managing keys', () {
      test('it should store and retrieve keys', () async {
        final key = VaultStoreFixtures.testStoredKey;

        await store.set(VaultStoreFixtures.testKeyId, key);
        final retrieved = await store.get(VaultStoreFixtures.testKeyId);
        expect(retrieved?.keyType, equals(key.keyType));
        expect(retrieved?.privateKeyBytes, equals(key.privateKeyBytes));
      });

      test('it should check if key exists', () async {
        final key = VaultStoreFixtures.testStoredKey;

        expect(await store.contains(VaultStoreFixtures.testKeyId), isFalse);
        await store.set(VaultStoreFixtures.testKeyId, key);
        expect(await store.contains(VaultStoreFixtures.testKeyId), isTrue);
      });

      test('it should remove key', () async {
        final key = VaultStoreFixtures.testStoredKey;

        await store.set(VaultStoreFixtures.testKeyId, key);
        expect(await store.contains(VaultStoreFixtures.testKeyId), isTrue);
        await store.remove(VaultStoreFixtures.testKeyId);
        expect(await store.contains(VaultStoreFixtures.testKeyId), isFalse);
      });
    });

    group('When managing account index', () {
      test('it should store and retrieve account index', () async {
        await store.writeAccountIndex(VaultStoreFixtures.testAccountIndex);
        final index = await store.readAccountIndex();
        expect(index, equals(VaultStoreFixtures.testAccountIndex));
      });
    });

    group('When clearing data', () {
      test('it should clear all stored data', () async {
        // Setup test data
        await store.set(
            VaultStoreFixtures.testKeyId, VaultStoreFixtures.testStoredKey);
        await store.writeAccountIndex(VaultStoreFixtures.testAccountIndex);

        // Clear all data
        await store.clear();

        // Verify all data is cleared
        expect(await store.get(VaultStoreFixtures.testKeyId), isNull);
        expect(await store.readAccountIndex(), equals(0));
      });
    });
  });
}
