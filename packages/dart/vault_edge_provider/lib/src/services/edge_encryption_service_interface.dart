import 'dart:typed_data';

/// Interface for edge encryption service that implements the two-layer encryption system
///
/// Two-Layer Encryption System:
/// Layer 1: Passphrase → PBKDF2 → Derived Key → Encrypts Master Key
/// Layer 2: Master Key → Encrypts/Decrypts Data
///
/// The encrypted master key is stored in Flutter Secure Storage
abstract interface class EdgeEncryptionServiceInterface {
  /// Initializes the encryption system with a new passphrase.
  Future<bool> initializeWithPassphrase(String passphrase);

  /// Loads the master key using the provided passphrase.
  Future<bool> loadMasterKeyWithPassphrase(String passphrase);

  /// Changes the passphrase used to encrypt the master key..
  Future<bool> changePassphrase(String oldPassphrase, String newPassphrase);

  /// Encrypts data using the loaded master key.
  Future<Uint8List?> encryptData(Uint8List data);

  /// Decrypts data using the loaded master key.
  Future<Uint8List?> decryptData(Uint8List encryptedData);

  /// Clears the master key from memory
  void clearMasterKey();

  /// Checks if encryption is initialized
  Future<bool> isInitialized();

  /// Checks if master key is loaded in memory
  bool get isMasterKeyLoaded;
}
