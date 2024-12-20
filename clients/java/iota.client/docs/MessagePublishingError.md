# MessagePublishingError

## Properties

| Name               | Type                                                                                      | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                                 |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                           |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                             |             |            |
| **traceId**        | **String**                                                                                |             |            |
| **details**        | [**List&lt;InvalidParameterErrorDetailsInner&gt;**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                     | Value                              |
| ------------------------ | ---------------------------------- |
| MESSAGE_PUBLISHING_ERROR | &quot;MessagePublishingError&quot; |

## Enum: MessageEnum

| Name                                  | Value                                             |
| ------------------------------------- | ------------------------------------------------- |
| NOT_ABLE_TO_PUBLISH_MESSAGES_TO_TOPIC | &quot;Not able to publish messages to topic&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value                           |
| ---------- | ------------------------------- |
| NUMBER_500 | new BigDecimal(&quot;500&quot;) |
