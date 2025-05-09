/// A model class representing encryption materials used in the vault data management system.
///
/// This class encapsulates all necessary components for managing encrypted data:
/// - The Data Encryption Key (DEK)
/// - The DEK encrypted with an API public key
/// - The DEK encrypted with wallet crypto material
/// - A hash of the wallet crypto material for verification
class DataEncryptionMaterial {
  /// The unencrypted Data Encryption Key (DEK).
  ///
  /// This is the primary key used for data encryption represented as a list of bytes.
  final List<int> dek;

  /// The DEK encrypted using the API's public key.
  ///
  /// This is the DEK encrypted for secure communication with the API server.
  final List<int> dekEncryptedByApiPublicKey;

  /// The DEK encrypted using the wallet's cryptographic material.
  ///
  /// This is the DEK encrypted for local storage and wallet-based operations.
  final List<int> dekEncryptedByWalletCryptoMaterial;

  /// A SHA-256 hash of the wallet's cryptographic material.
  ///
  /// Used for verification
  final String walletCryptoMaterialHash;

  /// Creates a new instance of [DataEncryptionMaterial].
  ///
  /// - [dek]: The unencrypted Data Encryption Key
  /// - [dekEncryptedByApiPublicKey]: DEK encrypted for API communication
  /// - [dekEncryptedByWalletCryptoMaterial]: DEK encrypted for wallet storage
  /// - [walletCryptoMaterialHash]: Hash for verification
  DataEncryptionMaterial({
    required this.dek,
    required this.dekEncryptedByApiPublicKey,
    required this.dekEncryptedByWalletCryptoMaterial,
    required this.walletCryptoMaterialHash,
  });
}
