import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

void main() async {
  final authProvider = AuthProvider(
    projectId: '',
    tokenId: '',
    privateKey: '',
    keyId: '',
    passphrase: '',
  );

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

  print(affinidiVaultClaimLink);
}
