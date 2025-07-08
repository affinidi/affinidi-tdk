# CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode

Grant type for `pre-authorized_code` flow

## Properties

| Name                    | Type                                                                                                                                                                      | Description                                        | Notes                             |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------- | --------------------------------- |
| **pre_authorized_code** | **string**                                                                                                                                                                | pre authorized code to be exchanged with jwt token | [default to undefined]            |
| **tx_code**             | [**CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode**](CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode.md) |                                                    | [optional] [default to undefined] |

## Example

```typescript
import { CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode } from '@affinidi-tdk/credential-issuance-client'

const instance: CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode =
  {
    pre_authorized_code,
    tx_code,
  }
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
