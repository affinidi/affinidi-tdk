import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/src/services/vault_data_manager_service_interface.dart';
import 'package:mocktail/mocktail.dart';

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
        #cancelToken: cancelToken,
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
        #cancelToken: cancelToken,
      }),
    ) as Future<void>;
  }

  @override
  Future<PaginatedList<DigitalCredential>> getDigitalCredentials(
    String profileId, {
    VaultCancelToken? cancelToken,
    int? limit,
    String? exclusiveStartItemId,
  }) {
    return super.noSuchMethod(
      Invocation.method(#getDigitalCredentials, [
        profileId
      ], {
        #cancelToken: cancelToken,
        #limit: limit,
        #exclusiveStartItemId: exclusiveStartItemId,
      }),
    ) as Future<PaginatedList<DigitalCredential>>;
  }
}
