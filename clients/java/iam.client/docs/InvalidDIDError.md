# InvalidDIDError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name              | Value                       |
| ----------------- | --------------------------- |
| INVALID_DID_ERROR | &quot;InvalidDIDError&quot; |

## Enum: MessageEnum

| Name                                            | Value                                                        |
| ----------------------------------------------- | ------------------------------------------------------------ |
| UNABLE_TO_RESOLVE_DID_METHOD_INVALID_PUBLIC_KEY | &quot;Unable to resolve DID method. Invalid public key&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
