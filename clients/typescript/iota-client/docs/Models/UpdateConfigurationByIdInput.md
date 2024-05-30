# UpdateConfigurationByIdInput

## Properties

| Name                       | Type                                                                              | Description                              | Notes                        |
| -------------------------- | --------------------------------------------------------------------------------- | ---------------------------------------- | ---------------------------- |
| **name**                   | **String**                                                                        | The name of the config                   | [optional] [default to null] |
| **walletAri**              | **String**                                                                        | The wallet Ari that will be used to sign | [optional] [default to null] |
| **iotaResponseWebhookURL** | **String**                                                                        | webhook to call when data is ready       | [optional] [default to null] |
| **enableVerification**     | **Boolean**                                                                       |                                          | [optional] [default to null] |
| **enableConsentAuditLog**  | **Boolean**                                                                       |                                          | [optional] [default to null] |
| **tokenMaxAge**            | **BigDecimal**                                                                    | token time to live in seconds            | [optional] [default to null] |
| **clientMetadata**         | [**IotaConfigurationDto_clientMetadata**](IotaConfigurationDto_clientMetadata.md) |                                          | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
