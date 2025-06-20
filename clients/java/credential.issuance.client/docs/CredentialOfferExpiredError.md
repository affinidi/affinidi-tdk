# CredentialOfferExpiredError

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
| CREDENTIAL_OFFER_EXPIRED_ERROR | &quot;CredentialOfferExpiredError&quot; |

## Enum: MessageEnum

| Name                        | Value                                   |
| --------------------------- | --------------------------------------- |
| CREDENTIAL_OFFER_IS_EXPIRED | &quot;Credential offer is expired&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
