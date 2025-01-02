# InvalidVPTokenCreationTimeError

## Properties

| Name               | Type                                                                                      | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                                 |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                           |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                             |             |            |
| **traceId**        | **String**                                                                                |             |            |
| **details**        | [**List&lt;InvalidParameterErrorDetailsInner&gt;**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                                 | Value                                       |
| ------------------------------------ | ------------------------------------------- |
| INVALID_VP_TOKEN_CREATION_TIME_ERROR | &quot;InvalidVPTokenCreationTimeError&quot; |

## Enum: MessageEnum

| Name                 | Value                            |
| -------------------- | -------------------------------- |
| VP_TOKEN_HAS_EXPIRED | &quot;VP token has expired&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
