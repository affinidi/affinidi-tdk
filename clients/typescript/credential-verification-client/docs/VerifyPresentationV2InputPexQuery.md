# VerifyPresentationV2InputPexQuery

Presentation Exchange Query containing presentation definition and submission

## Properties

| Name                       | Type       | Description                                          | Notes                             |
| -------------------------- | ---------- | ---------------------------------------------------- | --------------------------------- |
| **presentationDefinition** | **object** | Presentation definition for the verification request | [optional] [default to undefined] |
| **presentationSubmission** | **object** | Presentation submission for the verification request | [optional] [default to undefined] |

## Example

```typescript
import { VerifyPresentationV2InputPexQuery } from '@affinidi-tdk/credential-verification-client'

const instance: VerifyPresentationV2InputPexQuery = {
  presentationDefinition,
  presentationSubmission,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
