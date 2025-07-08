# Filter

## Properties

| Name                       | Type                                           | Description | Notes                             |
| -------------------------- | ---------------------------------------------- | ----------- | --------------------------------- |
| **\_const**                | [**FilterConst**](FilterConst.md)              |             | [optional] [default to undefined] |
| **\_enum**                 | [**Array&lt;FilterConst&gt;**](FilterConst.md) |             | [optional] [default to undefined] |
| **exclusiveMinimum**       | [**FilterConst**](FilterConst.md)              |             | [optional] [default to undefined] |
| **exclusiveMaximum**       | [**FilterConst**](FilterConst.md)              |             | [optional] [default to undefined] |
| **format**                 | **string**                                     |             | [optional] [default to undefined] |
| **formatMaximum**          | **string**                                     |             | [optional] [default to undefined] |
| **formatMinimum**          | **string**                                     |             | [optional] [default to undefined] |
| **formatExclusiveMaximum** | **string**                                     |             | [optional] [default to undefined] |
| **formatExclusiveMinimum** | **string**                                     |             | [optional] [default to undefined] |
| **minLength**              | **number**                                     |             | [optional] [default to undefined] |
| **maxLength**              | **number**                                     |             | [optional] [default to undefined] |
| **minimum**                | [**FilterConst**](FilterConst.md)              |             | [optional] [default to undefined] |
| **maximum**                | [**FilterConst**](FilterConst.md)              |             | [optional] [default to undefined] |
| **not**                    | **object**                                     |             | [optional] [default to undefined] |
| **pattern**                | **string**                                     |             | [optional] [default to undefined] |
| **contains**               | [**Filter**](Filter.md)                        |             | [optional] [default to undefined] |
| **items**                  | [**FilterItems**](FilterItems.md)              |             | [optional] [default to undefined] |
| **type**                   | **string**                                     |             | [optional] [default to undefined] |

## Example

```typescript
import { Filter } from '@affinidi-tdk/credential-verification-client'

const instance: Filter = {
  _const,
  _enum,
  exclusiveMinimum,
  exclusiveMaximum,
  format,
  formatMaximum,
  formatMinimum,
  formatExclusiveMaximum,
  formatExclusiveMinimum,
  minLength,
  maxLength,
  minimum,
  maximum,
  not,
  pattern,
  contains,
  items,
  type,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
