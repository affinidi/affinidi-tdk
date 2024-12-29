# InvalidCredentialRequestError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                             | Value                                     |
| -------------------------------- | ----------------------------------------- |
| INVALID_CREDENTIAL_REQUEST_ERROR | &quot;InvalidCredentialRequestError&quot; |

## Enum: MessageEnum

| Name                          | Value                                     |
| ----------------------------- | ----------------------------------------- |
| CREDENTIAL_REQUEST_IS_INVALID | &quot;Credential Request is invalid&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
