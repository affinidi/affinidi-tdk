# Field

## Properties

| Name          | Type                    | Description | Notes                             |
| ------------- | ----------------------- | ----------- | --------------------------------- |
| **id**        | **string**              |             | [optional] [default to undefined] |
| **path**      | **Array&lt;string&gt;** |             | [optional] [default to undefined] |
| **purpose**   | **string**              |             | [optional] [default to undefined] |
| **filter**    | [**Filter**](Filter.md) |             | [optional] [default to undefined] |
| **predicate** | **string**              |             | [optional] [default to undefined] |

## Example

```typescript
import { Field } from '@affinidi-tdk/credential-verification-client'

const instance: Field = {
  id,
  path,
  purpose,
  filter,
  predicate,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
