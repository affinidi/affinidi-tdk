import 'dart:math';
import 'dart:typed_data';

/// Interface for storing vault data
abstract class VaultStore {
  /// Stores the account index to storage.
  ///
  /// [accountIndex] - The account index to store.
  Future<void> setAccountIndex(int accountIndex);

  /// Retrieves the account index from storage.
  ///
  /// Returns the stored account index.
  Future<int> getAccountIndex();

  /// Stores the seed value, overwriting any previous seed.
  Future<void> setSeed(Uint8List seed);

  /// Retrieves the stored seed value.
  ///
  /// Returns null if no seed has been stored.
  Future<Uint8List?> getSeed();

  /// Generates a new random seed of 32 bytes.
  ///
  /// Returns a new Uint8List containing the random seed.
  Uint8List getRandomSeed() {
    final length = 32;
    final random = Random.secure();
    final bytes = List<int>.generate(length, (_) => random.nextInt(256));
    return Uint8List.fromList(bytes);
  }

  /// Removes all stored data including account index and seed
  Future<void> clear();
}
