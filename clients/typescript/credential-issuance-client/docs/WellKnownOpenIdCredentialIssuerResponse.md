# WellKnownOpenIdCredentialIssuerResponse

## Properties

| Name                                      | Type                                                                                                                                                     | Description | Notes                             |
| ----------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | --------------------------------- |
| **authorization_endpoint**                | **string**                                                                                                                                               |             | [optional] [default to undefined] |
| **credential_endpoint**                   | **string**                                                                                                                                               |             | [optional] [default to undefined] |
| **credential_issuer**                     | **string**                                                                                                                                               |             | [optional] [default to undefined] |
| **batch_credential_endpoint**             | **string**                                                                                                                                               |             | [optional] [default to undefined] |
| **credentials_supported**                 | [**Array&lt;WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner&gt;**](WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner.md) |             | [optional] [default to undefined] |
| **credential_configurations_supported**   | **Array&lt;object&gt;**                                                                                                                                  |             | [optional] [default to undefined] |
| **deferred_credential_endpoint**          | **string**                                                                                                                                               |             | [optional] [default to undefined] |
| **grant_types_supported**                 | **Array&lt;string&gt;**                                                                                                                                  |             | [optional] [default to undefined] |
| **jwks_uri**                              | **string**                                                                                                                                               |             | [optional] [default to undefined] |
| **display**                               | [**WellKnownOpenIdCredentialIssuerResponseDisplay**](WellKnownOpenIdCredentialIssuerResponseDisplay.md)                                                  |             | [optional] [default to undefined] |
| **scopes_supported**                      | **Array&lt;string&gt;**                                                                                                                                  |             | [optional] [default to undefined] |
| **token_endpoint**                        | **string**                                                                                                                                               |             | [optional] [default to undefined] |
| **token_endpoint_auth_methods_supported** | **Array&lt;string&gt;**                                                                                                                                  |             | [optional] [default to undefined] |
| **return_uris**                           | **Array&lt;string&gt;**                                                                                                                                  |             | [optional] [default to undefined] |

## Example

```typescript
import { WellKnownOpenIdCredentialIssuerResponse } from '@affinidi-tdk/credential-issuance-client'

const instance: WellKnownOpenIdCredentialIssuerResponse = {
  authorization_endpoint,
  credential_endpoint,
  credential_issuer,
  batch_credential_endpoint,
  credentials_supported,
  credential_configurations_supported,
  deferred_credential_endpoint,
  grant_types_supported,
  jwks_uri,
  display,
  scopes_supported,
  token_endpoint,
  token_endpoint_auth_methods_supported,
  return_uris,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
