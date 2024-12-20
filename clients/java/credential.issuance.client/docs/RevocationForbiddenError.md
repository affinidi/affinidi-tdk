# RevocationForbiddenError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                       | Value                                |
| -------------------------- | ------------------------------------ |
| REVOCATION_FORBIDDEN_ERROR | &quot;RevocationForbiddenError&quot; |

## Enum: MessageEnum

| Name                                | Value                                           |
| ----------------------------------- | ----------------------------------------------- |
| RELATED_VC_HAS_NOT_BEEN_CLAIMED_YET | &quot;Related VC has not been claimed yet&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
