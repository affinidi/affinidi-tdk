import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_seed_cryptography/src/models/wallet_materials.dart';
import 'package:convert/convert.dart';

import 'exceptions/incompatible_decryption_exception.dart';

/// A service class responsible for handling cryptographic operations
/// related to wallet seed. This class provides methods to encrypt,
/// decrypt, and manage cryptographic keys for secure data handling.
///
/// Example usage:
/// ```dart
/// final seed = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8]);
/// final passphrase = 'mySecretPassphrase';
///
/// // Encrypt the seed
/// final walletMaterials = await SeedCryptographyService.encryptSeed(
///   seed: seed,
///   passphrase: passphrase,
/// );
///
/// // Decrypt the seed
/// final decryptedSeed = await SeedCryptographyService.decryptSeed(
///   encryptedSeedHex: walletMaterials.encryptedSeed,
///   encryptionKeyHex: walletMaterials.encryptionKey,
/// );
/// ```
class SeedCryptographyService {
  static final CryptographyService _cryptographyService = CryptographyService();

  /// This method uses PBKDF2 to derive a key from the [passphrase] and a random nonce,
  /// then encrypts the [seed] using AES-256 encryption.
  ///
  /// Parameters:
  /// - [seed]: The seed to be encrypted, as a [Uint8List].
  /// - [passphrase]: The passphrase to be used for encryption, as a [String].
  ///
  /// Returns:
  /// [WalletMaterials] object containing the encrypted seed
  /// and the encryption key.
  static Future<WalletMaterials> encryptSeed({
    required Uint8List seed,
    required String passphrase,
  }) async {
    print('Started encrypting seed');
    final keyBytes = await _cryptographyService.Pbkdf2(
      password: passphrase,
      nonce: _cryptographyService.getRandomBytes(32),
    );
    String encryptedSeed = await _cryptographyService.Aes256EncryptStringToHex(
      key: keyBytes,
      data: hex.encode(seed),
    );

    print('Completed encrypting seed');
    return WalletMaterials(
      encryptedSeed: encryptedSeed,
      encryptionKey: hex.encode(keyBytes),
    );
  }

  /// This method takes an encrypted seed and decrypts it, returning the
  /// decrypted seed as a [Uint8List].
  ///
  /// Parameters:
  /// - [encryptedSeedHex]: The seed to be decrypted, as a [String].
  /// - [encryptionKeyHex]: The encryption key to be used for decryption, as a [String].
  ///
  /// Returns:
  /// A [Uint8List] representing the decrypted seed.
  static Future<Uint8List> decryptSeed({
    required String encryptedSeedHex,
    required String encryptionKeyHex,
  }) async {
    print('Started decrypting seed');

    try {
      final decryptedSeed =
          await _cryptographyService.Aes256DecryptStringFromHex(
        key: hex.decode(encryptionKeyHex),
        encryptedData: encryptedSeedHex,
      );
      if (decryptedSeed == null) {
        throw IncompatibleDecryptionException();
      }

      print('Completed decrypting seed');
      return Uint8List.fromList(hex.decode(decryptedSeed));
    } on IncompatibleDecryptionException catch (_) {
      return _decryptLegacySeed(
        encryptedSeedHex: encryptedSeedHex,
        encryptionKeyHex: encryptionKeyHex,
      );
    } catch (e) {
      print('Error decrypting seed: $e');
      rethrow;
    }
  }

  /// This method is used to decrypt a seed that was encrypted or derived using the
  /// legacy Affinidi JS SDK. The decrypted seed is returned as a [Uint8List].
  ///
  /// Parameters:
  /// - [encryptedSeedHex]: The seed to be decrypted as a [String].
  /// - [encryptionKeyHex]: The encryption key to be used for decryption as a [String].
  ///
  /// Returns:
  /// - A [Uint8List] containing the decrypted seed.
  static Uint8List _decryptLegacySeed({
    required String encryptedSeedHex,
    required String encryptionKeyHex,
  }) {
    print('Started decrypting legacy seed');
    final int ivLength = 16;
    final String didMethodSeparator = '++';

    final List<int> walletSeedBuff = hex.decode(encryptedSeedHex);
    final nonce = walletSeedBuff.sublist(0, ivLength);
    final ciphertextAndMac = walletSeedBuff.sublist(ivLength);
    final key = hex.decode(encryptionKeyHex);

    final decryptedSeed = _cryptographyService.aesCbcDecrypt(
      key: Uint8List.fromList(key),
      iv: Uint8List.fromList(nonce),
      cipherText: Uint8List.fromList(ciphertextAndMac),
    );

    final decryptedSeedEncoded = utf8.decode(decryptedSeed);

    final [seed, ...didMethod] = decryptedSeedEncoded.split(
      didMethodSeparator,
    );

    print('Completed decrypting legacy seed');
    return Uint8List.fromList(hex.decode(seed));
  }
}
