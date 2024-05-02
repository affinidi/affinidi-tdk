# affinidi_tdk_credential_issuance_client.model.StartIssuanceInput

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name           | Type                                                                    | Description                                                                                                                                 | Notes                 |
| -------------- | ----------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | --------------------- |
| **claimMode**  | **String**                                                              |                                                                                                                                             | [optional]            |
| **holderDid**  | **String**                                                              | Holder DID                                                                                                                                  |
| **issuanceId** | **String**                                                              | Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one. | [optional]            |
| **data**       | [**List<StartIssuanceInputDataInner>**](StartIssuanceInputDataInner.md) |                                                                                                                                             | [default to const []] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
