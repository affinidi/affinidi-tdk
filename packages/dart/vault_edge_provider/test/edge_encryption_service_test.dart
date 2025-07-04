import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_edge_provider/src/services/edge_encryption_service.dart';
import 'package:test/test.dart';

void main() {
  late final cypher = Uint8List(32);

  group('When encrypting and decrypting data', () {
    late EdgeEncryptionService encryptionService;

    setUp(() async {
      encryptionService = EdgeEncryptionService(cipher: cypher);
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

  group('When decrypting data with invalid length', () {
    late EdgeEncryptionService encryptionService;

    setUp(() async {
      encryptionService = EdgeEncryptionService(cipher: cypher);
    });

    test('it throws TdkException for data shorter than minimum required length',
        () async {
      final invalidData = Uint8List(20);

      expect(
        () => encryptionService.decryptData(invalidData),
        throwsA(
          isA<TdkException>()
              .having(
                (e) => e.message,
                'message',
                'Failed to decrypt data',
              )
              .having(
                (e) => e.originalMessage,
                'originalMessage',
                'Invalid data length',
              ),
        ),
      );
    });

    test('it throws TdkException for empty data', () async {
      final emptyData = Uint8List(0);

      expect(
        () => encryptionService.decryptData(emptyData),
        throwsA(
          isA<TdkException>()
              .having(
                (e) => e.message,
                'message',
                'Failed to decrypt data',
              )
              .having(
                (e) => e.originalMessage,
                'originalMessage',
                'Invalid data length',
              ),
        ),
      );
    });

    test(
        'it throws TdkException for data exactly at minimum length but invalid format',
        () async {
      final invalidData = Uint8List(28);

      expect(
        () => encryptionService.decryptData(invalidData),
        throwsA(
          isA<TdkException>().having(
            (e) => e.message,
            'message',
            'Failed to decrypt data',
          ),
        ),
      );
    });
  });
}
