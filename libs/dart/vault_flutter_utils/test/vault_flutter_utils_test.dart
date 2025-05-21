import 'dart:convert';

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

  group('When generating a random seed', () {
    test('should generate a 32-byte seed', () {
      final seed = vault.getRandomSeed();
      expect(seed.length, 32);
    });

    test('should generate different seeds on each call', () {
      final seed1 = vault.getRandomSeed();
      final seed2 = vault.getRandomSeed();
      expect(seed1, isNot(equals(seed2)));
    });

    test('should generate cryptographically secure random bytes', () {
      final seed = vault.getRandomSeed();
      // Check that the bytes are not all the same value
      final firstByte = seed[0];
      expect(seed.any((byte) => byte != firstByte), isTrue);
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
        expect(() => vault.set('${vaultId}_accountIndex', storedKey),
            throwsA(isA<ArgumentError>()));
      });

      test('remove throws ArgumentError', () {
        expect(() => vault.remove('${vaultId}_accountIndex'),
            throwsA(isA<ArgumentError>()));
      });
    });
  });

  group('When clearing vault data', () {
    test('it removes accountIndex', () async {
      when(() => mockStorage.delete(key: '${vaultId}_accountIndex'))
          .thenAnswer((_) async {});

      await vault.clear();
      verify(() => mockStorage.delete(key: '${vaultId}_accountIndex'))
          .called(1);
    });
  });
}
