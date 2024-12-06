# # StartIssuanceInputDataInner

## Properties

| Name                    | Type                                                                                                                                  | Description                                                                                                                                                  | Notes      |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **credential_type_id**  | **string**                                                                                                                            | It is a String that identifies a Credential that is being requested to be issued.                                                                            |
| **credential_data**     | **array<string,mixed>**                                                                                                               | Object of data to be included in the issued credential ,should match the credential type                                                                     |
| **status_list_details** | [**\OpenAPI\Client\Model\StartIssuanceInputDataInnerStatusListDetailsInner[]**](StartIssuanceInputDataInnerStatusListDetailsInner.md) | Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists. | [optional] |
| **meta_data**           | [**\OpenAPI\Client\Model\StartIssuanceInputDataInnerMetaData**](StartIssuanceInputDataInnerMetaData.md)                               |                                                                                                                                                              | [optional] |

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
