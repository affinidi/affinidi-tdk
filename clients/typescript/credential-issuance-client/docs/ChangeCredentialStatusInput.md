# ChangeCredentialStatusInput

## Properties

| Name                 | Type       | Description           | Notes                             |
| -------------------- | ---------- | --------------------- | --------------------------------- |
| **changeReason**     | **string** | reason for revocation | [optional] [default to undefined] |
| **issuanceRecordId** | **string** |                       | [optional] [default to undefined] |

## Example

```typescript
import { ChangeCredentialStatusInput } from '@affinidi-tdk/credential-issuance-client'

const instance: ChangeCredentialStatusInput = {
  changeReason,
  issuanceRecordId,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
