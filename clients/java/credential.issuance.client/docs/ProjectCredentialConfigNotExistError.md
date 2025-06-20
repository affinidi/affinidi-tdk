# ProjectCredentialConfigNotExistError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                                      | Value                                            |
| ----------------------------------------- | ------------------------------------------------ |
| PROJECT_CREDENTIAL_CONFIG_NOT_EXIST_ERROR | &quot;ProjectCredentialConfigNotExistError&quot; |

## Enum: MessageEnum

| Name                                               | Value                                                          |
| -------------------------------------------------- | -------------------------------------------------------------- |
| CREDENTIAL_CONFIG_IS_NOT_AVAILABLE_FOR_THE_PROJECT | &quot;Credential config is not available for the project&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
