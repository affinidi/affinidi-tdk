# NestedDescriptor

## Properties

| Name            | Type                                        | Description | Notes                             |
| --------------- | ------------------------------------------- | ----------- | --------------------------------- |
| **id**          | **string**                                  |             | [optional] [default to undefined] |
| **path**        | **string**                                  |             | [default to undefined]            |
| **path_nested** | [**NestedDescriptor**](NestedDescriptor.md) |             | [optional] [default to undefined] |
| **format**      | **string**                                  |             | [default to undefined]            |

## Example

```typescript
import { NestedDescriptor } from '@affinidi-tdk/credential-verification-client'

const instance: NestedDescriptor = {
  id,
  path,
  path_nested,
  format,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
