# # FetchIOTAVPResponseInput

## Properties

| Name                 | Type       | Description                                                                                                                                                    | Notes |
| -------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **correlation_id**   | **string** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                                             |
| **transaction_id**   | **string** | A unique, randomly generated identifier data-sharing request flow is initiated. This value is used with the response code to fetch the callback response data. |
| **response_code**    | **string** | A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.                       |
| **configuration_id** | **string** | ID of the Affinidi Iota Framework configuration.                                                                                                               |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
