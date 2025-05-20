import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

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

void main() {
  late MockVaultStore mockVaultStore;
  late TestVaultStore testVaultStore;

  setUp(() {
    mockVaultStore = MockVaultStore();
    testVaultStore = TestVaultStore();
    when(() => mockVaultStore.getRandomSeed())
        .thenReturn(Uint8List.fromList([1, 2, 3]));
  });

  group('VaultStore', () {
    test('should write and read account index', () async {
      when(() => mockVaultStore.writeAccountIndex(any()))
          .thenAnswer((_) async {});
      when(() => mockVaultStore.readAccountIndex()).thenAnswer((_) async => 42);

      await mockVaultStore.writeAccountIndex(42);
      final accountIndex = await mockVaultStore.readAccountIndex();

      expect(accountIndex, equals(42));
      verify(() => mockVaultStore.writeAccountIndex(42)).called(1);
      verify(() => mockVaultStore.readAccountIndex()).called(1);
    });

    group('getRandomSeed', () {
      test('should generate random seed with correct length', () {
        final seed = testVaultStore.getRandomSeed();
        expect(seed, isA<Uint8List>());
        expect(seed.length, equals(32));
      });

      test('should generate different seeds on each call', () {
        final seed1 = testVaultStore.getRandomSeed();
        final seed2 = testVaultStore.getRandomSeed();
        expect(seed1, isNot(equals(seed2)));
      });

      test('should generate valid byte values', () {
        final seed = testVaultStore.getRandomSeed();
        for (final byte in seed) {
          expect(byte, inInclusiveRange(0, 255));
        }
      });

      test('should handle multiple consecutive calls', () {
        final seeds = List.generate(3, (_) => testVaultStore.getRandomSeed());

        // All seeds should be different
        expect(seeds[0], isNot(equals(seeds[1])));
        expect(seeds[1], isNot(equals(seeds[2])));
        expect(seeds[0], isNot(equals(seeds[2])));

        // All seeds should be valid
        for (final seed in seeds) {
          expect(seed.length, equals(32));
          for (final byte in seed) {
            expect(byte, inInclusiveRange(0, 255));
          }
        }
      });
    });
  });
}
