# PrepareRequest

## Properties

| Name                   | Type       | Description                                                                                                        | Notes                             |
| ---------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------ | --------------------------------- |
| **connectionClientId** | **string** |                                                                                                                    | [default to undefined]            |
| **queryId**            | **string** |                                                                                                                    | [default to undefined]            |
| **correlationId**      | **string** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow. | [default to undefined]            |
| **tokenMaxAge**        | **number** | This is the lifetime of the signed request token during the data-sharing flow.                                     | [optional] [default to undefined] |
| **audience**           | **string** |                                                                                                                    | [optional] [default to undefined] |

## Example

```typescript
import { PrepareRequest } from '@affinidi-tdk/iota-client'

const instance: PrepareRequest = {
  connectionClientId,
  queryId,
  correlationId,
  tokenMaxAge,
  audience,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
