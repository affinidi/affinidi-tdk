import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks.dart';

class VaultDataManagerEncryptionServiceMocks {
  VaultDataManagerEncryptionServiceMocks(
      this.mockVaultDataManagerEncryptionService);

  final MockVaultDataManagerEncryptionService
      mockVaultDataManagerEncryptionService;

  Future<DataEncryptionMaterial> generateDataEncryptionMaterial() =>
      mockVaultDataManagerEncryptionService.generateDataEncryptionMaterial();

  Future<List<int>> getDekEncryptedByApiPublicKey() =>
      mockVaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
        encryptedDekBase64: any(named: 'encryptedDekBase64'),
      );

  Future<List<int>> decryptDekByWalletCryptoMaterial() =>
      mockVaultDataManagerEncryptionService.decryptDek(
        encryptedDek: any(named: 'encryptedDek'),
      );
}
