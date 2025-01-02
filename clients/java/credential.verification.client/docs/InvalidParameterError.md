# InvalidParameterError

## Properties

| Name               | Type                                                                      | Description | Notes      |
| ------------------ | ------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                 |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                           |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                             |             |            |
| **traceId**        | **String**                                                                |             |            |
| **details**        | [**List&lt;NotFoundErrorDetailsInner&gt;**](NotFoundErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                    | Value                             |
| ----------------------- | --------------------------------- |
| INVALID_PARAMETER_ERROR | &quot;InvalidParameterError&quot; |

## Enum: MessageEnum

| Name                     | Value                                    |
| ------------------------ | ---------------------------------------- |
| INVALID*PARAMETER_PARAM* | &quot;Invalid parameter: ${param}.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
