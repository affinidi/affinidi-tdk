# InvalidJwtTokenError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;InvalidJwtTokenErrorDetailsInner&gt;**](InvalidJwtTokenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                    | Value                            |
| ----------------------- | -------------------------------- |
| INVALID_JWT_TOKEN_ERROR | &quot;InvalidJwtTokenError&quot; |

## Enum: MessageEnum

| Name                 | Value                            |
| -------------------- | -------------------------------- |
| JWT_TOKEN_IS_INVALID | &quot;JWT token is invalid&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_401 | 401   |
