# PrincipalCannotBeDeletedError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                              | Value                                     |
| --------------------------------- | ----------------------------------------- |
| PRINCIPAL_CANNOT_BE_DELETED_ERROR | &quot;PrincipalCannotBeDeletedError&quot; |

## Enum: MessageEnum

| Name                                                                 | Value                                                                           |
| -------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| CANNOT_DELETE_OWN_RECORD_FROM_THE_PROJECT_WITH_THE_SAME_PRINCIPAL_ID | &quot;Cannot delete own record from the project with the same principalId&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_409 | 409   |
