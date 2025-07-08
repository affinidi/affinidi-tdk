# AwsExchangeCredentials

## Properties

| Name          | Type       | Description                                                                                                                                                                | Notes                  |
| ------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **assertion** | **string** | A valid JSON Web Token (JWT) that secures the WebSocket connection. The JWT is signed with the key pair\&#39;s private key used to create the Personal Access Token (PAT). | [default to undefined] |

## Example

```typescript
import { AwsExchangeCredentials } from '@affinidi-tdk/iota-client'

const instance: AwsExchangeCredentials = {
  assertion,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
