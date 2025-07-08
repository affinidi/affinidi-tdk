# CreateAccountInput

## Properties

| Name             | Type       | Description                                           | Notes                             |
| ---------------- | ---------- | ----------------------------------------------------- | --------------------------------- |
| **accountIndex** | **number** | number that is used for profile DID derivation        | [default to undefined]            |
| **accountDid**   | **string** | DID that is associated with the account number        | [default to undefined]            |
| **didProof**     | **string** | JWT that proves ownership of profile DID by requester | [default to undefined]            |
| **alias**        | **string** | Alias of account                                      | [optional] [default to undefined] |
| **metadata**     | **object** | Metadata of account                                   | [optional] [default to undefined] |
| **description**  | **string** | Description of account                                | [optional] [default to undefined] |

## Example

```typescript
import { CreateAccountInput } from '@affinidi-tdk/vault-data-manager-client'

const instance: CreateAccountInput = {
  accountIndex,
  accountDid,
  didProof,
  alias,
  metadata,
  description,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
