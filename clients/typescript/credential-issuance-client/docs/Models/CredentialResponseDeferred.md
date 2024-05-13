# CredentialResponseDeferred

## Properties

| Name                   | Type           | Description                                                                                                                                                          | Notes             |
| ---------------------- | -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------- |
| **transaction_id**     | **String**     | String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential. | [default to null] |
| **c_nonce**            | **String**     | String containing a nonce to be used when creating a proof of possession of the key proof                                                                            | [default to null] |
| **c_nonce_expires_in** | **BigDecimal** | Lifetime in seconds of the c_nonce                                                                                                                                   | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
