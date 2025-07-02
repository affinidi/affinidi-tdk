import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault_flutter_utils/storages/flutter_secure_vault_store.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockFlutterSecureStorage mockStorage;
  late FlutterSecureVaultStore vaultStore;

  const vaultId = 'testVault';

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    vaultStore = FlutterSecureVaultStore(vaultId, mockStorage);
  });

  group('When managing seed', () {
    final testSeed = Uint8List.fromList([1, 2, 3, 4]);

    group('and setting the seed', () {
      test('it stores it as base64', () async {
        when(() => mockStorage.write(
              key: any(named: 'key'),
              value: any(named: 'value'),
            )).thenAnswer((_) async {});

        await vaultStore.setSeed(testSeed);

        verify(() => mockStorage.write(
              key: '${vaultId}_seed',
              value: base64Encode(testSeed),
            )).called(1);
      });
    });

    group('and getting the seed', () {
      test('it returns the stored seed', () async {
        when(() => mockStorage.read(key: '${vaultId}_seed'))
            .thenAnswer((_) async => base64Encode(testSeed));

        final result = await vaultStore.getSeed();
        expect(result, testSeed);
      });

      test('it returns null if no seed is stored', () async {
        when(() => mockStorage.read(key: '${vaultId}_seed'))
            .thenAnswer((_) async => null);
        expect(await vaultStore.getSeed(), isNull);
      });
    });
  });

  group('When managing account index', () {
    group('and storing the index', () {
      test('it stores it as a string', () async {
        when(() => mockStorage.write(
              key: any(named: 'key'),
              value: any(named: 'value'),
            )).thenAnswer((_) async {});

        await vaultStore.writeAccountIndex(5);
        verify(() => mockStorage.write(
              key: '${vaultId}_accountIndex',
              value: '5',
            )).called(1);
      });
    });

    group('and reading the index', () {
      test('it returns the stored integer', () async {
        when(() => mockStorage.read(key: '${vaultId}_accountIndex'))
            .thenAnswer((_) async => '7');
        final index = await vaultStore.readAccountIndex();
        expect(index, 7);
      });

      test('it returns 0 if null or invalid', () async {
        when(() => mockStorage.read(key: '${vaultId}_accountIndex'))
            .thenAnswer((_) async => null);
        expect(await vaultStore.readAccountIndex(), 0);

        when(() => mockStorage.read(key: '${vaultId}_accountIndex'))
            .thenAnswer((_) async => 'invalid');
        expect(await vaultStore.readAccountIndex(), 0);
      });
    });
  });

  group('When clearing vault data', () {
    test('it removes accountIndex and seed', () async {
      when(() => mockStorage.delete(key: any(named: 'key')))
          .thenAnswer((_) async {});

      await vaultStore.clear();
      verify(() => mockStorage.delete(key: '${vaultId}_accountIndex'))
          .called(1);
      verify(() => mockStorage.delete(key: '${vaultId}_seed')).called(1);
    });
  });
}
