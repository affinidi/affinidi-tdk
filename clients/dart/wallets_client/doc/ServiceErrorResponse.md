# affinidi_tdk_wallets_client.model.ServiceErrorResponse

## Load the model package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

## Properties

| Name        | Type                                                                                         | Description                                           | Notes      |
| ----------- | -------------------------------------------------------------------------------------------- | ----------------------------------------------------- | ---------- |
| **debugId** | **String**                                                                                   | unique id for correlating this specific error to logs |
| **name**    | **String**                                                                                   | name of the error                                     |
| **code**    | **String**                                                                                   | backwards compatible Affinidi error code              |
| **details** | [**BuiltList&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |                                                       | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
