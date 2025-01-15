# affinidi_tdk_wallets_client.model.WalletDto

## Load the model package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

## Properties

| Name            | Type                                                             | Description                       | Notes      |
| --------------- | ---------------------------------------------------------------- | --------------------------------- | ---------- |
| **id**          | **String**                                                       | id of the wallet in uuidV4 format | [optional] |
| **did**         | **String**                                                       | did of the wallet                 | [optional] |
| **name**        | **String**                                                       | The name of the wallet            | [optional] |
| **description** | **String**                                                       | The description of the wallet     | [optional] |
| **didDocument** | [**JsonObject**](.md)                                            | did document of the wallet        | [optional] |
| **ari**         | **String**                                                       | ARI of the wallet                 | [optional] |
| **keys**        | [**BuiltList&lt;WalletDtoKeysInner&gt;**](WalletDtoKeysInner.md) |                                   | [optional] |
| **createdAt**   | **String**                                                       |                                   | [optional] |
| **modifiedAt**  | **String**                                                       |                                   | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
