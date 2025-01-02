# OperationForbiddenError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                      | Value                               |
| ------------------------- | ----------------------------------- |
| OPERATION_FORBIDDEN_ERROR | &quot;OperationForbiddenError&quot; |

## Enum: MessageEnum

| Name                       | Value                                      |
| -------------------------- | ------------------------------------------ |
| OPERATION*FORBIDDEN_PARAM* | &quot;Operation forbidden: ${param}.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_403 | new BigDecimal(&quot;403&quot;) |
