# FlowDataStatusListsDetailsInner

## Properties

| Name                       | Type                                                | Description                                                         | Notes      |
| -------------------------- | --------------------------------------------------- | ------------------------------------------------------------------- | ---------- |
| **statusListPurpose**      | [**StatusListPurposeEnum**](#StatusListPurposeEnum) | Purpose of status list to which credential is added                 |            |
| **statusListId**           | **String**                                          | id of status list                                                   |            |
| **statusListIndex**        | **String**                                          | as usual it is a number, but all standards use a string             |            |
| **standard**               | [**StandardEnum**](#StandardEnum)                   |                                                                     |            |
| **isActive**               | **Boolean**                                         | indicates status is true or not. Default false.                     |            |
| **statusActivationReason** | **String**                                          | text reasoning why the status is true (if true). Optional.          | [optional] |
| **statusActivatedAt**      | **String**                                          | ISO 8601 string of the modification date/time the status. Optional. | [optional] |

## Enum: StatusListPurposeEnum

| Name    | Value               |
| ------- | ------------------- |
| REVOKED | &quot;REVOKED&quot; |

## Enum: StandardEnum

| Name                     | Value                             |
| ------------------------ | --------------------------------- |
| REVOCATION_LIST2020      | &quot;RevocationList2020&quot;    |
| BITSTRING_STATUS_LIST_V1 | &quot;BitstringStatusListV1&quot; |
