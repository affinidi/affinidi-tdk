# affinidi_tdk_credential_issuance_client.model.FlowDataStatusListsDetailsInner

## Load the model package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

## Properties

| Name                       | Type       | Description                                                         | Notes      |
| -------------------------- | ---------- | ------------------------------------------------------------------- | ---------- |
| **statusListPurpose**      | **String** | Purpose of status list to which credential is added                 |
| **statusListId**           | **String** | id of status list                                                   |
| **statusListIndex**        | **String** | as usual it is a number, but all standards use a string             |
| **standard**               | **String** |                                                                     |
| **isActive**               | **bool**   | indicates status is true or not. Default false.                     |
| **statusActivationReason** | **String** | text reasoning why the status is true (if true). Optional.          | [optional] |
| **statusActivatedAt**      | **String** | ISO 8601 string of the modification date/time the status. Optional. | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
