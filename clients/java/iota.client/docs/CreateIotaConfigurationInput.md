# CreateIotaConfigurationInput

## Properties

| Name                       | Type                                                                            | Description                                                                                                                                      | Notes      |
| -------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **name**                   | **String**                                                                      | The name of the configuration to quickly identify the resource.                                                                                  |            |
| **description**            | **String**                                                                      | An optional description of what the configuration is used for.                                                                                   | [optional] |
| **walletAri**              | **String**                                                                      | The unique resource identifier of the Wallet used to sign the request token.                                                                     |            |
| **iotaResponseWebhookURL** | **String**                                                                      | The webhook URL is used for callback when the data is ready.                                                                                     | [optional] |
| **enableVerification**     | **Boolean**                                                                     | Cryptographically verifies the data shared by the user when enabled.                                                                             |            |
| **enableConsentAuditLog**  | **Boolean**                                                                     | Records the user&#39;s consent when they share their data, including the type of data shared when enabled.                                       |            |
| **tokenMaxAge**            | **BigDecimal**                                                                  | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional] |
| **clientMetadata**         | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                                                                                                                                  |            |
| **mode**                   | [**ModeEnum**](#ModeEnum)                                                       | Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.                                   | [optional] |
| **redirectUris**           | **List&lt;String&gt;**                                                          | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. | [optional] |
| **enableIdvProviders**     | **Boolean**                                                                     | Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.                                | [optional] |

## Enum: ModeEnum

| Name      | Value                 |
| --------- | --------------------- |
| REDIRECT  | &quot;redirect&quot;  |
| WEBSOCKET | &quot;websocket&quot; |
| DIDCOMM   | &quot;didcomm&quot;   |
