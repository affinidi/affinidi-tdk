# affinidi_tdk_wallets_client.model.SignCredentialsDm2SdJwtInputDto

## Load the model package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

## Properties

| Name                   | Type                  | Description                                                         | Notes      |
| ---------------------- | --------------------- | ------------------------------------------------------------------- | ---------- |
| **unsignedCredential** | [**JsonObject**](.md) | Unsigned Credential in Dm2 format                                   |
| **revocable**          | **bool**              |                                                                     | [optional] |
| **disclosureFrame**    | [**JsonObject**](.md) |                                                                     |
| **signatureScheme**    | **String**            |                                                                     | [optional] |
| **keyId**              | **String**            | wallet key ID to use for signing (defaults to wallet's default key) | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
