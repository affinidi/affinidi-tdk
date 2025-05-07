import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

import '../../test/fixtures/encryption/encryption_key.dart';
import '../../test/fixtures/encryption/jwk.dart';

/// This example demonstrates how to generate encryption material,
/// which includes the raw DEK, its encrypted variants, and a hash
/// of the wallet crypto material.
Future<void> main() async {
  final vaultDataManagerEncryptionService = VaultDataManagerEncryptionService(
    kek: encryptionKey,
    cryptographyService: CryptographyService(),
    jwk: jwk,
  );

  final dataEncryptionMaterial =
      await vaultDataManagerEncryptionService.generateDataEncryptionMaterial();

  print('Raw DEK: ${dataEncryptionMaterial.dek}');
  print(
      'Encrypted by API Public Key: ${dataEncryptionMaterial.dekEncryptedByApiPublicKey}');
  print(
      'Encrypted by Wallet: ${dataEncryptionMaterial.dekEncryptedByWalletCryptoMaterial}');
  print(
      'Wallet Crypto Material Hash: ${dataEncryptionMaterial.walletCryptoMaterialHash}');
}
