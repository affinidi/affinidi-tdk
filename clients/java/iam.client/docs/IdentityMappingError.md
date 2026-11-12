# IdentityMappingError

## Properties

| Name               | Type                                                                          | Description | Notes      |
| ------------------ | ----------------------------------------------------------------------------- | ----------- | ---------- |
| **name**           | [**NameEnum**](#NameEnum)                                                     |             |            |
| **message**        | [**MessageEnum**](#MessageEnum)                                               |             |            |
| **httpStatusCode** | [**HttpStatusCodeEnum**](#HttpStatusCodeEnum)                                 |             |            |
| **traceId**        | **String**                                                                    |             |            |
| **details**        | [**List&lt;UnexpectedErrorDetailsInner&gt;**](UnexpectedErrorDetailsInner.md) |             | [optional] |

## Enum: NameEnum

| Name                   | Value                            |
| ---------------------- | -------------------------------- |
| IDENTITY_MAPPING_ERROR | &quot;IdentityMappingError&quot; |

## Enum: MessageEnum

| Name                                                      | Value                                                                 |
| --------------------------------------------------------- | --------------------------------------------------------------------- |
| UNABLE*TO_MAP_THE_AUTHENTICATED_PRINCIPAL_TO_AN_IDENTITY* | &quot;Unable to map the authenticated principal to an identity.&quot; |

## Enum: HttpStatusCodeEnum

| Name       | Value |
| ---------- | ----- |
| NUMBER_404 | 404   |
