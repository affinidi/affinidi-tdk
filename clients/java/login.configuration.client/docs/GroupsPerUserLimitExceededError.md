# GroupsPerUserLimitExceededError

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
| GROUPS_PER_USER_LIMIT_EXCEEDED_ERROR | &quot;GroupsPerUserLimitExceededError&quot; |

## Enum: MessageEnum

| Name                                  | Value                                             |
| ------------------------------------- | ------------------------------------------------- |
| AMOUNT*OF_GROUPS_PER_USER_IS_LIMITED* | &quot;Amount of groups per user is limited.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_409 | 409   |
