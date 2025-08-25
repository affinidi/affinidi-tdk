import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:cryptography/cryptography.dart';

import '../exceptions/tdk_exception_type.dart';
import 'edge_encryption_service_interface.dart';

/// Implementation of the edge encryption service
class EdgeEncryptionService implements EdgeEncryptionServiceInterface {
  static const int _ivLength = 12; // 96 bits for GCM
  static const int _tagLength = 16; // 128 bits for GCM
  static const int _cypherLength = 32;

  /// Creates a new instance of [EdgeEncryptionService].
  EdgeEncryptionService({
    required VaultStore vaultStore,
  }) : _vaultStore = vaultStore;

  final VaultStore _vaultStore;
  late final Random _secureRandom = Random.secure();
  late final _cryptographyAlgorythm = AesGcm.with256bits();

  Future<Uint8List> _makeContentKeyIfNeeded() async {
    final existingKey = await _vaultStore.getContentKey();
    if (existingKey != null) {
      return existingKey;
    }

    final randomKey = _secureRandom.nextBytes(_cypherLength);
    await _vaultStore.setContentKey(randomKey);
    return randomKey;
  }

  @override
  Future<Uint8List> encryptData(Uint8List data) async {
    final cipher = await _makeContentKeyIfNeeded();

    final secretKey = SecretKey(cipher);
    final nonce = _secureRandom.nextBytes(_ivLength);
    final encryptedData = await _cryptographyAlgorythm.encrypt(
      data,
      secretKey: secretKey,
      nonce: nonce,
    );

    final result =
        Uint8List(_ivLength + encryptedData.cipherText.length + _tagLength);
    result.setRange(0, _ivLength, nonce);
    result.setRange(_ivLength, _ivLength + encryptedData.cipherText.length,
        encryptedData.cipherText);
    result.setRange(_ivLength + encryptedData.cipherText.length, result.length,
        encryptedData.mac.bytes);

    return result;
  }

  @override
  Future<Uint8List> decryptData(Uint8List encryptedData) async {
    final cipher = await _vaultStore.getContentKey();
    if (cipher == null) {
      throw TdkException(
          message: 'Missing egde cipher for encrytping content',
          code: TdkExceptionType.missingEdgeCipher.code);
    }

    if (encryptedData.length < _ivLength + _tagLength) {
      throw TdkException(
        message: 'Failed to decrypt data',
        code: TdkExceptionType.decryptionFailed.code,
        originalMessage: 'Invalid data length',
      );
    }

    try {
      final secretBox = _makeSecretBoxFromData(encryptedData);
      final secretKey = SecretKey(cipher);
      final decryptedData =
          await _cryptographyAlgorythm.decrypt(secretBox, secretKey: secretKey);
      return Uint8List.fromList(decryptedData);
    } catch (e) {
      throw TdkException(
        message: 'Failed to decrypt data',
        code: TdkExceptionType.decryptionFailed.code,
        originalMessage: e.toString(),
      );
    }
  }

  /// Encrypts a file or folder name
  @override
  Future<String> encryptString(String name) async {
    final nameBytes = Uint8List.fromList(name.codeUnits);
    final encryptedBytes = await encryptData(nameBytes);
    return base64Encode(encryptedBytes);
  }

  /// Decrypts a file or folder name
  @override
  Future<String> decryptString(String name) async {
    try {
      final encryptedBytes = base64Decode(name);
      final decryptedBytes = await decryptData(encryptedBytes);
      return String.fromCharCodes(decryptedBytes);
    } catch (e) {
      return name;
    }
  }

  SecretBox _makeSecretBoxFromData(Uint8List encryptedData) {
    final ciphertext =
        encryptedData.sublist(_ivLength, encryptedData.length - _tagLength);
    final nonce = encryptedData.sublist(0, _ivLength);
    final tag = encryptedData.sublist(encryptedData.length - _tagLength);
    final mac = Mac(tag);

    return SecretBox(ciphertext, nonce: nonce, mac: mac);
  }
}

extension _RandomBytes on Random {
  Uint8List nextBytes(int bytes) => Uint8List.fromList(
        List<int>.generate(bytes, (_) => nextInt(256)),
      );
}
