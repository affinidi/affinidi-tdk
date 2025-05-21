import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

import '../../test/fixtures/encryption/encryption_key.dart';
import '../../test/fixtures/encryption/jwk.dart';

/// This example demonstrates how to generate the SHA-256 hash of the
/// wallet-derived encryption key, useful for verification or matching.
Future<void> main() async {
  final vaultDataManagerEncryptionService = VaultDataManagerEncryptionService(
    cryptographyService: CryptographyService(),
    jwk: jwk,
  );

  final dekDecryptedByApiPrivateKey = await vaultDataManagerEncryptionService
      .getWalletCryptoMaterialKeyHash(encryptionKey: encryptionKey);
  print('Wallet Crypto Material Key Hash: $dekDecryptedByApiPrivateKey');
}
