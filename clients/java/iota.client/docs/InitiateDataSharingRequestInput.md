# InitiateDataSharingRequestInput

## Properties

| Name                | Type                      | Description                                                                                                                                      | Notes      |
| ------------------- | ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **queryId**         | **String**                | The ID of the query.                                                                                                                             |            |
| **correlationId**   | **String**                | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                               |            |
| **tokenMaxAge**     | **BigDecimal**            | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional] |
| **nonce**           | **String**                | A randomly generated value that is added in the request and response to prevent replay attacks.                                                  |            |
| **redirectUri**     | **String**                | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. |            |
| **configurationId** | **String**                | ID of the Affinidi Iota Framework configuration.                                                                                                 |            |
| **mode**            | [**ModeEnum**](#ModeEnum) | Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.                                                      |            |

## Enum: ModeEnum

| Name      | Value                 |
| --------- | --------------------- |
| REDIRECT  | &quot;redirect&quot;  |
| WEBSOCKET | &quot;websocket&quot; |
