# SignPresentationLdpInputDto

DTO contains params to sign presentation

## Properties

| Name                     | Type                    | Description                                                                                                                                                                                | Notes                             |
| ------------------------ | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------- |
| **unsignedPresentation** | **object**              | Unsigned presentation in Dm1 format                                                                                                                                                        | [default to undefined]            |
| **signatureScheme**      | **string**              |                                                                                                                                                                                            | [optional] [default to undefined] |
| **signatureSuite**       | **string**              | W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1). | [optional] [default to undefined] |
| **domain**               | **Array&lt;string&gt;** | Domain(s) for which the presentation is intended                                                                                                                                           | [optional] [default to undefined] |
| **challenge**            | **string**              | Challenge string                                                                                                                                                                           | [optional] [default to undefined] |

## Example

```typescript
import { SignPresentationLdpInputDto } from '@affinidi-tdk/wallets-client'

const instance: SignPresentationLdpInputDto = {
  unsignedPresentation,
  signatureScheme,
  signatureSuite,
  domain,
  challenge,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
