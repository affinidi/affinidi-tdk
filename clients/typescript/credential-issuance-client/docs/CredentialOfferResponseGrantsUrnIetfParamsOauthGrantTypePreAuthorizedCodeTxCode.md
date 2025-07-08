# CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode

Object specifying whether the Authorization Server expects presentation of a Transaction Code by the End-User along with the Token Request in a Pre-Authorized Code Flow

## Properties

| Name            | Type       | Description                                                                                                     | Notes                             |
| --------------- | ---------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **length**      | **number** | Integer specifying the length of the Transaction Code                                                           | [optional] [default to undefined] |
| **input_mode**  | **string** | String specifying the input character set. Possible values are numeric (only digits) and text (any characters). | [optional] [default to undefined] |
| **description** | **string** | String containing guidance for the Holder of the Wallet on how to obtain the Transaction Code                   | [optional] [default to undefined] |

## Example

```typescript
import { CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode } from '@affinidi-tdk/credential-issuance-client'

const instance: CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode =
  {
    length,
    input_mode,
    description,
  }
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
