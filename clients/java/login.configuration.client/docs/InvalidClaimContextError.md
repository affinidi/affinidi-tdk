# InvalidClaimContextError

## Properties

| Name               | Type                                                                                      | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                                 |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                           |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                             |             |            |
| **traceId**        | **String**                                                                                |             |            |
| **details**        | [**List&lt;InvalidParameterErrorDetailsInner&gt;**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                        | Value                                |
| --------------------------- | ------------------------------------ |
| INVALID_CLAIM_CONTEXT_ERROR | &quot;InvalidClaimContextError&quot; |

## Enum: MessageEnum

| Name                  | Value                             |
| --------------------- | --------------------------------- |
| INVALID_CLAIM_CONTEXT | &quot;Invalid Claim Context&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
