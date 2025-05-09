import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

import '../vault_data_manager_service/vault_data_manager_service_interface.dart';
import 'credentials_service_interface.dart';

/// A service for managing verifiable credentials within a profile.
class CredentialsService implements CredentialsServiceInterface {
  final String _profileId;
  final VaultDataManagerServiceInterface _vaultDataManagerService;

  /// Initialize service for operating credentials withing profile
  CredentialsService({
    required VaultDataManagerServiceInterface vaultDataManagerService,
    required String profileId,
  })  : _vaultDataManagerService = vaultDataManagerService,
        _profileId = profileId;

  @override
  Future<void> delete({
    required String digitalCredentialId,
  }) async {
    await _vaultDataManagerService.deleteClaimedCredential(
        nodeId: digitalCredentialId);
  }

  @override
  Future<List<DigitalCredential>> list(
      [bool Function(DigitalCredential)? predicate]) async {
    final credentials = await _vaultDataManagerService
        .getClaimedCredentialsByProfile(_profileId);

    return predicate != null
        ? credentials.where(predicate).toList()
        : credentials;
  }

  @override
  Future<void> save({
    required VerifiableCredential verifiableCredential,
  }) async {
    await _vaultDataManagerService.addVerifiableCredentialToProfile(
      profileId: _profileId,
      verifiableCredential: verifiableCredential,
    );
  }

  @override
  Future<List<DigitalCredential>> listNodes(
      [bool Function(DigitalCredential digitalCredential)? predicate]) async {
    final digitalCredentials =
        await _vaultDataManagerService.getDigitalCredentials(_profileId);

    return predicate != null
        ? digitalCredentials.where(predicate).toList()
        : digitalCredentials;
  }
}
