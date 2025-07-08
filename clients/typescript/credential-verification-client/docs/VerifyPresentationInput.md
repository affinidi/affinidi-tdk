# VerifyPresentationInput

Request model of /verify-vp

## Properties

| Name                       | Type       | Description | Notes                             |
| -------------------------- | ---------- | ----------- | --------------------------------- |
| **verifiablePresentation** | **object** |             | [optional] [default to undefined] |
| **signedPresentation**     | **object** |             | [optional] [default to undefined] |
| **presentationDefinition** | **object** |             | [optional] [default to undefined] |
| **presentationSubmission** | **object** |             | [optional] [default to undefined] |
| **challenge**              | **string** |             | [optional] [default to undefined] |

## Example

```typescript
import { VerifyPresentationInput } from '@affinidi-tdk/credential-verification-client'

const instance: VerifyPresentationInput = {
  verifiablePresentation,
  signedPresentation,
  presentationDefinition,
  presentationSubmission,
  challenge,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
