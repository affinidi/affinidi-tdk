# affinidi_tdk_wallets_client.model.CreateWalletV2Input

## Load the model package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

## Properties

| Name            | Type       | Description                                           | Notes                               |
| --------------- | ---------- | ----------------------------------------------------- | ----------------------------------- |
| **name**        | **String** | The name of the wallet                                | [optional]                          |
| **description** | **String** | The description of the wallet                         | [optional]                          |
| **didMethod**   | **String** | Define how DID of your wallet is created and resolved | [optional] [default to 'key']       |
| **didWebUrl**   | **String** | URL of the DID. Required if the did method is web     | [optional]                          |
| **algorithm**   | **String** | algorithm to generate key for the wallet              | [optional] [default to 'secp256k1'] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
