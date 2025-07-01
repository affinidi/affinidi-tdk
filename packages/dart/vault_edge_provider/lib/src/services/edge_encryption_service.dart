import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'edge_encryption_service_interface.dart';

/// Implementation of the edge encryption service that provides two-layer encryption.
class EdgeEncryptionService implements EdgeEncryptionServiceInterface {
  static const int _pbkdf2Iterations = 600000; // 600k iterations for security
  static const int _masterKeyLength = 32; // 256 bits
  static const int _nonceLength = 32; // 256 bits
  static const int _ivLength = 12; // 96 bits for GCM
  static const int _tagLength = 16; // 128 bits for GCM

  static const String _encryptedMasterKeyKey = 'encrypted_master_key';
  static const String _nonceKey = 'encryption_nonce';

  final FlutterSecureStorage _secureStorage;
  final Random _secureRandom = Random.secure();
  Uint8List? _masterKey;

  /// Creates a new instance of [EdgeEncryptionService].
  EdgeEncryptionService({
    FlutterSecureStorage? secureStorage,
  }) : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  /// Initializes the encryption system with a new passphrase.
  ///
  /// This method generates a new master key, encrypts it with the passphrase,
  /// and stores the encrypted master key in secure storage.
  @override
  Future<bool> initializeWithPassphrase(String passphrase) async {
    try {
      final masterKey = _generateMasterKey();

      final nonce = _generateNonce();

      final encryptedMasterKey =
          await _encryptMasterKey(masterKey, passphrase, nonce);

      await _secureStorage.write(
        key: _encryptedMasterKeyKey,
        value: base64Encode(encryptedMasterKey),
      );
      await _secureStorage.write(
        key: _nonceKey,
        value: base64Encode(nonce),
      );

      _masterKey = masterKey;

      return true;
    } catch (e) {
      return false;
    }
  }

  /// Loads the master key using the provided passphrase.
  ///
  /// This method retrieves the encrypted master key from secure storage,
  /// decrypts it using the passphrase, and loads it into memory.
  @override
  Future<bool> loadMasterKeyWithPassphrase(String passphrase) async {
    try {
      final encryptedMasterKeyString =
          await _secureStorage.read(key: _encryptedMasterKeyKey);
      final nonceString = await _secureStorage.read(key: _nonceKey);

      if (encryptedMasterKeyString == null || nonceString == null) {
        return false;
      }

      final encryptedMasterKey = base64Decode(encryptedMasterKeyString);
      final nonce = base64Decode(nonceString);

      final masterKey =
          await _decryptMasterKey(encryptedMasterKey, passphrase, nonce);

      if (masterKey == null) {
        return false;
      }

      _masterKey = masterKey;

      return true;
    } catch (e) {
      return false;
    }
  }

  @override

  /// Changes the passphrase used to encrypt the master key.
  ///
  /// This method decrypts the master key with the old passphrase,
  /// re-encrypts it with the new passphrase, and updates secure storage.
  Future<bool> changePassphrase(
      String oldPassphrase, String newPassphrase) async {
    try {
      final loaded = await loadMasterKeyWithPassphrase(oldPassphrase);
      if (!loaded) {
        return false;
      }

      final newNonce = _generateNonce();

      final encryptedMasterKey =
          await _encryptMasterKey(_masterKey!, newPassphrase, newNonce);

      await _secureStorage.write(
        key: _encryptedMasterKeyKey,
        value: base64Encode(encryptedMasterKey),
      );
      await _secureStorage.write(
        key: _nonceKey,
        value: base64Encode(newNonce),
      );

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Uint8List?> encryptData(Uint8List data) async {
    if (_masterKey == null) {
      return null;
    }

    return _encryptData(data, _masterKey!);
  }

  @override
  Future<Uint8List?> decryptData(Uint8List encryptedData) async {
    if (_masterKey == null) {
      return null;
    }

    return _decryptData(encryptedData, _masterKey!);
  }

  @override
  void clearMasterKey() {
    _masterKey = null;
  }

  @override
  Future<bool> isInitialized() async {
    final encryptedMasterKey =
        await _secureStorage.read(key: _encryptedMasterKeyKey);
    return encryptedMasterKey != null;
  }

  @override
  bool get isMasterKeyLoaded => _masterKey != null;

  Uint8List _generateMasterKey() {
    final masterKey = Uint8List(_masterKeyLength);
    for (var i = 0; i < _masterKeyLength; i++) {
      masterKey[i] = _secureRandom.nextInt(256);
    }
    return masterKey;
  }

  Uint8List _generateNonce() {
    final nonce = Uint8List(_nonceLength);
    for (var i = 0; i < _nonceLength; i++) {
      nonce[i] = _secureRandom.nextInt(256);
    }
    return nonce;
  }

  Future<Uint8List> _encryptMasterKey(
      Uint8List masterKey, String passphrase, Uint8List nonce) async {
    final derivedKey = await _deriveKeyFromPassphrase(passphrase, nonce);

    return _encryptData(masterKey, derivedKey);
  }

  Future<Uint8List?> _decryptMasterKey(
      Uint8List encryptedMasterKey, String passphrase, Uint8List nonce) async {
    final derivedKey = await _deriveKeyFromPassphrase(passphrase, nonce);

    return _decryptData(encryptedMasterKey, derivedKey);
  }

  Future<Uint8List> _deriveKeyFromPassphrase(
      String passphrase, Uint8List nonce) async {
    final pbkdf2 = Pbkdf2(
      macAlgorithm: Hmac(Sha256()),
      iterations: _pbkdf2Iterations,
      bits: 256,
    );

    final secretKey = await pbkdf2.deriveKey(
      secretKey: SecretKey(utf8.encode(passphrase)),
      nonce: nonce,
    );

    return Uint8List.fromList(await secretKey.extractBytes());
  }

  Future<Uint8List> _encryptData(Uint8List data, Uint8List key) async {
    final iv = Uint8List(_ivLength);
    for (var i = 0; i < _ivLength; i++) {
      iv[i] = _secureRandom.nextInt(256);
    }

    final cipher = AesGcm.with256bits();
    final secretKey = SecretKey(key);

    final encryptedData = await cipher.encrypt(
      data,
      secretKey: secretKey,
      nonce: iv,
    );

    final result =
        Uint8List(_ivLength + encryptedData.cipherText.length + _tagLength);
    result.setRange(0, _ivLength, iv);
    result.setRange(_ivLength, _ivLength + encryptedData.cipherText.length,
        encryptedData.cipherText);
    result.setRange(_ivLength + encryptedData.cipherText.length, result.length,
        encryptedData.mac.bytes);

    return result;
  }

  Future<Uint8List?> _decryptData(
      Uint8List encryptedData, Uint8List key) async {
    try {
      if (encryptedData.length < _ivLength + _tagLength) {
        return null;
      }

      final iv = encryptedData.sublist(0, _ivLength);
      final ciphertext =
          encryptedData.sublist(_ivLength, encryptedData.length - _tagLength);
      final tag = encryptedData.sublist(encryptedData.length - _tagLength);

      final mac = Mac(tag);

      final cipher = AesGcm.with256bits();
      final secretKey = SecretKey(key);

      final secretBox = SecretBox(ciphertext, nonce: iv, mac: mac);

      final decryptedData =
          await cipher.decrypt(secretBox, secretKey: secretKey);
      return Uint8List.fromList(decryptedData);
    } catch (e) {
      return null;
    }
  }
}
