# StartIssuanceInputDataInner

Data to be included in issued credential

## Properties

| Name                  | Type                                                                                                                      | Description                                                                                                                                                  | Notes      |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **credentialTypeId**  | **String**                                                                                                                | It is a String that identifies a Credential that is being requested to be issued.                                                                            |            |
| **credentialData**    | **Map&lt;String, Object&gt;**                                                                                             | Object of data to be included in the issued credential ,should match the credential type                                                                     |            |
| **statusListDetails** | [**List&lt;StartIssuanceInputDataInnerStatusListDetailsInner&gt;**](StartIssuanceInputDataInnerStatusListDetailsInner.md) | Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists. | [optional] |
| **metaData**          | [**StartIssuanceInputDataInnerMetaData**](StartIssuanceInputDataInnerMetaData.md)                                         |                                                                                                                                                              | [optional] |
