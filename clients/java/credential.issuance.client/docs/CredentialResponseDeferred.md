# CredentialResponseDeferred

## Properties

| Name                | Type           | Description                                                                                                                                                          | Notes |
| ------------------- | -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **transactionId**   | **String**     | String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential. |       |
| **cNonce**          | **String**     | String containing a nonce to be used when creating a proof of possession of the key proof                                                                            |       |
| **cNonceExpiresIn** | **BigDecimal** | Lifetime in seconds of the c_nonce                                                                                                                                   |       |
