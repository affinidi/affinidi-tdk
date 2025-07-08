# CredentialOfferResponse

## Properties

| Name                             | Type                                                                  | Description                                                                                                          | Notes                  |
| -------------------------------- | --------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **credential_issuer**            | **string**                                                            | The URL of the Credential Issuer                                                                                     | [default to undefined] |
| **credential_configuration_ids** | **Array&lt;string&gt;**                                               | Array of unique strings that each identify one of the keys in the name/value pairs stored in the credentialSupported | [default to undefined] |
| **grants**                       | [**CredentialOfferResponseGrants**](CredentialOfferResponseGrants.md) |                                                                                                                      | [default to undefined] |

## Example

```typescript
import { CredentialOfferResponse } from '@affinidi-tdk/credential-issuance-client'

const instance: CredentialOfferResponse = {
  credential_issuer,
  credential_configuration_ids,
  grants,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
