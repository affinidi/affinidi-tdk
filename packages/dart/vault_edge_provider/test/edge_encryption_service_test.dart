import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_edge_provider/src/services/edge_encryption_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockVaultStore extends Mock implements VaultStore {}

void main() {
  setUpAll(() {
    registerFallbackValue(ContentKey(
      key: Uint8List(32),
      nonce: Uint8List(12),
    ));
  });

  group('When initializing edge encryption service', () {
    late EdgeEncryptionService encryptionService;
    late MockVaultStore mockVaultStore;
    ContentKey? capturedContentKey;

    setUp(() {
      mockVaultStore = MockVaultStore();
      encryptionService = EdgeEncryptionService(vaultStore: mockVaultStore);
      capturedContentKey = null;

      when(() => mockVaultStore.writeContentKey(any()))
          .thenAnswer((invocation) async {
        capturedContentKey = invocation.positionalArguments[0] as ContentKey;
      });

      when(() => mockVaultStore.readContentKey())
          .thenAnswer((_) async => capturedContentKey);
    });

    group('and it is initialized successfully,', () {
      test('it returns true and stores encrypted master key', () async {
        final result =
            await encryptionService.initializeWithPassphrase('test123');

        expect(result, isTrue);
        verify(() => mockVaultStore.writeContentKey(any())).called(1);
      });

      test('it correctly reports initialization status', () async {
        final notInitialized = await encryptionService.isInitialized();
        expect(notInitialized, isFalse);

        await encryptionService.initializeWithPassphrase('test123');

        final initialized = await encryptionService.isInitialized();
        expect(initialized, isTrue);
      });
    });

    group('and it fails to initialize,', () {
      test('it returns false when storage operation fails', () async {
        when(() => mockVaultStore.writeContentKey(any()))
            .thenThrow(Exception('Storage error'));

        final result =
            await encryptionService.initializeWithPassphrase('test123');

        expect(result, isFalse);
      });
    });
  });

  group('When loading master key with correct passphrase', () {
    late EdgeEncryptionService encryptionService;
    late MockVaultStore mockVaultStore;
    ContentKey? capturedContentKey;

    setUp(() {
      mockVaultStore = MockVaultStore();
      encryptionService = EdgeEncryptionService(vaultStore: mockVaultStore);
      capturedContentKey = null;

      when(() => mockVaultStore.writeContentKey(any()))
          .thenAnswer((invocation) async {
        capturedContentKey = invocation.positionalArguments[0] as ContentKey;
      });

      when(() => mockVaultStore.readContentKey())
          .thenAnswer((_) async => capturedContentKey);
    });

    test('it loads master key successfully', () async {
      await encryptionService.initializeWithPassphrase('test123');

      encryptionService.clearMasterKey();

      final result =
          await encryptionService.loadMasterKeyWithPassphrase('test123');

      expect(result, isTrue);
    });
  });

  group('When loading master key with missing data', () {
    late EdgeEncryptionService encryptionService;
    late MockVaultStore mockVaultStore;
    ContentKey? capturedContentKey;

    setUp(() {
      mockVaultStore = MockVaultStore();
      encryptionService = EdgeEncryptionService(vaultStore: mockVaultStore);
      capturedContentKey = null;

      when(() => mockVaultStore.writeContentKey(any()))
          .thenAnswer((invocation) async {
        capturedContentKey = invocation.positionalArguments[0] as ContentKey;
      });

      when(() => mockVaultStore.readContentKey())
          .thenAnswer((_) async => capturedContentKey);
    });

    test('it returns false when encrypted master key not found', () async {
      final result =
          await encryptionService.loadMasterKeyWithPassphrase('test123');

      expect(result, isFalse);
    });

    test('it returns false when nonce not found', () async {
      await encryptionService.initializeWithPassphrase('test123');
      encryptionService.clearMasterKey();

      capturedContentKey = null;

      final result =
          await encryptionService.loadMasterKeyWithPassphrase('test123');

      expect(result, isFalse);
    });
  });

  group('When changing passphrase with correct old passphrase', () {
    late EdgeEncryptionService encryptionService;
    late MockVaultStore mockVaultStore;
    ContentKey? capturedContentKey;

    setUp(() {
      mockVaultStore = MockVaultStore();
      encryptionService = EdgeEncryptionService(vaultStore: mockVaultStore);
      capturedContentKey = null;

      when(() => mockVaultStore.writeContentKey(any()))
          .thenAnswer((invocation) async {
        capturedContentKey = invocation.positionalArguments[0] as ContentKey;
      });

      when(() => mockVaultStore.readContentKey())
          .thenAnswer((_) async => capturedContentKey);
    });

    test('it changes passphrase successfully', () async {
      await encryptionService.initializeWithPassphrase('old123');

      final result =
          await encryptionService.changePassphrase('old123', 'new456');

      expect(result, isTrue);
      verify(() => mockVaultStore.writeContentKey(any()))
          .called(greaterThan(1));
    });
  });

  group('When changing passphrase with incorrect old passphrase', () {
    late EdgeEncryptionService encryptionService;
    late MockVaultStore mockVaultStore;
    ContentKey? capturedContentKey;

    setUp(() {
      mockVaultStore = MockVaultStore();
      encryptionService = EdgeEncryptionService(vaultStore: mockVaultStore);
      capturedContentKey = null;

      when(() => mockVaultStore.writeContentKey(any()))
          .thenAnswer((invocation) async {
        capturedContentKey = invocation.positionalArguments[0] as ContentKey;
      });

      when(() => mockVaultStore.readContentKey())
          .thenAnswer((_) async => capturedContentKey);
    });

    test('it returns false', () async {
      await encryptionService.initializeWithPassphrase('correct123');

      final result =
          await encryptionService.changePassphrase('wrong123', 'new456');

      expect(result, isFalse);
    });
  });

  group('When encrypting and decrypting data with loaded master key', () {
    late EdgeEncryptionService encryptionService;
    late MockVaultStore mockVaultStore;
    ContentKey? capturedContentKey;

    setUp(() async {
      mockVaultStore = MockVaultStore();
      encryptionService = EdgeEncryptionService(vaultStore: mockVaultStore);
      capturedContentKey = null;

      when(() => mockVaultStore.writeContentKey(any()))
          .thenAnswer((invocation) async {
        capturedContentKey = invocation.positionalArguments[0] as ContentKey;
      });

      when(() => mockVaultStore.readContentKey())
          .thenAnswer((_) async => capturedContentKey);

      await encryptionService.initializeWithPassphrase('test123');
    });

    test('it encrypts and decrypts data successfully', () async {
      final originalData = Uint8List.fromList([1, 2, 3, 4, 5]);

      final encryptedData = await encryptionService.encryptData(originalData);
      final decryptedData = await encryptionService.decryptData(encryptedData);

      expect(encryptedData, isNotNull);
      expect(encryptedData, isNot(equals(originalData)));
      expect(decryptedData, isNotNull);
      expect(decryptedData, equals(originalData));
    });

    test('it handles multiple encryption/decryption operations', () async {
      final data1 = Uint8List.fromList(utf8.encode('First message'));
      final data2 = Uint8List.fromList(utf8.encode('Second message'));
      final data3 = Uint8List.fromList(utf8.encode('Third message'));

      final encrypted1 = await encryptionService.encryptData(data1);
      final encrypted2 = await encryptionService.encryptData(data2);
      final encrypted3 = await encryptionService.encryptData(data3);

      final decrypted1 = await encryptionService.decryptData(encrypted1);
      final decrypted2 = await encryptionService.decryptData(encrypted2);
      final decrypted3 = await encryptionService.decryptData(encrypted3);

      expect(decrypted1, equals(data1));
      expect(decrypted2, equals(data2));
      expect(decrypted3, equals(data3));

      expect(encrypted1, isNot(equals(encrypted2)));
      expect(encrypted2, isNot(equals(encrypted3)));
      expect(encrypted1, isNot(equals(encrypted3)));
    });

    test('it handles large data encryption/decryption', () async {
      final largeData = Uint8List(1024);
      for (var i = 0; i < largeData.length; i++) {
        largeData[i] = i % 256;
      }

      final encrypted = await encryptionService.encryptData(largeData);
      final decrypted = await encryptionService.decryptData(encrypted);

      expect(encrypted, isNotNull);
      expect(decrypted, equals(largeData));
      expect(encrypted.length, greaterThan(largeData.length));
    });
  });

  group('When encrypting and decrypting data without master key', () {
    late EdgeEncryptionService encryptionService;
    late MockVaultStore mockVaultStore;
    ContentKey? capturedContentKey;

    setUp(() async {
      mockVaultStore = MockVaultStore();
      encryptionService = EdgeEncryptionService(vaultStore: mockVaultStore);
      capturedContentKey = null;

      when(() => mockVaultStore.writeContentKey(any()))
          .thenAnswer((invocation) async {
        capturedContentKey = invocation.positionalArguments[0] as ContentKey;
      });

      when(() => mockVaultStore.readContentKey())
          .thenAnswer((_) async => capturedContentKey);

      await encryptionService.initializeWithPassphrase('test123');
    });

    test('it throws exception when encrypting data', () async {
      encryptionService.clearMasterKey();
      final data = Uint8List.fromList([1, 2, 3]);

      expect(
        () => encryptionService.encryptData(data),
        throwsA(isA<TdkException>()),
      );
    });

    test('it throws exception when decrypting data', () async {
      final encryptedData = Uint8List.fromList([1, 2, 3, 4, 5]);
      encryptionService.clearMasterKey();

      expect(
        () => encryptionService.decryptData(encryptedData),
        throwsA(isA<TdkException>()),
      );
    });

    test('it throws exception when decrypting invalid data', () async {
      final invalidData = Uint8List.fromList([1, 2]);

      expect(
        () => encryptionService.decryptData(invalidData),
        throwsA(isA<TdkException>()),
      );
    });
  });

  group('When clearing master key', () {
    late EdgeEncryptionService encryptionService;
    late MockVaultStore mockVaultStore;
    ContentKey? capturedContentKey;

    setUp(() {
      mockVaultStore = MockVaultStore();
      encryptionService = EdgeEncryptionService(vaultStore: mockVaultStore);
      capturedContentKey = null;

      when(() => mockVaultStore.writeContentKey(any()))
          .thenAnswer((invocation) async {
        capturedContentKey = invocation.positionalArguments[0] as ContentKey;
      });

      when(() => mockVaultStore.readContentKey())
          .thenAnswer((_) async => capturedContentKey);
    });

    test('it prevents encryption operations', () async {
      await encryptionService.initializeWithPassphrase('test123');

      encryptionService.clearMasterKey();

      final data = Uint8List.fromList([1, 2, 3]);
      expect(
        () => encryptionService.encryptData(data),
        throwsA(isA<TdkException>()),
      );
    });
  });

  group('When performing complete encryption lifecycle', () {
    late EdgeEncryptionService encryptionService;
    late MockVaultStore mockVaultStore;
    ContentKey? capturedContentKey;

    setUp(() {
      mockVaultStore = MockVaultStore();
      encryptionService = EdgeEncryptionService(vaultStore: mockVaultStore);
      capturedContentKey = null;

      when(() => mockVaultStore.writeContentKey(any()))
          .thenAnswer((invocation) async {
        capturedContentKey = invocation.positionalArguments[0] as ContentKey;
      });

      when(() => mockVaultStore.readContentKey())
          .thenAnswer((_) async => capturedContentKey);
    });

    test('it handles init → encrypt → change passphrase → decrypt workflow',
        () async {
      final originalData = Uint8List.fromList(utf8.encode('Hello, World!'));

      final initResult =
          await encryptionService.initializeWithPassphrase('pass123');
      expect(initResult, isTrue);

      final encryptedData = await encryptionService.encryptData(originalData);
      expect(encryptedData, isNotNull);
      expect(encryptedData, isNot(equals(originalData)));

      final changeResult =
          await encryptionService.changePassphrase('pass123', 'new456');
      expect(changeResult, isTrue);

      final decryptedData = await encryptionService.decryptData(encryptedData);
      expect(decryptedData, isNotNull);
      expect(decryptedData, equals(originalData));
    });
  });
}
