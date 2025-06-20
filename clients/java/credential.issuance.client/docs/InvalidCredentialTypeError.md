# InvalidCredentialTypeError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                          | Value                                  |
| ----------------------------- | -------------------------------------- |
| INVALID_CREDENTIAL_TYPE_ERROR | &quot;InvalidCredentialTypeError&quot; |

## Enum: MessageEnum

| Name                                           | Value                                                      |
| ---------------------------------------------- | ---------------------------------------------------------- |
| THE_REQUESTED_CREDENTIAL_TYPE_IS_NOT_SUPPORTED | &quot;The requested credential type is not supported&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
