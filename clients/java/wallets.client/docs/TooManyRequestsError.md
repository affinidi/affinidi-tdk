# TooManyRequestsError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ServiceErrorResponseDetailsInner&gt;**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                    | Value                            |
| ----------------------- | -------------------------------- |
| TOO_MANY_REQUESTS_ERROR | &quot;TooManyRequestsError&quot; |

## Enum: MessageEnum

| Name                                                                                                                                                                        | Value                                                                                                                                                                                     |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| TOO*MANY_CONCURRENT_REQUESTS_TO_THE_SAME_WALLET_THE_OPERATION_FAILED_AFTER_MULTIPLE_RETRY_ATTEMPTS_DUE_TO_CONCURRENT_UPDATES_PLEASE_RETRY_YOUR_REQUEST_AFTER_A_SHORT_DELAY* | &quot;Too many concurrent requests to the same wallet. The operation failed after multiple retry attempts due to concurrent updates. Please retry your request after a short delay.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_429 | 429   |
