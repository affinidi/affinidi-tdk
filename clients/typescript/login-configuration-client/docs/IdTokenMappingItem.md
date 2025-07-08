# IdTokenMappingItem

## Properties

| Name                  | Type       | Description                                                 | Notes                             |
| --------------------- | ---------- | ----------------------------------------------------------- | --------------------------------- |
| **sourceField**       | **string** | Name(path) of the corresponding field in the vp_token       | [default to undefined]            |
| **idTokenClaim**      | **string** | Name of the corresponding field in the id_token             | [default to undefined]            |
| **inputDescriptorId** | **string** | Id of related input descriptor from presentation definition | [optional] [default to undefined] |

## Example

```typescript
import { IdTokenMappingItem } from '@affinidi-tdk/login-configuration-client'

const instance: IdTokenMappingItem = {
  sourceField,
  idTokenClaim,
  inputDescriptorId,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
