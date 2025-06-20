# StartIssuance400Response

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                     | Value                             |
| ------------------------ | --------------------------------- |
| MISSING_HOLDER_DID_ERROR | &quot;MissingHolderDidError&quot; |

## Enum: MessageEnum

| Name                                      | Value                                               |
| ----------------------------------------- | --------------------------------------------------- |
| HOLDER_DID_IS_REQUIRED_IN_THIS_CLAIM_MODE | &quot;holderDID is required in this claimMode&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
