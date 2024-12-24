# InvalidDidParameterError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                        | Value                                |
| --------------------------- | ------------------------------------ |
| INVALID_DID_PARAMETER_ERROR | &quot;InvalidDidParameterError&quot; |

## Enum: MessageEnum

| Name                                                                  | Value                                                                             |
| --------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| GIVEN*DID_IN_FIELD_TO_DID_IS_INVALID_USE_ONLY_RESOLVABLE_FORM_OF_DID* | &quot;Given did in field toDid is invalid. Use only resolvable form of did.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
