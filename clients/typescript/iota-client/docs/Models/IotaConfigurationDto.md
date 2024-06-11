# IotaConfigurationDto

## Properties

| Name                       | Type                                                                              | Description                              | Notes                        |
| -------------------------- | --------------------------------------------------------------------------------- | ---------------------------------------- | ---------------------------- |
| **ari**                    | **String**                                                                        | The ARI of the config                    | [default to null]            |
| **configurationId**        | **String**                                                                        |                                          | [default to null]            |
| **name**                   | **String**                                                                        | The name of the config                   | [default to null]            |
| **projectId**              | **String**                                                                        |                                          | [default to null]            |
| **walletAri**              | **String**                                                                        | The wallet Ari that will be used to sign | [default to null]            |
| **tokenMaxAge**            | **BigDecimal**                                                                    | token time to live in seconds            | [default to null]            |
| **iotaResponseWebhookURL** | **String**                                                                        | webhook to call when data is ready       | [optional] [default to null] |
| **enableVerification**     | **Boolean**                                                                       |                                          | [default to null]            |
| **enableConsentAuditLog**  | **Boolean**                                                                       |                                          | [default to null]            |
| **clientMetadata**         | [**IotaConfigurationDto_clientMetadata**](IotaConfigurationDto_clientMetadata.md) |                                          | [default to null]            |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
