# FetchIOTAVPResponseInput

## Properties

| Name                | Type       | Description                                                                                                                                                    | Notes             |
| ------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------- |
| **correlationId**   | **String** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                                             | [default to null] |
| **transactionId**   | **String** | A unique, randomly generated identifier data-sharing request flow is initiated. This value is used with the response code to fetch the callback response data. | [default to null] |
| **responseCode**    | **String** | A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.                       | [default to null] |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration.                                                                                                               | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
