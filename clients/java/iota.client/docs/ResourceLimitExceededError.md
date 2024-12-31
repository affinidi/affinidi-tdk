# ResourceLimitExceededError

## Properties

| Name               | Type                                                                                      | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                                 |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                           |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                             |             |            |
| **traceId**        | **String**                                                                                |             |            |
| **details**        | [**List&lt;InvalidParameterErrorDetailsInner&gt;**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                          | Value                                  |
| ----------------------------- | -------------------------------------- |
| RESOURCE_LIMIT_EXCEEDED_ERROR | &quot;ResourceLimitExceededError&quot; |

## Enum: MessageEnum

| Name                           | Value                                          |
| ------------------------------ | ---------------------------------------------- |
| RESOURCE*LIMIT_EXCEEDED_PARAM* | &quot;Resource limit exceeded: ${param}.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_422 | new BigDecimal(&quot;422&quot;) |
