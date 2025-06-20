# AlreadyExistsError

## Properties

| Name               | Type                                                                                      | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                                 |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                           |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                             |             |            |
| **traceId**        | **String**                                                                                |             |            |
| **details**        | [**List&lt;InvalidParameterErrorDetailsInner&gt;**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                 | Value                          |
| -------------------- | ------------------------------ |
| ALREADY_EXISTS_ERROR | &quot;AlreadyExistsError&quot; |

## Enum: MessageEnum

| Name                  | Value                                 |
| --------------------- | ------------------------------------- |
| ALREADY*EXISTS_PARAM* | &quot;Already exists: ${param}.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_409 | 409   |
