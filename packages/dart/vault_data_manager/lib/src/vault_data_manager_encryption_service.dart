import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';

import 'exceptions/tdk_exception_type.dart';
import 'model/data_encryption_material.dart';
import 'vault_data_manager_encryption_service_interface.dart';

/// Implementation of the vault data manager encryption service that handles
/// encryption and decryption operations for Data Encryption Keys (DEKs).
///
/// This service provides two main encryption methods:
/// * Wallet-based encryption using PBKDF2 key derivation
/// * API-based encryption using RSA public key (JWK)
///
/// Example usage:
/// ```dart
/// final service = VaultDataManagerEncryptionService(
///   cryptographyService: CryptographyService(),
///   jwk: yourJwk,
///   encryptionKey: yourEncryptionKey,
/// );
///
/// // Generate new encryption material
/// final material = await service.generateDataEncryptionMaterial();
/// ```
class VaultDataManagerEncryptionService
    implements VaultDataManagerEncryptionServiceInterface {
  /// Size of the nonce used for encryption operations (32 bytes).
  static const nonceSize = 32;

  /// JSON Web Key used for API-based encryption operations.
  final Map<String, dynamic> _jwk;

  /// Base encryption key used for wallet-based operations.
  final Uint8List _encryptionKey;

  /// Cryptography service instance used for encryption operations.
  final CryptographyServiceInterface _cryptographyService;

  /// Creates a new instance of [VaultDataManagerEncryptionService].
  ///
  /// [cryptographyService] - Service providing cryptographic operations
  /// [jwk] - JSON Web Key for API-based encryption
  /// [kek] - Base key for wallet-based encryption
  VaultDataManagerEncryptionService({
    required CryptographyServiceInterface cryptographyService,
    required Map<String, dynamic> jwk,
    required Uint8List kek,
  })  : _jwk = jwk,
        _encryptionKey = kek,
        _cryptographyService = cryptographyService;

  /// Encrypts the provided DEK using wallet-based encryption key.
  @override
  Future<List<int>> encryptDekByWalletCryptoMaterial({
    required List<int> dek,
  }) async {
    final encrypted = _cryptographyService.encryptToBytes(
      Uint8List.fromList(_encryptionKey),
      Uint8List.fromList(dek),
    );

    return encrypted;
  }

  /// Decrypts the provided encrypted DEK using wallet-based encryption key.
  @override
  Future<List<int>> decryptDek({
    required List<int> encryptedDek,
  }) async {
    final decrypted = _cryptographyService.decryptFromBytes(
      Uint8List.fromList(_encryptionKey),
      Uint8List.fromList(encryptedDek),
    );

    if (decrypted == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to decrypt data encryption key',
          code: TdkExceptionType.failedToDecrypt.code,
        ),
        StackTrace.current,
      );
    }

    return decrypted;
  }

  /// Encrypts the provided DEK using API public key.
  @override
  Future<List<int>> encryptDekByApiPublicKey({
    required List<int> dek,
  }) async {
    final encrypted = _cryptographyService.encryptWithRsaPublicKeyFromJwk(
      jwk: _jwk,
      data: dek,
    );

    return encrypted;
  }

  /// Returns the SHA-256 hash of the wallet encryption key.
  @override
  Future<String> getWalletCryptoMaterialKeyHash() async {
    final hash = _cryptographyService.createSha256Hex(bytes: _encryptionKey);

    return hash;
  }

  /// Converts DEK from wallet encryption to API encryption.
  @override
  Future<List<int>> getDekEncryptedByApiPublicKey({
    required String encryptedDekBase64,
  }) async {
    final dek = await decryptDek(
      encryptedDek: base64.decode(encryptedDekBase64),
    );

    final encryptedDek = await encryptDekByApiPublicKey(
      dek: dek,
    );
    return encryptedDek;
  }

  @override
  Future<DataEncryptionMaterial> generateDataEncryptionMaterial() async {
    final dek = _cryptographyService.getRandomBytes(nonceSize);

    final dekEncryptedByVfsPublicKey = await encryptDekByApiPublicKey(
      dek: dek,
    );

    final dekEncryptedByWalletCryptoMaterial =
        await encryptDekByWalletCryptoMaterial(
      dek: dek,
    );

    final walletCryptoMaterialHash = await getWalletCryptoMaterialKeyHash();

    return DataEncryptionMaterial(
      dek: dek,
      dekEncryptedByApiPublicKey: dekEncryptedByVfsPublicKey,
      dekEncryptedByWalletCryptoMaterial: dekEncryptedByWalletCryptoMaterial,
      walletCryptoMaterialHash: walletCryptoMaterialHash,
    );
  }
}
