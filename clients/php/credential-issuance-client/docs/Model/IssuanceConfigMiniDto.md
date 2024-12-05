# # IssuanceConfigMiniDto

## Properties

| Name                          | Type                    | Description                                                                                                                                                             | Notes      |
| ----------------------------- | ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **id**                        | **string**              |                                                                                                                                                                         |
| **name**                      | **string**              |                                                                                                                                                                         | [optional] |
| **issuer_did**                | **string**              | Issuer DID                                                                                                                                                              | [optional] |
| **issuer_wallet_id**          | **string**              | Issuer Wallet id                                                                                                                                                        | [optional] |
| **credential_offer_duration** | **float**               | credential offer duration in second                                                                                                                                     | [optional] |
| **c_nonce_duration**          | **float**               | c_nonce duration in second                                                                                                                                              | [optional] |
| **format**                    | **string**              | String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] |
| **issuer_uri**                | **string**              | Issuer URI                                                                                                                                                              | [optional] |
| **issuer_metadata**           | **array<string,mixed>** | Issuer public information wallet may want to show to user during consent confirmation                                                                                   | [optional] |
| **version**                   | **float**               |                                                                                                                                                                         | [optional] |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
