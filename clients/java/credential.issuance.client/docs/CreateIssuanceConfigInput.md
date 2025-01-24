# CreateIssuanceConfigInput

## Properties

| Name                        | Type                                                                      | Description                                                                                                                                           | Notes      |
| --------------------------- | ------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**                    | **String**                                                                |                                                                                                                                                       | [optional] |
| **description**             | **String**                                                                |                                                                                                                                                       | [optional] |
| **issuerWalletId**          | **String**                                                                | Issuer Wallet id                                                                                                                                      |            |
| **credentialOfferDuration** | **BigDecimal**                                                            | credential offer duration in second                                                                                                                   | [optional] |
| **format**                  | [**FormatEnum**](#FormatEnum)                                             | String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] |
| **credentialSupported**     | [**List&lt;CredentialSupportedObject&gt;**](CredentialSupportedObject.md) |                                                                                                                                                       |            |
| **issuerMetadata**          | **Map&lt;String, Object&gt;**                                             | Issuer public information wallet may want to show to user during consent confirmation                                                                 | [optional] |
| **returnUris**              | **List&lt;String&gt;**                                                    | List of allowed URIs to be returned to after issuance                                                                                                 | [optional] |
| **webhook**                 | [**CisConfigurationWebhookSetting**](CisConfigurationWebhookSetting.md)   |                                                                                                                                                       | [optional] |

## Enum: FormatEnum

| Name              | Value                         |
| ----------------- | ----------------------------- |
| LDP_VC            | &quot;ldp_vc&quot;            |
| JWT_VC_JSON_LD    | &quot;jwt_vc_json-ld&quot;    |
| SD_JWT_VC_JSON_LD | &quot;sd_jwt_vc_json-ld&quot; |
