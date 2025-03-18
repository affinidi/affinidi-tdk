import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';

void main() async {
  final authProvider = AuthProvider(
    projectId: '',
    tokenId: '',
    privateKey: '',
    keyId: '',
    passphrase: '',
  );

  // Claim a credential Vault link example
  final affinidiVaultClaimLink = await _claimCredentialExample(authProvider);
  print(affinidiVaultClaimLink);

  // Share a credential Vault link example
  final affinidiVaultShareLink = await _shareCredentialExample(authProvider);
  print(affinidiVaultShareLink);
}

Future<String> _claimCredentialExample(AuthProvider authProvider) async {
  final issuanceClient = AffinidiTdkCredentialIssuanceClient(
      authTokenHook: authProvider.fetchProjectScopedToken);
  final issuanceApi = issuanceClient.getIssuanceApi();

  final startIssuanceInputBuilder =
      StartIssuanceInputBuilder(); // Add credential issuance data here

  final offer = (await issuanceApi.startIssuance(
          projectId: '', startIssuanceInput: startIssuanceInputBuilder.build()))
      .data;

  // Use the vault utilities from the common package to build the claim link
  final affinidiVaultClaimLink =
      VaultUtils.buildClaimLink(offer!.credentialOfferUri);

  return affinidiVaultClaimLink;
}

Future<String> _shareCredentialExample(AuthProvider authProvider) async {
  final iotaClient = AffinidiTdkIotaClient(
      authTokenHook: authProvider.fetchProjectScopedToken);
  final iotaApi = iotaClient.getIotaApi();

  final initiateDataSharingRequestInputBuilder =
      InitiateDataSharingRequestInputBuilder()
        ..mode = InitiateDataSharingRequestInputModeEnum.redirect
        ..configurationId = ''
        ..queryId = ''
        ..nonce = ''
        ..redirectUri = ''
        ..correlationId = '';
  final iotaRequest = (await iotaApi.initiateDataSharingRequest(
          initiateDataSharingRequestInput:
              initiateDataSharingRequestInputBuilder.build()))
      .data;

  // Use the vault utilities from the common package to build the share link
  final affinidiVaultClaimLink =
      VaultUtils.buildShareLink(iotaRequest!.data!.jwt, 'my_client_id');

  return affinidiVaultClaimLink;
}
