# ActionForbiddenError

## Properties

| Name               | Type                                                                                      | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                                 |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                           |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                             |             |            |
| **traceId**        | **String**                                                                                |             |            |
| **details**        | [**List&lt;InvalidParameterErrorDetailsInner&gt;**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                   | Value                            |
| ---------------------- | -------------------------------- |
| ACTION_FORBIDDEN_ERROR | &quot;ActionForbiddenError&quot; |

## Enum: MessageEnum

| Name                                               | Value                                                          |
| -------------------------------------------------- | -------------------------------------------------------------- |
| PRINCIPAL_CAN_NOT_EXECUTE_ACTION_ON_GIVEN_RESOURCE | &quot;Principal can not execute action on given resource&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_403 | 403   |
