import 'dart:typed_data';

import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/encryption/encrypted_data_encryption_key.dart';
import 'fixtures/encryption/encryption_key.dart';
import 'fixtures/encryption/jwk.dart';

import 'mocks/mock_cryptography_service.dart';
import 'mocks/mock_cryptography_setup.dart';

void main() {
  setUpAll(registerMockFallbacks);

  group('Vault data manager encryption service', () {
    late VaultDataManagerEncryptionService vaultDataManagerEncryptionService;
    late MockCryptographyService mockCryptographyService;

    setUp(() {
      mockCryptographyService = MockCryptographyService();
      setupMockCryptographyDefaults(mockCryptographyService);
      vaultDataManagerEncryptionService = VaultDataManagerEncryptionService(
        cryptographyService: mockCryptographyService,
        jwk: jwk,
        kek: Uint8List(2),
      );
    });

    group('When generating data encryption material', () {
      test('it returns a valid data encryption material', () async {
        final dateEncryptionMaterial = await vaultDataManagerEncryptionService
            .generateDataEncryptionMaterial();

        expect(dateEncryptionMaterial, isNotNull);
        expect(dateEncryptionMaterial.dek.length, equals(32));
        expect(dateEncryptionMaterial.dekEncryptedByApiPublicKey, isNotNull);
        expect(dateEncryptionMaterial.dekEncryptedByWalletCryptoMaterial,
            isNotNull);
        expect(dateEncryptionMaterial.walletCryptoMaterialHash, isNotNull);
        verify(() => mockCryptographyService.getRandomBytes(32)).called(1);
      });

      test('it generates different DEKs each time', () async {
        when(() => mockCryptographyService.getRandomBytes(32)).thenReturn(
          Uint8List.fromList(List.generate(32, (i) => i)),
        );
        when(() => mockCryptographyService.getRandomBytes(32)).thenReturn(
          Uint8List.fromList(List.generate(32, (i) => i + 1)),
        );
        final dateEncryptionMaterial1 = await vaultDataManagerEncryptionService
            .generateDataEncryptionMaterial();
        final dateEncryptionMaterial2 = await vaultDataManagerEncryptionService
            .generateDataEncryptionMaterial();

        expect(dateEncryptionMaterial1, isNot(dateEncryptionMaterial2));
        verify(() => mockCryptographyService.getRandomBytes(32)).called(2);
      });
    });

    group('When retrieving wallet crypto material hash', () {
      test('it generates the same hash for the same wallet key', () async {
        final dateEncryptionMaterial1 = await vaultDataManagerEncryptionService
            .getWalletCryptoMaterialKeyHash();
        final dateEncryptionMaterial2 = await vaultDataManagerEncryptionService
            .getWalletCryptoMaterialKeyHash();
        expect(dateEncryptionMaterial1, equals(dateEncryptionMaterial2));
      });
    });

    group('When encrypting a DEK', () {
      test('it encrypts the DEK by wallet crypto material', () async {
        final encryptedDek = await vaultDataManagerEncryptionService
            .encryptDekByWalletCryptoMaterial(dek: encryptionKey);
        expect(encryptedDek, isNotNull);
        verify(() => mockCryptographyService.encryptToBytes(any(), any()))
            .called(1);
      });
      test('it encrypts the DEK by API public key', () async {
        final encryptedDek =
            await vaultDataManagerEncryptionService.encryptDekByApiPublicKey(
          dek: encryptionKey,
        );
        expect(encryptedDek, isNotNull);
        verify(() => mockCryptographyService.encryptWithRsaPublicKeyFromJwk(
              jwk: any(named: 'jwk'),
              data: any(named: 'data'),
            )).called(1);
      });
    });

    group('When decrypting a DEK', () {
      test('it decrypts the DEK by wallet crypto material', () async {
        final decryptedDek = await vaultDataManagerEncryptionService.decryptDek(
            encryptedDek: encryptedDek);
        expect(decryptedDek, isNotNull);
      });
      test('it throws an exception when decryption fails', () async {
        when(() => mockCryptographyService.decryptFromBytes(any(), any()))
            .thenReturn(null);
        expect(
          () => vaultDataManagerEncryptionService
              .decryptDek(encryptedDek: [1, 2, 3]),
          throwsA(isA<Exception>()),
        );
      });
    });

    group('When converting a wallet encrypted DEK to API encrypted DEK', () {
      test('it converts the DEK to API encrypted DEK', () async {
        final apiEncrypted = await vaultDataManagerEncryptionService
            .getDekEncryptedByApiPublicKey(
          encryptedDekBase64: encryptedDekBase64,
        );
        expect(apiEncrypted, isNotNull);
        verify(() => mockCryptographyService.decryptFromBytes(any(), any()))
            .called(1);
        verify(() => mockCryptographyService.encryptWithRsaPublicKeyFromJwk(
              jwk: any(named: 'jwk'),
              data: any(named: 'data'),
            )).called(1);
      });
      test('it throws an exception when the input is invalid', () {
        expect(
          () => vaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
              encryptedDekBase64: 'invalid_base64'),
          throwsA(isA<FormatException>()),
        );
      });
    });
  });
}
