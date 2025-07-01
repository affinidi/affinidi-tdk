import 'dart:typed_data';

/// Interface for edge encryption service that implements the two-layer encryption system
///
/// Two-Layer Encryption System:
/// Layer 1: Passphrase → PBKDF2 → Derived Key → Encrypts Master Key
/// Layer 2: Master Key → Encrypts/Decrypts Data
///
/// The encrypted master key is stored in Flutter Secure Storage
abstract interface class EdgeEncryptionServiceInterface {
  Future<bool> initializeWithPassphrase(String passphrase);

  Future<bool> loadMasterKeyWithPassphrase(String passphrase);

  Future<bool> changePassphrase(String oldPassphrase, String newPassphrase);

  Future<Uint8List?> encryptData(Uint8List data);

  Future<Uint8List?> decryptData(Uint8List encryptedData);

  /// Clears the master key from memory
  void clearMasterKey();

  /// Checks if encryption is initialized
  Future<bool> isInitialized();

  /// Checks if master key is loaded in memory
  bool get isMasterKeyLoaded;
}
