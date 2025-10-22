# affinidi_tdk_wallets_client.model.SignPresentationLdpInputDto

## Load the model package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

## Properties

| Name                     | Type                        | Description                                      | Notes      |
| ------------------------ | --------------------------- | ------------------------------------------------ | ---------- |
| **unsignedPresentation** | [**JsonObject**](.md)       | Unsigned presentation in Dm1 format              |
| **signatureScheme**      | **String**                  |                                                  | [optional] |
| **domain**               | **BuiltList&lt;String&gt;** | Domain(s) for which the presentation is intended | [optional] |
| **challenge**            | **String**                  | Challenge string                                 | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
