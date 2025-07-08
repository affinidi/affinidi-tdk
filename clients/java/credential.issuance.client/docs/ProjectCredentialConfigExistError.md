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

| Name                                                                                                       | Value                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| CREDENTIAL_CONFIGURATION_ALREADY_EXISTS_FOR_THIS_PROJECT_AND_ONLY_ONE_CONFIGURATION_IS_ALLOWED_PER_PROJECT | &quot;Credential configuration already exists for this project and only one configuration is allowed per project&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
