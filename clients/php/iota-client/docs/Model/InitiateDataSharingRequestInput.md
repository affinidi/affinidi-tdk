# # InitiateDataSharingRequestInput

## Properties

| Name                 | Type       | Description                                                                                                                                      | Notes      |
| -------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **query_id**         | **string** | The ID of the query.                                                                                                                             |
| **correlation_id**   | **string** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                               |
| **token_max_age**    | **float**  | This is the lifetime of the signed request token during the data-sharing flow.                                                                   | [optional] |
| **nonce**            | **string** | A randomly generated value that is added in the request and response to prevent replay attacks.                                                  |
| **redirect_uri**     | **string** | List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect. |
| **configuration_id** | **string** | ID of the Affinidi Iota Framework configuration.                                                                                                 |
| **mode**             | **string** | Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.                                                      |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
