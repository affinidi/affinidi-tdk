# CredentialIssuanceIdExistError

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
| CREDENTIAL_ISSUANCE_ID_EXIST_ERROR | &quot;CredentialIssuanceIdExistError&quot; |

## Enum: MessageEnum

| Name                                                               | Value                                                                         |
| ------------------------------------------------------------------ | ----------------------------------------------------------------------------- |
| ISSUANCE_ID_EXIST_FOR_THE_PROJECT_PLEASE_USE_DIFFERENT_ISSUANCE_ID | &quot;issuanceId exist for the project, please use different issuanceId&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
