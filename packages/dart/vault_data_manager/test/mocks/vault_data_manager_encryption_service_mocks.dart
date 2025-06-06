import 'package:affinidi_tdk_vault_data_manager/src/model/data_encryption_material.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks.dart';

class VaultDataManagerEncryptionServiceMocks {
  VaultDataManagerEncryptionServiceMocks(
      this.mockVaultDataManagerEncryptionService);

  final MockVaultDataManagerEncryptionService
      mockVaultDataManagerEncryptionService;

  Future<DataEncryptionMaterial> generateDataEncryptionMaterial() =>
      mockVaultDataManagerEncryptionService.generateDataEncryptionMaterial(
        encryptionKey: any(named: 'encryptionKey'),
      );

  Future<List<int>> getDekEncryptedByApiPublicKey() =>
      mockVaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
        encryptedDekBase64: any(named: 'encryptedDekBase64'),
        encryptionKey: any(named: 'encryptionKey'),
      );

  Future<List<int>> decryptDekByWalletCryptoMaterial() =>
      mockVaultDataManagerEncryptionService.decryptDek(
        encryptionKey: any(named: 'encryptionKey'),
        encryptedDek: any(named: 'encryptedDek'),
      );
}
