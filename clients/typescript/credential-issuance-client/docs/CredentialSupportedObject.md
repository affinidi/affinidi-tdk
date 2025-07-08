# CredentialSupportedObject

## Properties

| Name                 | Type                                                              | Description                                                                       | Notes                             |
| -------------------- | ----------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------- |
| **credentialTypeId** | **string**                                                        | It is a String that identifies a Credential that is being requested to be issued. | [default to undefined]            |
| **jsonSchemaUrl**    | **string**                                                        | credential jsonLdContextUrl                                                       | [default to undefined]            |
| **jsonLdContextUrl** | **string**                                                        | credential jsonSchemaUrl                                                          | [default to undefined]            |
| **metadata**         | [**SupportedCredentialMetadata**](SupportedCredentialMetadata.md) |                                                                                   | [optional] [default to undefined] |

## Example

```typescript
import { CredentialSupportedObject } from '@affinidi-tdk/credential-issuance-client'

const instance: CredentialSupportedObject = {
  credentialTypeId,
  jsonSchemaUrl,
  jsonLdContextUrl,
  metadata,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
