# InvalidParameterError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;InvalidJwtTokenErrorDetailsInner&gt;**](InvalidJwtTokenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                    | Value                             |
| ----------------------- | --------------------------------- |
| INVALID_PARAMETER_ERROR | &quot;InvalidParameterError&quot; |

## Enum: MessageEnum

| Name              | Value                         |
| ----------------- | ----------------------------- |
| INVALID_PARAMETER | &quot;Invalid parameter&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
