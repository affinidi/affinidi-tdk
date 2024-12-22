# UnauthorizedError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name               | Value                         |
| ------------------ | ----------------------------- |
| UNAUTHORIZED_ERROR | &quot;UnauthorizedError&quot; |

## Enum: MessageEnum

| Name         | Value                    |
| ------------ | ------------------------ |
| UNAUTHORIZED | &quot;Unauthorized&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_403 | new BigDecimal(&quot;403&quot;) |
