import 'dart:typed_data';

/// Interface for edge encryption service that implements the two-layer encryption system
///
/// Two-Layer Encryption System:
/// Layer 1: Passphrase → PBKDF2 → Derived Key → Encrypts Master Key
/// Layer 2: Master Key → Encrypts/Decrypts Data
///
/// The encrypted master key is stored in Flutter Secure Storage
abstract interface class EdgeEncryptionServiceInterface {
  /// Encrypts data using the loaded master key.
  Future<Uint8List> encryptData(Uint8List data);

  /// Decrypts data using the loaded master key.
  Future<Uint8List> decryptData(Uint8List encryptedData);

  /// Encrypts any string using the loaded master key.
  Future<String> encryptString(String name);

  /// Decrypts any string using the loaded master key.
  Future<String> decryptString(String name);
}
