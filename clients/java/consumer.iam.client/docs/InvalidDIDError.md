# InvalidDIDError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;InvalidJwtTokenErrorDetailsInner&gt;**](InvalidJwtTokenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name              | Value                       |
| ----------------- | --------------------------- |
| INVALID_DID_ERROR | &quot;InvalidDIDError&quot; |

## Enum: MessageEnum

| Name                         | Value                                    |
| ---------------------------- | ---------------------------------------- |
| UNABLE_TO_RESOLVE_DID_METHOD | &quot;Unable to resolve DID method&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
