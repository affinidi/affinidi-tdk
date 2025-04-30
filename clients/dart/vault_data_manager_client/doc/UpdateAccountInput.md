# affinidi_tdk_vault_data_manager_client.model.UpdateAccountInput

## Load the model package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

## Properties

| Name            | Type                  | Description                                           | Notes      |
| --------------- | --------------------- | ----------------------------------------------------- | ---------- |
| **name**        | **String**            | Name of the account                                   |
| **description** | **String**            | Description of the account                            |
| **alias**       | **String**            | Alias of the account                                  | [optional] |
| **didProof**    | **String**            | JWT that proves ownership of profile DID by requester |
| **metadata**    | [**JsonObject**](.md) | Description of metadata                               | [optional] |
| **accountDid**  | **String**            | DID that is associated with the account number        |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
