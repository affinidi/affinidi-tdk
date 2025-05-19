import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_flutter_utils/storages/flutter_secure_vault_store.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockFlutterSecureStorage mockStorage;
  late FlutterSecureVaultStore vault;

  const vaultId = 'testVault';

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    vault = FlutterSecureVaultStore(vaultId, mockStorage);
  });

  group('When storing a seed', () {
    /// Verifies that the [setSeed] method encodes and stores the seed correctly.
    test('should store the base64-encoded seed correctly', () async {
      final seed = Uint8List.fromList([1, 2, 3]);

      // stub the write method
      when(() => mockStorage.write(
            key: any(named: 'key'),
            value: any(named: 'value'),
          )).thenAnswer((_) async {});

      await vault.setSeed(seed);

      verify(() => mockStorage.write(
            key: '${vaultId}_seed',
            value: base64Encode(seed),
          )).called(1);
    });
  });

  group('When reading a seed', () {
    group('and the seed exists', () {
      test('it returns the decoded value', () async {
        final base64Seed = base64Encode([4, 5, 6]);
        when(() => mockStorage.read(key: '${vaultId}_seed'))
            .thenAnswer((_) async => base64Seed);
        final result = await vault.getSeed();
        expect(result, Uint8List.fromList([4, 5, 6]));
      });
    });

    group('and the seed does not exist', () {
      test('it returns null', () async {
        when(() => mockStorage.read(key: '${vaultId}_seed'))
            .thenAnswer((_) async => null);
        final result = await vault.getSeed();
        expect(result, isNull);
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

        await vault.writeAccountIndex(5);
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
        final index = await vault.readAccountIndex();
        expect(index, 7);
      });

      test('it returns 0 if null or invalid', () async {
        when(() => mockStorage.read(key: '${vaultId}_accountIndex'))
            .thenAnswer((_) async => null);
        expect(await vault.readAccountIndex(), 0);

        when(() => mockStorage.read(key: '${vaultId}_accountIndex'))
            .thenAnswer((_) async => 'invalid');
        expect(await vault.readAccountIndex(), 0);
      });
    });
  });
  group('When managing a stored key', () {
    const keyName = 'customKey';

    final storedKeyJson = {
      'representation': 'privateKeyBytes',
      'keyType': 'ed25519',
      'privateKeyBytes': [1, 2, 3, 4],
    };

    final storedKey = StoredKey.fromJson(storedKeyJson);
    group('and setting the key', () {
      test('it stores it as JSON', () async {
        when(() => mockStorage.write(
              key: any(named: 'key'),
              value: any(named: 'value'),
            )).thenAnswer((_) async {});

        await vault.set(keyName, storedKey);

        verify(() => mockStorage.write(
              key: keyName,
              value: jsonEncode(storedKey.toJson()),
            )).called(1);
      });
    });

    group('and getting a stored key', () {
      test('it returns a parsed StoredKey', () async {
        final jsonValue = jsonEncode(storedKey.toJson());

        when(() => mockStorage.read(key: keyName))
            .thenAnswer((_) async => jsonValue);

        final result = await vault.get(keyName);
        expect(result?.toJson(), storedKey.toJson());
      });

      test('it returns null if key is stored', () async {
        when(() => mockStorage.read(key: keyName))
            .thenAnswer((_) async => null);
        expect(await vault.get(keyName), isNull);
      });
    });

    group('and checking if key exists', () {
      test('it returns true if present', () async {
        when(() => mockStorage.containsKey(key: keyName))
            .thenAnswer((_) async => true);
        expect(await vault.contains(keyName), isTrue);
      });

      test('it returns false if absent', () async {
        when(() => mockStorage.containsKey(key: keyName))
            .thenAnswer((_) async => false);
        expect(await vault.contains(keyName), isFalse);
      });
    });
    group('and removing the key', () {
      test('it deletes the key', () async {
        when(() => mockStorage.delete(key: any(named: 'key')))
            .thenAnswer((_) async {});

        await vault.remove(keyName);
        verify(() => mockStorage.delete(key: keyName)).called(1);
      });
    });

    group('and the key is reserved', () {
      test('set throws ArgumentError', () {
        expect(() => vault.set('${vaultId}_seed', storedKey),
            throwsA(isA<ArgumentError>()));
      });

      test('remove throws ArgumentError', () {
        expect(() => vault.remove('${vaultId}_seed'),
            throwsA(isA<ArgumentError>()));
      });
    });
  });

  group('When clearing vault data', () {
    test('it removes seed and accountIndex', () async {
      when(() => mockStorage.delete(key: '${vaultId}_seed'))
          .thenAnswer((_) async {});
      when(() => mockStorage.delete(key: '${vaultId}_accountIndex'))
          .thenAnswer((_) async {});

      await vault.clear();
      verify(() => mockStorage.delete(key: '${vaultId}_seed')).called(1);
      verify(() => mockStorage.delete(key: '${vaultId}_accountIndex'))
          .called(1);
    });
  });
}
