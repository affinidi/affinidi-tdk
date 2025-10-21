# CreateIotaConfigurationInput

## Properties

| Name                       | Type                                                                            | Description                                                                                                                                      | Notes                                      |
| -------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------ |
| **name**                   | **string**                                                                      | The name of the configuration to quickly identify the resource.                                                                                  | [default to undefined]                     |
| **description**            | **string**                                                                      | An optional description of what the configuration is used for.                                                                                   | [optional] [default to undefined]          |
| **walletAri**              | **string**                                                                      | The unique resource identifier of the Wallet used to sign the request token.                                                                     | [default to undefined]                     |
| **iotaResponseWebhookURL** | **string**                                                                      | The webhook URL is used for callback when the data is ready.                                                                                     | [optional] [default to undefined]          |
| **enableVerification**     | **boolean**                                                                     | Cryptographically verifies the data shared by the user when enabled.                                                                             | [default to undefined]                     |
| **enableConsentAuditLog**  | **boolean**                                                                     | Records the user\&#39;s consent when they share their data, including the type of data shared when enabled.                                      | [default to undefined]                     |
| **tokenMaxAge**            | **number**                                                                      | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional] [default to undefined]          |
| **clientMetadata**         | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                                                                                                                                  | [default to undefined]                     |
| **mode**                   | **string**                                                                      | Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.                                   | [optional] [default to ModeEnum_Websocket] |
| **redirectUris**           | **Array&lt;string&gt;**                                                         | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. | [optional] [default to undefined]          |
| **enableIdvProviders**     | **boolean**                                                                     | Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.                                | [optional] [default to undefined]          |

## Example

```typescript
import { CreateIotaConfigurationInput } from '@affinidi-tdk/iota-client'

const instance: CreateIotaConfigurationInput = {
  name,
  description,
  walletAri,
  iotaResponseWebhookURL,
  enableVerification,
  enableConsentAuditLog,
  tokenMaxAge,
  clientMetadata,
  mode,
  redirectUris,
  enableIdvProviders,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
