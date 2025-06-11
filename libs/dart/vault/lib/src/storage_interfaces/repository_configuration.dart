import 'package:ssi/ssi.dart';

import 'vault_store.dart';

/// Configuration for repository initialization.
class RepositoryConfiguration {
  /// Creates a new instance of [RepositoryConfiguration].
  ///
  /// [wallet] - The wallet to use for cryptographic operations.
  /// [keyStorage] - Optional storage for cryptographic keys.
  RepositoryConfiguration({
    required this.wallet,
    this.keyStorage,
  });

  /// Storage for cryptographic keys.
  final VaultStore? keyStorage;

  /// Wallet for cryptographic operations.
  final Wallet wallet;
}
