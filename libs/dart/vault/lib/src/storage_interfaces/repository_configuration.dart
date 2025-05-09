import 'package:ssi/ssi.dart';

import 'vault_store.dart';

/// Configuration for repository initialization.
class RepositoryConfiguration {
  /// Creates a new instance of [RepositoryConfiguration].
  ///
  /// [wallet] - The deterministic wallet to use for cryptographic operations.
  /// [keyStorage] - Optional storage for cryptographic keys.
  RepositoryConfiguration({
    required this.wallet,
    required this.keyStorage,
  });

  /// Storage for cryptographic keys.
  final VaultStore? keyStorage;

  /// Deterministic wallet for cryptographic operations.
  final DeterministicWallet wallet;
}
