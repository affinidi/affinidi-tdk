# UpdateNodeInput

## Properties

| Name            | Type       | Description                                     | Notes                             |
| --------------- | ---------- | ----------------------------------------------- | --------------------------------- |
| **name**        | **string** | Name of the node                                | [optional] [default to undefined] |
| **description** | **string** | Description of the node                         | [optional] [default to undefined] |
| **metadata**    | **string** | metadata of the node in stringified json format | [optional] [default to undefined] |

## Example

```typescript
import { UpdateNodeInput } from '@affinidi-tdk/vault-data-manager-client'

const instance: UpdateNodeInput = {
  name,
  description,
  metadata,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
