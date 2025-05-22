import 'dart:typed_data';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'mocks/mock_vault_store.dart';

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

        expect(seeds[0], isNot(equals(seeds[1])));
        expect(seeds[1], isNot(equals(seeds[2])));
        expect(seeds[0], isNot(equals(seeds[2])));

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
