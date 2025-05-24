import 'dart:typed_data';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'mocks/mock_vault_store.dart';

void main() {
  late MockVaultStore mockVaultStore;
  late TestVaultStore testVaultStore;

  setUpAll(() {
    registerFallbackValue(Uint8List(0));
  });

  setUp(() {
    mockVaultStore = MockVaultStore();
    testVaultStore = TestVaultStore();
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

    group('seed management', () {
      final testSeed = Uint8List.fromList([1, 2, 3, 4]);

      test('should store and retrieve seed', () async {
        when(() => mockVaultStore.setSeed(any())).thenAnswer((_) async {});
        when(() => mockVaultStore.getSeed()).thenAnswer((_) async => testSeed);

        await mockVaultStore.setSeed(testSeed);
        final retrievedSeed = await mockVaultStore.getSeed();

        expect(retrievedSeed, equals(testSeed));
        verify(() => mockVaultStore.setSeed(testSeed)).called(1);
        verify(() => mockVaultStore.getSeed()).called(1);
      });

      test('should return null when no seed is stored', () async {
        when(() => mockVaultStore.getSeed()).thenAnswer((_) async => null);

        final retrievedSeed = await mockVaultStore.getSeed();
        expect(retrievedSeed, isNull);
        verify(() => mockVaultStore.getSeed()).called(1);
      });

      test('should clear seed on clear()', () async {
        when(() => mockVaultStore.clear()).thenAnswer((_) async {});

        await testVaultStore.setSeed(testSeed);
        expect(await testVaultStore.getSeed(), equals(testSeed));

        await testVaultStore.clear();
        expect(await testVaultStore.getSeed(), isNull);
      });
    });
  });
}
