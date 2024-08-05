# affinidi_tdk_credential_issuance_client.model.StartIssuanceInput

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name           | Type                                                                    | Description                                                                                                                                                                                                                                                                                                                  | Notes                 |
| -------------- | ----------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------- |
| **claimMode**  | **String**                                                              | In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated). | [optional]            |
| **holderDid**  | **String**                                                              | Holder DID                                                                                                                                                                                                                                                                                                                   | [optional]            |
| **issuanceId** | **String**                                                              | Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.                                                                                                                                                                                  | [optional]            |
| **data**       | [**List<StartIssuanceInputDataInner>**](StartIssuanceInputDataInner.md) |                                                                                                                                                                                                                                                                                                                              | [default to const []] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
