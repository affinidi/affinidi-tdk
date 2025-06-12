import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';

import '../exceptions/tdk_exception_type.dart';
import '../model/data_encryption_material.dart';
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

  /// Cryptography service instance used for encryption operations.
  final CryptographyServiceInterface _cryptographyService;

  /// Creates a new instance of [VaultDataManagerEncryptionService].
  ///
  /// [cryptographyService] - Service providing cryptographic operations
  /// [jwk] - JSON Web Key for API-based encryption
  VaultDataManagerEncryptionService({
    required CryptographyServiceInterface cryptographyService,
    required Map<String, dynamic> jwk,
  })  : _jwk = jwk,
        _cryptographyService = cryptographyService;

  /// Method to encrypt a data encryption key [dek] using the wallet crypto material.
  ///
  /// [encryptionKey] - The encryptionKey to use to encrypt the DEK
  /// [dek] - The raw DEK to be encrypted
  ///
  /// Returns the encrypted DEK as an array of bytes.
  @override
  Future<List<int>> encryptDekByWalletCryptoMaterial({
    required Uint8List encryptionKey,
    required List<int> dek,
  }) async {
    final encrypted = _cryptographyService.encryptToBytes(
      Uint8List.fromList(encryptionKey),
      Uint8List.fromList(dek),
    );

    return encrypted;
  }

  /// Method to decrypt a data encryption key [encryptedDek] using the wallet crypto material.
  ///
  /// [encryptionKey] - The encryptionKey to use to decrypt the DEK
  /// [encryptedDek] - The encrypted DEK to be decrypted
  ///
  /// Returns the decrypted DEK as an array of bytes.
  @override
  Future<List<int>> decryptDek({
    required Uint8List encryptionKey,
    required List<int> encryptedDek,
  }) async {
    final decrypted = _cryptographyService.decryptFromBytes(
      Uint8List.fromList(encryptionKey),
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

  /// Method to encrypt a data encryption key [dek] using the VFS public key.
  ///
  /// [dek] - The raw DEK to be encrypted
  ///
  /// Returns the encrypted DEK as an array of bytes.
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

  /// Method to get SHA256 hash of the wallet crypto material key.
  ///
  /// [encryptionKey] - The encryptionKey to use for the hash
  ///
  /// Returns the hash as a hexadecimal string.
  @override
  Future<String> getWalletCryptoMaterialKeyHash({
    required Uint8List encryptionKey,
  }) async {
    final hash = _cryptographyService.createSha256Hex(bytes: encryptionKey);

    return hash;
  }

  /// Method to get a data encryption key [encryptedDekBase64] encrypted by the API public key.
  ///
  /// [encryptedDekBase64] - The encrypted DEK to be decrypted
  /// [encryptionKey] - The encryptionKey to use to decrypt the DEK
  ///
  /// Returns the decrypted DEK as an array of bytes.
  @override
  Future<List<int>> getDekEncryptedByApiPublicKey({
    required String encryptedDekBase64,
    required Uint8List encryptionKey,
  }) async {
    final dek = await decryptDek(
      encryptionKey: encryptionKey,
      encryptedDek: base64.decode(encryptedDekBase64),
    );

    final encryptedDek = await encryptDekByApiPublicKey(
      dek: dek,
    );
    return encryptedDek;
  }

  /// Method to generate a new data encryption material.
  ///
  /// [encryptionKey] - The encryption key used to generate the wallet crypto material
  ///
  /// Returns a [DataEncryptionMaterial] object containing:
  /// - A newly generated DEK
  /// - The DEK encrypted with API public key
  /// - The DEK encrypted with wallet crypto material
  /// - A hash of the wallet crypto material
  @override
  Future<DataEncryptionMaterial> generateDataEncryptionMaterial({
    required Uint8List encryptionKey,
  }) async {
    final dek = _cryptographyService.getRandomBytes(nonceSize);

    final dekEncryptedByVfsPublicKey = await encryptDekByApiPublicKey(
      dek: dek,
    );

    final dekEncryptedByWalletCryptoMaterial =
        await encryptDekByWalletCryptoMaterial(
      encryptionKey: encryptionKey,
      dek: dek,
    );

    final walletCryptoMaterialHash =
        await getWalletCryptoMaterialKeyHash(encryptionKey: encryptionKey);

    return DataEncryptionMaterial(
      dek: dek,
      dekEncryptedByApiPublicKey: dekEncryptedByVfsPublicKey,
      dekEncryptedByWalletCryptoMaterial: dekEncryptedByWalletCryptoMaterial,
      walletCryptoMaterialHash: walletCryptoMaterialHash,
    );
  }
}
