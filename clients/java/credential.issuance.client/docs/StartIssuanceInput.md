# StartIssuanceInput

## Properties

| Name           | Type                                                                          | Description                                                                                                                                                                                                                                                                                                                  | Notes      |
| -------------- | ----------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **claimMode**  | [**ClaimModeEnum**](#ClaimModeEnum)                                           | In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated). | [optional] |
| **holderDid**  | **String**                                                                    | Holder DID                                                                                                                                                                                                                                                                                                                   | [optional] |
| **issuanceId** | **String**                                                                    | Website&#39;s internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.                                                                                                                                                                              | [optional] |
| **data**       | [**List&lt;StartIssuanceInputDataInner&gt;**](StartIssuanceInputDataInner.md) |                                                                                                                                                                                                                                                                                                                              |            |

## Enum: ClaimModeEnum

| Name         | Value                    |
| ------------ | ------------------------ |
| NORMAL       | &quot;NORMAL&quot;       |
| TX_CODE      | &quot;TX_CODE&quot;      |
| FIXED_HOLDER | &quot;FIXED_HOLDER&quot; |
