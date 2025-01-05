# CredentialSubjectNotValidError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                               | Value                                      |
| ---------------------------------- | ------------------------------------------ |
| CREDENTIAL_SUBJECT_NOT_VALID_ERROR | &quot;CredentialSubjectNotValidError&quot; |

## Enum: MessageEnum

| Name                                                 | Value                                                            |
| ---------------------------------------------------- | ---------------------------------------------------------------- |
| CREDENTIAL_SUBJECT_IS_NOT_ACCORDING_TO_THE_VC_SCHEMA | &quot;Credential subject is not according to the vc schema&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
