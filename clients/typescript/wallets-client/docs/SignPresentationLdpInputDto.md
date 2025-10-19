# SignPresentationLdpInputDto

DTO contains params to sign presentation

## Properties

| Name                     | Type                    | Description                                      | Notes                             |
| ------------------------ | ----------------------- | ------------------------------------------------ | --------------------------------- |
| **unsignedPresentation** | **object**              | Unsigned presentation in Dm1 format              | [default to undefined]            |
| **signatureScheme**      | **string**              |                                                  | [optional] [default to undefined] |
| **domain**               | **Array&lt;string&gt;** | Domain(s) for which the presentation is intended | [optional] [default to undefined] |
| **challenge**            | **string**              | Challenge string                                 | [optional] [default to undefined] |

## Example

```typescript
import { SignPresentationLdpInputDto } from '@affinidi-tdk/wallets-client'

const instance: SignPresentationLdpInputDto = {
  unsignedPresentation,
  signatureScheme,
  domain,
  challenge,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
