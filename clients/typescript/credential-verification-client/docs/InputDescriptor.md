# InputDescriptor

## Properties

| Name            | Type                              | Description | Notes                             |
| --------------- | --------------------------------- | ----------- | --------------------------------- |
| **id**          | **string**                        |             | [default to undefined]            |
| **constraints** | [**Constraints**](Constraints.md) |             | [default to undefined]            |
| **name**        | **string**                        |             | [optional] [default to undefined] |
| **purpose**     | **string**                        |             | [optional] [default to undefined] |
| **format**      | [**Format**](Format.md)           |             | [optional] [default to undefined] |
| **group**       | **Array&lt;string&gt;**           |             | [optional] [default to undefined] |

## Example

```typescript
import { InputDescriptor } from '@affinidi-tdk/credential-verification-client'

const instance: InputDescriptor = {
  id,
  constraints,
  name,
  purpose,
  format,
  group,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
