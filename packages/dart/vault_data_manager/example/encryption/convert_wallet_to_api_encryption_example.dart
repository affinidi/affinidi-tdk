import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';

import '../../test/fixtures/encryption/encrypted_data_encryption_key.dart';
import '../../test/fixtures/encryption/encryption_key.dart';
import '../../test/fixtures/encryption/jwk.dart';

/// This example shows how to encrypt a DEK that was encrypted with
/// wallet material and convert it to be encrypted with the API public key.
Future<void> main() async {
  final vaultDataManagerEncryptionService = VaultDataManagerEncryptionService(
    cryptographyService: CryptographyService(),
    jwk: jwk,
  );

  final dekEncryptedByApiPublicKey =
      await vaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
    encryptedDekBase64: encryptedDekBase64,
    encryptionKey: encryptionKey,
  );
  print('API encrypted DEK: $dekEncryptedByApiPublicKey');
}
