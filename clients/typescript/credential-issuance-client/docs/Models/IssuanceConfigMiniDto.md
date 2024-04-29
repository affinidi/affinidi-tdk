# IssuanceConfigMiniDto

## Properties

| Name                        | Type                  | Description                                                                                                                                                             | Notes                        |
| --------------------------- | --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **id**                      | **String**            |                                                                                                                                                                         | [default to null]            |
| **issuerDid**               | **String**            | Issuer DID                                                                                                                                                              | [optional] [default to null] |
| **issuerWalletId**          | **String**            | Issuer Wallet id                                                                                                                                                        | [optional] [default to null] |
| **credentialOfferDuration** | **BigDecimal**        | credential offer duration in second                                                                                                                                     | [optional] [default to null] |
| **cNonceDuration**          | **BigDecimal**        | c_nonce duration in second                                                                                                                                              | [optional] [default to null] |
| **format**                  | **String**            | String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] [default to null] |
| **issuerUri**               | **String**            | Issuer URI                                                                                                                                                              | [optional] [default to null] |
| **issuerMetadata**          | [**Map**](AnyType.md) | Issuer public information wallet may want to show to user during consent confirmation                                                                                   | [optional] [default to null] |
| **version**                 | **BigDecimal**        |                                                                                                                                                                         | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
