# InitiateDataSharingRequestInput

## Properties

| Name                | Type       | Description                                                                                                                                      | Notes                             |
| ------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------- |
| **queryId**         | **string** | The ID of the query.                                                                                                                             | [default to undefined]            |
| **correlationId**   | **string** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                               | [default to undefined]            |
| **tokenMaxAge**     | **number** | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional] [default to undefined] |
| **nonce**           | **string** | A randomly generated value that is added in the request and response to prevent replay attacks.                                                  | [default to undefined]            |
| **redirectUri**     | **string** | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. | [default to undefined]            |
| **configurationId** | **string** | ID of the Affinidi Iota Framework configuration.                                                                                                 | [default to undefined]            |
| **userDid**         | **string** | User did to send the initiating request to. Only required if mode is didcomm                                                                     | [optional] [default to undefined] |
| **mode**            | **string** | Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.                                   | [default to undefined]            |

## Example

```typescript
import { InitiateDataSharingRequestInput } from '@affinidi-tdk/iota-client'

const instance: InitiateDataSharingRequestInput = {
  queryId,
  correlationId,
  tokenMaxAge,
  nonce,
  redirectUri,
  configurationId,
  userDid,
  mode,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
