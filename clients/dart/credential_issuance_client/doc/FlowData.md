# affinidi_tdk_credential_issuance_client.model.FlowData

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name                                       | Type                                                                            | Description                                                                                                                                                  | Notes                            |
| ------------------------------------------ | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------- |
| **createdAt**                              | **String**                                                                      | [GEN] ISO 8601 string of the creation date/time the entity                                                                                                   |
| **modifiedAt**                             | **String**                                                                      | [GEN] ISO 8601 string of the modification date/time the entity                                                                                               |
| **id**                                     | **String**                                                                      |                                                                                                                                                              |
| **projectId**                              | **String**                                                                      |                                                                                                                                                              | [optional]                       |
| **flowId**                                 | **String**                                                                      |                                                                                                                                                              |
| **credentialTypeId**                       | **String**                                                                      |                                                                                                                                                              |
| **jsonLdContextUrl**                       | **String**                                                                      |                                                                                                                                                              |
| **jsonSchemaUrl**                          | **String**                                                                      |                                                                                                                                                              |
| **configurationId**                        | **String**                                                                      | Id of configuration, used to issue VC.                                                                                                                       | [optional]                       |
| **issuedAt**                               | **String**                                                                      | when credential was issued to the holder (holder invoked generateCredentials endpoint)                                                                       | [optional]                       |
| **walletId**                               | **String**                                                                      | Id of wallet, used to issue VC.                                                                                                                              | [optional]                       |
| **projectIdConfigurationId**               | **String**                                                                      | Id of configuration with which VC was issued. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{configurationId}\" | [optional]                       |
| **projectIdConfigurationIdWalletId**       | **String**                                                                      | Id of wallet which issued VC. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{walletId}\"                        | [optional]                       |
| **projectIdConfigurationIdCredentialType** | **String**                                                                      | VC.type value. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{credentialType}\"                                 | [optional]                       |
| **statusListsDetails**                     | [**List<FlowDataStatusListsDetailsInner>**](FlowDataStatusListsDetailsInner.md) |                                                                                                                                                              | [optional] [default to const []] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
