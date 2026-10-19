# UpstreamUnavailableError

## Properties

| Name               | Type                                                                          | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                     |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                               |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                 |             |            |
| **traceId**        | **String**                                                                    |             |            |
| **details**        | [**List&lt;UnexpectedErrorDetailsInner&gt;**](UnexpectedErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                       | Value                                |
| -------------------------- | ------------------------------------ |
| UPSTREAM_UNAVAILABLE_ERROR | &quot;UpstreamUnavailableError&quot; |

## Enum: MessageEnum

| Name                                          | Value                                                     |
| --------------------------------------------- | --------------------------------------------------------- |
| THE*UPSTREAM_IDENTITY_SERVICE_IS_UNAVAILABLE* | &quot;The upstream identity service is unavailable.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_424 | 424   |
