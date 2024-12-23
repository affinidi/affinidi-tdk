# InvalidProofError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                | Value                         |
| ------------------- | ----------------------------- |
| INVALID_PROOF_ERROR | &quot;InvalidProofError&quot; |

## Enum: MessageEnum

| Name                                           | Value                                                      |
| ---------------------------------------------- | ---------------------------------------------------------- |
| THE_PROOF_IN_THE_CREDENTIAL_REQUEST_IS_INVALID | &quot;The proof in the Credential Request is invalid&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_400 | new BigDecimal(&quot;400&quot;) |
