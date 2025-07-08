# CredentialOfferResponseGrants

Object indicating to the Wallet the Grant Types the Credential Issuer\'s Authorization Server is prepared to process for this Credential Offer.

## Properties

| Name                                                     | Type                                                                                                                                                          | Description | Notes                  |
| -------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ---------------------- |
| **urn_ietf_params_oauth_grant_type_pre_authorized_code** | [**CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode**](CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.md) |             | [default to undefined] |

## Example

```typescript
import { CredentialOfferResponseGrants } from '@affinidi-tdk/credential-issuance-client'

const instance: CredentialOfferResponseGrants = {
  urn_ietf_params_oauth_grant_type_pre_authorized_code,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
