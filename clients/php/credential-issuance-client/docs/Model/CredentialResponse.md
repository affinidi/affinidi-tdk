# # CredentialResponse

## Properties

| Name                   | Type                                                                                                        | Description                                                                                                                                                          | Notes |
| ---------------------- | ----------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **credential**         | [**\OpenAPI\Client\Model\CredentialResponseImmediateCredential**](CredentialResponseImmediateCredential.md) |                                                                                                                                                                      |
| **c_nonce**            | **string**                                                                                                  | String containing a nonce to be used when creating a proof of possession of the key proof                                                                            |
| **c_nonce_expires_in** | **float**                                                                                                   | Lifetime in seconds of the c_nonce                                                                                                                                   |
| **transaction_id**     | **string**                                                                                                  | String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential. |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
