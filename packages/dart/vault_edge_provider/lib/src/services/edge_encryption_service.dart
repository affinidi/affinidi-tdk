import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:cryptography/cryptography.dart';

import '../exceptions/tdk_exception_type.dart';
import 'edge_encryption_service_interface.dart';

/// Implementation of the edge encryption service that provides two-layer encryption.
class EdgeEncryptionService implements EdgeEncryptionServiceInterface {
  static const int _pbkdf2Iterations = 600000; // 600k iterations for security
  static const int _ivLength = 12; // 96 bits for GCM
  static const int _tagLength = 16; // 128 bits for GCM

  final VaultStore _vaultStore;
  final Random _secureRandom = Random.secure();
  Uint8List? _masterKey;
  late final _cryptographyAlgorythm = AesGcm.with256bits();

  /// Creates a new instance of [EdgeEncryptionService].
  EdgeEncryptionService({
    required VaultStore vaultStore,
  }) : _vaultStore = vaultStore;

  /// Initializes the encryption system with a new passphrase.
  ///
  /// This method generates a new master key, encrypts it with the passphrase,
  /// and stores the encrypted master key in secure storage.
  @override
  Future<bool> initializeWithPassphrase(String passphrase) async {
    try {
      final contentKey = await _generateContentKey(passphrase);

      await _vaultStore.writeContentKey(contentKey);

      _masterKey = await _decryptMasterKey(contentKey, passphrase);

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<ContentKey> _generateContentKey(String passphrase) async {
    final masterKey = _generateMasterKey();
    final nonce = _generateNonce();
    final encryptedMasterKey =
        await _encryptMasterKey(masterKey, passphrase, nonce);

    return ContentKey(key: encryptedMasterKey, nonce: nonce);
  }

  /// Loads the master key using the provided passphrase.
  ///
  /// This method retrieves the encrypted master key from secure storage,
  /// decrypts it using the passphrase, and loads it into memory.
  @override
  Future<bool> loadMasterKeyWithPassphrase(String passphrase) async {
    try {
      final contentKey = await _vaultStore.readContentKey();

      if (contentKey == null) {
        return false;
      }

      final masterKey = await _decryptMasterKey(contentKey, passphrase);

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
      final contenKey = ContentKey(key: encryptedMasterKey, nonce: newNonce);

      await _vaultStore.writeContentKey(contenKey);

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Uint8List> encryptData(Uint8List data) async {
    if (!_isMasterKeyLoaded) {
      throw TdkException(
        message: 'Master key not loaded',
        code: TdkExceptionType.encryptionFailed.code,
      );
    }

    return _encryptData(data, _masterKey!);
  }

  @override
  Future<Uint8List> decryptData(Uint8List encryptedData) async {
    if (!_isMasterKeyLoaded) {
      throw TdkException(
        message: 'Master key not loaded',
        code: TdkExceptionType.encryptionFailed.code,
      );
    }

    final decryptedData = await _decryptData(encryptedData, _masterKey!);

    if (decryptedData == null) {
      throw TdkException(
        message: 'Failed to decrypt data',
        code: TdkExceptionType.encryptionFailed.code,
      );
    }

    return decryptedData;
  }

  @override
  void clearMasterKey() {
    _masterKey = Uint8List.fromList([]);
    _masterKey = null;
  }

  @override
  Future<bool> isInitialized() async {
    final contentKey = await _vaultStore.readContentKey();
    return contentKey != null;
  }

  bool get _isMasterKeyLoaded => _masterKey != null;

  Uint8List _generateMasterKey() {
    const masterKeyLength = 32;
    return _generateRandomBytes(masterKeyLength);
  }

  Uint8List _generateNonce() {
    const nonceLength = 32;
    return _generateRandomBytes(nonceLength);
  }

  Uint8List _generateRandomBytes(int length) {
    return Uint8List.fromList(
      List<int>.generate(length, (_) => _secureRandom.nextInt(256)),
    );
  }

  Future<Uint8List> _encryptMasterKey(
    Uint8List masterKey,
    String passphrase,
    Uint8List nonce,
  ) async {
    final derivedKey = await _deriveKeyFromPassphrase(passphrase, nonce);

    return _encryptData(masterKey, derivedKey);
  }

  Future<Uint8List?> _decryptMasterKey(
    ContentKey contentKey,
    String passphrase,
  ) async {
    final derivedKey =
        await _deriveKeyFromPassphrase(passphrase, contentKey.nonce);

    return _decryptData(contentKey.key, derivedKey);
  }

  Future<Uint8List> _deriveKeyFromPassphrase(
    String passphrase,
    Uint8List nonce,
  ) async {
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

  Future<Uint8List> _encryptData(
    Uint8List data,
    Uint8List key,
  ) async {
    final nonce = _generateRandomBytes(_ivLength);

    final secretKey = SecretKey(key);

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

  Future<Uint8List?> _decryptData(
    Uint8List encryptedData,
    Uint8List key,
  ) async {
    try {
      if (encryptedData.length < _ivLength + _tagLength) {
        return null;
      }

      final nonce = encryptedData.sublist(0, _ivLength);
      final ciphertext =
          encryptedData.sublist(_ivLength, encryptedData.length - _tagLength);
      final tag = encryptedData.sublist(encryptedData.length - _tagLength);

      final mac = Mac(tag);

      final secretKey = SecretKey(key);

      final secretBox = SecretBox(ciphertext, nonce: nonce, mac: mac);

      final decryptedData =
          await _cryptographyAlgorythm.decrypt(secretBox, secretKey: secretKey);
      return Uint8List.fromList(decryptedData);
    } catch (e) {
      return null;
    }
  }
}
