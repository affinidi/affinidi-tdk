import 'package:ssi/ssi.dart';

/// Interface for storing vault data
abstract class VaultStore extends KeyStore {
  /// Writes the account index to storage.
  ///
  /// [accountIndex] - The account index to store.
  Future<void> writeAccountIndex(int accountIndex);

  /// Reads the account index from storage.
  ///
  /// Returns the stored account index.
  Future<int> readAccountIndex();
}
