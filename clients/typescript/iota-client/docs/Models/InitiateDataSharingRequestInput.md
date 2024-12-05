# InitiateDataSharingRequestInput

## Properties

| Name                | Type           | Description                                                                                                                                      | Notes                        |
| ------------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------- |
| **queryId**         | **String**     | The ID of the query.                                                                                                                             | [default to null]            |
| **correlationId**   | **String**     | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                               | [default to null]            |
| **tokenMaxAge**     | **BigDecimal** | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional] [default to null] |
| **nonce**           | **String**     | A randomly generated value that is added in the request and response to prevent replay attacks.                                                  | [default to null]            |
| **redirectUri**     | **String**     | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. | [default to null]            |
| **configurationId** | **String**     | ID of the Affinidi Iota Framework configuration.                                                                                                 | [default to null]            |
| **mode**            | **String**     | Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.                                                      | [default to null]            |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
