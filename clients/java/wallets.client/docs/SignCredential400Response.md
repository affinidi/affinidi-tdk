# SignCredential400Response

## Properties

| Name               | Type                                                                      | Description | Notes      |
| ------------------ | ------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                 |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                           |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                             |             |            |
| **traceId**        | **String**                                                                |             |            |
| **details**        | [**List&lt;NotFoundErrorDetailsInner&gt;**](NotFoundErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                 | Value                          |
| -------------------- | ------------------------------ |
| SIGNING_FAILED_ERROR | &quot;SigningFailedError&quot; |

## Enum: MessageEnum

| Name            | Value                       |
| --------------- | --------------------------- |
| SIGNING*FAILED* | &quot;Signing failed.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
