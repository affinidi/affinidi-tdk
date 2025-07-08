# OAuth2TokenAuthorizationDetailsInner

## Properties

| Name                            | Type                    | Description                                            | Notes                                  |
| ------------------------------- | ----------------------- | ------------------------------------------------------ | -------------------------------------- |
| **type**                        | **string**              | String that determines the authorization details type. | [default to TypeEnum_OpenidCredential] |
| **credential_configuration_id** | **string**              |                                                        | [default to undefined]                 |
| **credential_identifiers**      | **Array&lt;string&gt;** |                                                        | [optional] [default to undefined]      |

## Example

```typescript
import { OAuth2TokenAuthorizationDetailsInner } from '@affinidi-tdk/login-configuration-client'

const instance: OAuth2TokenAuthorizationDetailsInner = {
  type,
  credential_configuration_id,
  credential_identifiers,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
