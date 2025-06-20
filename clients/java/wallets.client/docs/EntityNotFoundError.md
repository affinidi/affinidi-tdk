# EntityNotFoundError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                   | Value                           |
| ---------------------- | ------------------------------- |
| ENTITY_NOT_FOUND_ERROR | &quot;EntityNotFoundError&quot; |

## Enum: MessageEnum

| Name             | Value                        |
| ---------------- | ---------------------------- |
| ENTITY_NOT_FOUND | &quot;Entity not found&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_404 | 404   |
