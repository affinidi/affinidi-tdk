# VerifyPresentationV2Input

Request model of /v2/verify-vp

## Properties

| Name                       | Type                                                                          | Description                                                                      | Notes                             |
| -------------------------- | ----------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | --------------------------------- |
| **verifiablePresentation** | **object**                                                                    |                                                                                  | [optional] [default to undefined] |
| **pexQuery**               | [**VerifyPresentationV2InputPexQuery**](VerifyPresentationV2InputPexQuery.md) |                                                                                  | [optional] [default to undefined] |
| **challenge**              | **string**                                                                    | Optional challenge string for domain/challenge verification                      | [optional] [default to undefined] |
| **domain**                 | **Array&lt;string&gt;**                                                       | Optional domain for verification. Array of domain strings as per W3C VP standard | [optional] [default to undefined] |

## Example

```typescript
import { VerifyPresentationV2Input } from '@affinidi-tdk/credential-verification-client'

const instance: VerifyPresentationV2Input = {
  verifiablePresentation,
  pexQuery,
  challenge,
  domain,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
