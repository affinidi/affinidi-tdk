import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';

void main() async {
  final authProvider = AuthProvider(
    projectId: '',
    tokenId: '',
    privateKey: '',
    keyId: '',
    passphrase: '',
  );

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

  print(affinidiVaultClaimLink);
}
