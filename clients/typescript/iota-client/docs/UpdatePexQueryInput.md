# UpdatePexQueryInput

## Properties

| Name             | Type       | Description                                                                                                                              | Notes                             |
| ---------------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **vpDefinition** | **string** | The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. | [optional] [default to undefined] |
| **description**  | **string** | An optional description of what the query is used for.                                                                                   | [optional] [default to undefined] |

## Example

```typescript
import { UpdatePexQueryInput } from '@affinidi-tdk/iota-client'

const instance: UpdatePexQueryInput = {
  vpDefinition,
  description,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
