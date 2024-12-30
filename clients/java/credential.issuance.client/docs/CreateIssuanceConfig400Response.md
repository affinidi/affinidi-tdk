# CreateIssuanceConfig400Response

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                        | Value                                |
| --------------------------- | ------------------------------------ |
| INVALID_ISSUER_WALLET_ERROR | &quot;InvalidIssuerWalletError&quot; |

## Enum: MessageEnum

| Name                        | Value                                   |
| --------------------------- | --------------------------------------- |
| ISSUER_WALLET_ID_IS_INVALID | &quot;issuer wallet id is invalid&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
