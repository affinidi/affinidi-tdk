# CredentialOfferClaimedError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                           | Value                                   |
| ------------------------------ | --------------------------------------- |
| CREDENTIAL_OFFER_CLAIMED_ERROR | &quot;CredentialOfferClaimedError&quot; |

## Enum: MessageEnum

| Name                                | Value                                           |
| ----------------------------------- | ----------------------------------------------- |
| CREDENTIAL_OFFER_IS_ALREADY_CLAIMED | &quot;Credential offer is already claimed&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
