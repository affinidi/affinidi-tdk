# IotaConfigurationDto

## Properties

| Name                       | Type                                                                            | Description                                                                                                                                      | Notes      |
| -------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **ari**                    | **String**                                                                      | This is a unique resource identifier of the Affinidi Iota Framework configuration.                                                               |            |
| **configurationId**        | **String**                                                                      | ID of the Affinidi Iota Framework configuration.                                                                                                 |            |
| **name**                   | **String**                                                                      | The name of the configuration to quickly identify the resource.                                                                                  |            |
| **projectId**              | **String**                                                                      | The ID of the project.                                                                                                                           |            |
| **walletAri**              | **String**                                                                      | The unique resource identifier of the Wallet used to sign the request token.                                                                     |            |
| **tokenMaxAge**            | **BigDecimal**                                                                  | This is the lifetime of the signed request token during the data-sharing flow.                                                                   |            |
| **iotaResponseWebhookURL** | **String**                                                                      | The webhook URL is used for callback when the data is ready.                                                                                     | [optional] |
| **enableVerification**     | **Boolean**                                                                     | Cryptographically verifies the data shared by the user when enabled.                                                                             |            |
| **enableConsentAuditLog**  | **Boolean**                                                                     | Records the consent the user gave when they shared their data, including the type of data shared.                                                |            |
| **clientMetadata**         | [**IotaConfigurationDtoClientMetadata**](IotaConfigurationDtoClientMetadata.md) |                                                                                                                                                  |            |
| **mode**                   | [**ModeEnum**](#ModeEnum)                                                       | Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.                                                      | [optional] |
| **redirectUris**           | **List&lt;String&gt;**                                                          | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. | [optional] |
| **enableIdvProviders**     | **Boolean**                                                                     | Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.                                | [optional] |

## Enum: ModeEnum

| Name      | Value                 |
| --------- | --------------------- |
| REDIRECT  | &quot;redirect&quot;  |
| WEBSOCKET | &quot;websocket&quot; |
