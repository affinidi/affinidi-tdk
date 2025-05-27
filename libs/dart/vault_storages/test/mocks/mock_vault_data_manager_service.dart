import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/src/services/vault_data_manager_service/vault_data_manager_service_interface.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';

class MockVaultDataManagerService extends Mock
    implements VaultDataManagerServiceInterface {
  @override
  Future<void> addVerifiableCredentialToProfile({
    required VerifiableCredential verifiableCredential,
    required String profileId,
    VaultCancelToken? cancelToken,
  }) {
    return super.noSuchMethod(
      Invocation.method(#addVerifiableCredentialToProfile, [], {
        #verifiableCredential: verifiableCredential,
        #profileId: profileId,
      }),
    ) as Future<void>;
  }

  @override
  Future<void> deleteClaimedCredential({
    required String nodeId,
    VaultCancelToken? cancelToken,
  }) {
    return super.noSuchMethod(
      Invocation.method(#deleteClaimedCredential, [], {
        #nodeId: nodeId,
      }),
    ) as Future<void>;
  }

  @override
  Future<List<DigitalCredential>> getDigitalCredentials(
    String profileId, {
    VaultCancelToken? cancelToken,
  }) {
    return super.noSuchMethod(
      Invocation.method(#getDigitalCredentials, [profileId]),
    ) as Future<List<DigitalCredential>>;
  }
}
