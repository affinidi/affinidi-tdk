# MalformedUpstreamResponseError

## Properties

| Name               | Type                                                                          | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                     |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                               |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                 |             |            |
| **traceId**        | **String**                                                                    |             |            |
| **details**        | [**List&lt;UnexpectedErrorDetailsInner&gt;**](UnexpectedErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                              | Value                                      |
| --------------------------------- | ------------------------------------------ |
| MALFORMED_UPSTREAM_RESPONSE_ERROR | &quot;MalformedUpstreamResponseError&quot; |

## Enum: MessageEnum

| Name                                                           | Value                                                                      |
| -------------------------------------------------------------- | -------------------------------------------------------------------------- |
| THE*UPSTREAM_IDENTITY_SERVICE_RETURNED_AN_UNEXPECTED_RESPONSE* | &quot;The upstream identity service returned an unexpected response.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_422 | 422   |
