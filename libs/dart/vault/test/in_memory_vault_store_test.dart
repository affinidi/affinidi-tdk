import 'dart:typed_data';

import 'package:affinidi_tdk_vault/src/in_memory_vault_store.dart';
import 'package:test/test.dart';

import 'fixtures/vault_store_fixtures.dart';

void main() {
  late InMemoryVaultStore store;

  setUp(() {
    store = InMemoryVaultStore();
  });

  group('InMemoryVaultStore', () {
    group('When managing seed', () {
      final testSeed = Uint8List.fromList([1, 2, 3, 4]);

      test('it should store and retrieve seed', () async {
        await store.setSeed(testSeed);
        final retrieved = await store.getSeed();
        expect(retrieved, equals(testSeed));
      });

      test('it should return null when no seed is stored', () async {
        final retrieved = await store.getSeed();
        expect(retrieved, isNull);
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
        await store.setSeed(Uint8List.fromList([1, 2, 3, 4]));
        await store.writeAccountIndex(VaultStoreFixtures.testAccountIndex);

        // Clear all data
        await store.clear();

        // Verify all data is cleared
        expect(await store.getSeed(), isNull);
        expect(await store.readAccountIndex(), equals(0));
      });
    });
  });
}
