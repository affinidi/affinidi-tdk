# IssuanceStateResponse

## Properties

| Name           | Type                          | Description                                                                                                                                     | Notes |
| -------------- | ----------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **issuanceId** | **String**                    | Website&#39;s internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one. |       |
| **status**     | [**StatusEnum**](#StatusEnum) | String describing the status of the issuance                                                                                                    |       |

## Enum: StatusEnum

| Name            | Value                       |
| --------------- | --------------------------- |
| INIT            | &quot;INIT&quot;            |
| OFFER_DELIVERED | &quot;OFFER_DELIVERED&quot; |
| VC_CLAIMED      | &quot;VC_CLAIMED&quot;      |
| TIMEOUT         | &quot;TIMEOUT&quot;         |
