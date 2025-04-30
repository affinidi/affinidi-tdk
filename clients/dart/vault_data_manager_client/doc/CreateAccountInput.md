# affinidi_tdk_vault_data_manager_client.model.CreateAccountInput

## Load the model package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

## Properties

| Name             | Type                  | Description                                           | Notes      |
| ---------------- | --------------------- | ----------------------------------------------------- | ---------- |
| **accountIndex** | **int**               | number that is used for profile DID derivation        |
| **accountDid**   | **String**            | DID that is associated with the account number        |
| **didProof**     | **String**            | JWT that proves ownership of profile DID by requester |
| **alias**        | **String**            | Alias of account                                      | [optional] |
| **metadata**     | [**JsonObject**](.md) | Metadata of account                                   | [optional] |
| **description**  | **String**            | Description of account                                | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
