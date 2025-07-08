# GrantAccessInput

## Properties

| Name           | Type                                         | Description                             | Notes                  |
| -------------- | -------------------------------------------- | --------------------------------------- | ---------------------- |
| **granteeDid** | **string**                                   | DID of the subject being granted access | [default to undefined] |
| **rights**     | [**Array&lt;RightsEnum&gt;**](RightsEnum.md) | List of rights to grant to the subject  | [default to undefined] |

## Example

```typescript
import { GrantAccessInput } from '@affinidi-tdk/iam-client'

const instance: GrantAccessInput = {
  granteeDid,
  rights,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
