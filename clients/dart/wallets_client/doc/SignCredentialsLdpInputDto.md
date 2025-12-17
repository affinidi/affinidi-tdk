# affinidi_tdk_wallets_client.model.SignCredentialsLdpInputDto

## Load the model package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

## Properties

| Name                   | Type                  | Description                                                                                                                                                                                | Notes      |
| ---------------------- | --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **unsignedCredential** | [**JsonObject**](.md) | Unsigned Credential in Dm2 format                                                                                                                                                          |
| **revocable**          | **bool**              |                                                                                                                                                                                            | [optional] |
| **signatureScheme**    | **String**            |                                                                                                                                                                                            | [optional] |
| **signatureSuite**     | **String**            | W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1). | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
