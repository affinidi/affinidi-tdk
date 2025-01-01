# ChangeCredentialStatus400Response

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
| CHANGE_STATUS_FORBIDDEN_ERROR | &quot;ChangeStatusForbiddenError&quot; |

## Enum: MessageEnum

| Name                                | Value                                           |
| ----------------------------------- | ----------------------------------------------- |
| RELATED_VC_STATUS_CANNOT_BE_CHANGED | &quot;Related VC status cannot be changed&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
