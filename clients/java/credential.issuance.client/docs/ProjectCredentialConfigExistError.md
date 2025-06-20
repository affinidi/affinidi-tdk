# ProjectCredentialConfigExistError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                                  | Value                                         |
| ------------------------------------- | --------------------------------------------- |
| PROJECT_CREDENTIAL_CONFIG_EXIST_ERROR | &quot;ProjectCredentialConfigExistError&quot; |

## Enum: MessageEnum

| Name                                                                              | Value                                                                                          |
| --------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| CREDENTIAL_CONFIG_IS_EXIST_FOR_THE_PROJECT_ONE_CONFIG_IS_ALLOWED_FOR_EACH_PROJECT | &quot;Credential config is exist for the project, one config is allowed for each project&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
