# PrincipalDoesNotBelongToProjectError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                                       | Value                                            |
| ------------------------------------------ | ------------------------------------------------ |
| PRINCIPAL_DOES_NOT_BELONG_TO_PROJECT_ERROR | &quot;PrincipalDoesNotBelongToProjectError&quot; |

## Enum: MessageEnum

| Name                                           | Value                                                      |
| ---------------------------------------------- | ---------------------------------------------------------- |
| PRINCIPAL_DOES_NOT_BELONG_TO_THE_GIVEN_PROJECT | &quot;Principal does not belong to the given project&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_403 | 403   |
