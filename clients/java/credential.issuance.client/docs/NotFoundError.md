# NotFoundError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name            | Value                     |
| --------------- | ------------------------- |
| NOT_FOUND_ERROR | &quot;NotFoundError&quot; |

## Enum: MessageEnum

| Name             | Value                            |
| ---------------- | -------------------------------- |
| NOT*FOUND_PARAM* | &quot;Not found: ${param}.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_404 | new BigDecimal(&quot;404&quot;) |