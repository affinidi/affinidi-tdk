# affinidi_tdk_credential_issuance_client.model.StartIssuanceInputDataInner

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name                  | Type                                                                                                                | Description                                                                                                                                                  | Notes                            |
| --------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------- |
| **credentialTypeId**  | **String**                                                                                                          | It is a String that identifies a Credential that is being requested to be issued.                                                                            |
| **credentialData**    | [**Map<String, Object>**](Object.md)                                                                                | Object of data to be included in the issued credential ,should match the credential type                                                                     | [default to const {}]            |
| **statusListDetails** | [**List<StartIssuanceInputDataInnerStatusListDetailsInner>**](StartIssuanceInputDataInnerStatusListDetailsInner.md) | Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists. | [optional] [default to const []] |
| **metaData**          | [**StartIssuanceInputDataInnerMetaData**](StartIssuanceInputDataInnerMetaData.md)                                   |                                                                                                                                                              | [optional]                       |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
