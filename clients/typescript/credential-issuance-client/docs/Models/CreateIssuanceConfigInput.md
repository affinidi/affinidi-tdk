# CreateIssuanceConfigInput

## Properties

| Name                        | Type                                                               | Description                                                                                                                                           | Notes                        |
| --------------------------- | ------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **name**                    | **String**                                                         |                                                                                                                                                       | [optional] [default to null] |
| **description**             | **String**                                                         |                                                                                                                                                       | [optional] [default to null] |
| **issuerWalletId**          | **String**                                                         | Issuer Wallet id                                                                                                                                      | [default to null]            |
| **credentialOfferDuration** | **BigDecimal**                                                     | credential offer duration in second                                                                                                                   | [optional] [default to null] |
| **format**                  | **String**                                                         | String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] [default to null] |
| **credentialSupported**     | [**List**](CreateIssuanceConfigInput_credentialSupported_inner.md) |                                                                                                                                                       | [default to null]            |
| **issuerMetadata**          | [**Map**](AnyType.md)                                              | Issuer public information wallet may want to show to user during consent confirmation                                                                 | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
