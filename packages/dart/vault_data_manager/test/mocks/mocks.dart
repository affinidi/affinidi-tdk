import 'package:affinidi_tdk_vault_data_manager/src/services/iam_api_service_interface.dart';
import 'package:affinidi_tdk_vault_data_manager/src/services/vault_data_manager_service_interface.dart';
import 'package:affinidi_tdk_vault_data_manager/src/vault_data_manager_api_service_interface.dart';
import 'package:affinidi_tdk_vault_data_manager/src/vault_data_manager_encryption_service_interface.dart';
import 'package:mocktail/mocktail.dart';

class MockVaultDataManagerApiService extends Mock
    implements VaultDataManagerApiServiceInterface {}

class MockVaultDataManagerEncryptionService extends Mock
    implements VaultDataManagerEncryptionServiceInterface {}

class MockVaultDataManagerService extends Mock
    implements VaultDataManagerServiceInterface {}

class MockIamApiService extends Mock implements IamApiServiceInterface {}
