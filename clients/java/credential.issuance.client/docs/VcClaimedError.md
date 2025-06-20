# VcClaimedError

## Properties

| Name               | Type                                                                                    | Description | Notes      |
| ------------------ | --------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                               |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                         |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                           |             |            |
| **traceId**        | **String**                                                                              |             |            |
| **details**        | [**List&lt;ActionForbiddenErrorDetailsInner&gt;**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name             | Value                      |
| ---------------- | -------------------------- |
| VC_CLAIMED_ERROR | &quot;VcClaimedError&quot; |

## Enum: MessageEnum

| Name                                                  | Value                                                             |
| ----------------------------------------------------- | ----------------------------------------------------------------- |
| THE_REQUESTED_VC_HAS_ALREADY_BEEN_CLAIMED_BY_THE_USER | &quot;The requested VC has already been claimed by the user&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_400 | 400   |
