# PrepareRequestCreatedData

## Properties

| Name              | Type       | Description                                                                                                        | Notes                  |
| ----------------- | ---------- | ------------------------------------------------------------------------------------------------------------------ | ---------------------- |
| **jwt**           | **string** |                                                                                                                    | [default to undefined] |
| **correlationId** | **string** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow. | [default to undefined] |

## Example

```typescript
import { PrepareRequestCreatedData } from '@affinidi-tdk/iota-client'

const instance: PrepareRequestCreatedData = {
  jwt,
  correlationId,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
