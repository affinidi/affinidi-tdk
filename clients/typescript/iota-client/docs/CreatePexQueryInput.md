# CreatePexQueryInput

## Properties

| Name             | Type       | Description                                                                                                                              | Notes                             |
| ---------------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **name**         | **string** | The name of the presentation definition to quickly identify the query.                                                                   | [default to undefined]            |
| **vpDefinition** | **string** | The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format. | [default to undefined]            |
| **description**  | **string** | An optional description of what the query is used for.                                                                                   | [optional] [default to undefined] |

## Example

```typescript
import { CreatePexQueryInput } from '@affinidi-tdk/iota-client'

const instance: CreatePexQueryInput = {
  name,
  vpDefinition,
  description,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
