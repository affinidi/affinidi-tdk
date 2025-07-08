# W3cProof

## Properties

| Name                   | Type       | Description | Notes                             |
| ---------------------- | ---------- | ----------- | --------------------------------- |
| **type**               | **string** |             | [optional] [default to undefined] |
| **created**            | **string** |             | [optional] [default to undefined] |
| **verificationMethod** | **string** |             | [default to undefined]            |
| **proofPurpose**       | **string** |             | [default to undefined]            |
| **jws**                | **string** |             | [optional] [default to undefined] |
| **proofValue**         | **string** |             | [optional] [default to undefined] |
| **nonce**              | **string** |             | [optional] [default to undefined] |

## Example

```typescript
import { W3cProof } from '@affinidi-tdk/credential-verification-client'

const instance: W3cProof = {
  type,
  created,
  verificationMethod,
  proofPurpose,
  jws,
  proofValue,
  nonce,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
