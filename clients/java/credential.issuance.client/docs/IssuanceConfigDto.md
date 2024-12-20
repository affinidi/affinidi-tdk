# IssuanceConfigDto

## Properties

| Name                        | Type                                                                      | Description                                                                                                                                                             | Notes      |
| --------------------------- | ------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **id**                      | **String**                                                                |                                                                                                                                                                         | [optional] |
| **name**                    | **String**                                                                |                                                                                                                                                                         | [optional] |
| **description**             | **String**                                                                |                                                                                                                                                                         | [optional] |
| **issuerDid**               | **String**                                                                | Issuer DID                                                                                                                                                              | [optional] |
| **issuerWalletId**          | **String**                                                                | Issuer Wallet id                                                                                                                                                        | [optional] |
| **credentialOfferDuration** | **BigDecimal**                                                            | credential offer duration in second                                                                                                                                     | [optional] |
| **cNonceDuration**          | **BigDecimal**                                                            | c_nonce duration in second                                                                                                                                              | [optional] |
| **format**                  | [**FormatEnum**](#FormatEnum)                                             | String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] |
| **issuerUri**               | **String**                                                                | Issuer URI                                                                                                                                                              | [optional] |
| **credentialSupported**     | [**List&lt;CredentialSupportedObject&gt;**](CredentialSupportedObject.md) |                                                                                                                                                                         | [optional] |
| **issuerMetadata**          | **Map&lt;String, Object&gt;**                                             | Issuer public information wallet may want to show to user during consent confirmation                                                                                   | [optional] |
| **version**                 | **BigDecimal**                                                            |                                                                                                                                                                         | [optional] |
| **returnUris**              | **List&lt;String&gt;**                                                    | List of allowed URIs to be returned to after issuance                                                                                                                   | [optional] |

## Enum: FormatEnum

| Name              | Value                         |
| ----------------- | ----------------------------- |
| LDP_VC            | &quot;ldp_vc&quot;            |
| JWT_VC_JSON_LD    | &quot;jwt_vc_json-ld&quot;    |
| SD_JWT_VC_JSON_LD | &quot;sd_jwt_vc_json-ld&quot; |
