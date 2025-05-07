import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:affinidi_tdk_vault_storages/src/services/vault_data_manager_service/vault_data_manager_service_interface.dart';
import 'package:mocktail/mocktail.dart';

class MockVaultDataManagerApiService extends Mock
    implements VaultDataManagerApiServiceInterface {}

class MockVaultDataManagerEncryptionService extends Mock
    implements VaultDataManagerEncryptionServiceInterface {}

class MockVaultDataManagerService extends Mock
    implements VaultDataManagerServiceInterface {}
