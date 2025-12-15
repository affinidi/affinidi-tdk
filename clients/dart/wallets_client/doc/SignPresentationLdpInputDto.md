# affinidi_tdk_wallets_client.model.SignPresentationLdpInputDto

## Load the model package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

## Properties

| Name                     | Type                        | Description                                                                                                                                                                                | Notes      |
| ------------------------ | --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **unsignedPresentation** | [**JsonObject**](.md)       | Unsigned presentation in Dm1 format                                                                                                                                                        |
| **signatureScheme**      | **String**                  |                                                                                                                                                                                            | [optional] |
| **signatureSuite**       | **String**                  | W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1). | [optional] |
| **domain**               | **BuiltList&lt;String&gt;** | Domain(s) for which the presentation is intended                                                                                                                                           | [optional] |
| **challenge**            | **String**                  | Challenge string                                                                                                                                                                           | [optional] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
