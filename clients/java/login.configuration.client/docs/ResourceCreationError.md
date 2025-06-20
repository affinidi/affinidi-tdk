# ResourceCreationError

## Properties

| Name               | Type                                                                                      | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                                 |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                                           |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                             |             |            |
| **traceId**        | **String**                                                                                |             |            |
| **details**        | [**List&lt;InvalidParameterErrorDetailsInner&gt;**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                    | Value                             |
| ----------------------- | --------------------------------- |
| RESOURCE_CREATION_ERROR | &quot;ResourceCreationError&quot; |

## Enum: MessageEnum

| Name                        | Value                                   |
| --------------------------- | --------------------------------------- |
| FAILED*TO_CREATE_RESOURCES* | &quot;Failed to create resources.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_424 | 424   |
