import 'dart:typed_data';

import 'model/data_encryption_material.dart';

/// Interface for the VaultDataManagerEncryptionService used to encrypt and decrypt data encryption keys (DEKs) using both wallet-based and API-based methods.
///
/// It supports the following key operations:
/// - Generation of new encryption materials
/// - Encryption and decryption using wallet crypto material
/// - Encryption using API public key
/// - Hash generation for wallet crypto material
abstract interface class VaultDataManagerEncryptionServiceInterface {
  /// Method to generate a new data encryption material.
  ///
  /// [encryptionKey] - The encryption key used to generate the wallet crypto material
  ///
  /// Returns a [DataEncryptionMaterial] object containing:
  /// - A newly generated DEK
  /// - The DEK encrypted with API public key
  /// - The DEK encrypted with wallet crypto material
  /// - A hash of the wallet crypto material
  Future<DataEncryptionMaterial> generateDataEncryptionMaterial({
    required Uint8List encryptionKey,
  });

  /// Method to encrypt a data encryption key [dek] using the wallet crypto material.
  ///
  /// [encryptionKey] - The encryptionKey to use to encrypt the DEK
  /// [dek] - The raw DEK to be encrypted
  ///
  /// Returns the encrypted DEK as an array of bytes.
  Future<List<int>> encryptDekByWalletCryptoMaterial({
    required Uint8List encryptionKey,
    required List<int> dek,
  });

  /// Method to decrypt a data encryption key [encryptedDek] using the wallet crypto material.
  ///
  /// [encryptionKey] - The encryptionKey to use to decrypt the DEK
  /// [encryptedDek] - The encrypted DEK to be decrypted
  ///
  /// Returns the decrypted DEK as an array of bytes.
  Future<List<int>> decryptDek({
    required Uint8List encryptionKey,
    required List<int> encryptedDek,
  });

  /// Method to encrypt a data encryption key [dek] using the VFS public key.
  ///
  /// [dek] - The raw DEK to be encrypted
  ///
  /// Returns the encrypted DEK as an array of bytes.
  Future<List<int>> encryptDekByApiPublicKey({
    required List<int> dek,
  });

  /// Method to get a data encryption key [encryptedDekBase64] encrypted by the API public key.
  ///
  /// [encryptedDekBase64] - The encrypted DEK to be decrypted
  /// [encryptionKey] - The encryptionKey to use to decrypt the DEK
  ///
  /// Returns the decrypted DEK as an array of bytes.
  Future<List<int>> getDekEncryptedByApiPublicKey({
    required String encryptedDekBase64,
    required Uint8List encryptionKey,
  });

  /// Method to get SHA256 hash of the wallet crypto material key.
  ///
  /// [encryptionKey] - The encryptionKey to use for the hash
  ///
  /// Returns the hash as a hexadecimal string.
  Future<String> getWalletCryptoMaterialKeyHash({
    required Uint8List encryptionKey,
  });
}
