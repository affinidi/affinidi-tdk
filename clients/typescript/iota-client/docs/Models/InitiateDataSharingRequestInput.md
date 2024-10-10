# InitiateDataSharingRequestInput

## Properties

| Name                | Type           | Description                                                                                                                                       | Notes                        |
| ------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **queryId**         | **String**     |                                                                                                                                                   | [default to null]            |
| **correlationId**   | **String**     |                                                                                                                                                   | [default to null]            |
| **tokenMaxAge**     | **BigDecimal** | token time to live in seconds                                                                                                                     | [optional] [default to null] |
| **nonce**           | **String**     | Random value used to prevent replay attacks                                                                                                       | [default to null]            |
| **redirectUri**     | **String**     | the URL that the user will be redirected to after the request has been processed; should be provided by the developer of the client application.  | [default to null]            |
| **configurationId** | **String**     | id of the IOTA configuration used                                                                                                                 | [default to null]            |
| **mode**            | **String**     | indicates whether the flow is a WebSocket flow or a Redirect flow. This value is used in Vault to determine how to process the data flow request. | [default to null]            |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
