# UnexpectedError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name             | Value                       |
| ---------------- | --------------------------- |
| UNEXPECTED_ERROR | &quot;UnexpectedError&quot; |

## Enum: MessageEnum

| Name                       | Value                                  |
| -------------------------- | -------------------------------------- |
| UNEXPECTED*ERROR_OCCURRED* | &quot;Unexpected Error Occurred.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_500 | new BigDecimal(&quot;500&quot;) |
