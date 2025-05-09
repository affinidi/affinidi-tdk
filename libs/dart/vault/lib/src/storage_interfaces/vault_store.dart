import 'dart:math';
import 'dart:typed_data';

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

  /// Generates a random seed that could be used to initialize a new Vault instance.
  Uint8List getRandomSeed() {
    final length = 16;
    final random = Random.secure();
    final bytes = List<int>.generate(length, (_) => random.nextInt(256));
    return Uint8List.fromList(bytes);
  }
}
