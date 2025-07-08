# UpdateAccountInput

## Properties

| Name            | Type       | Description                                           | Notes                             |
| --------------- | ---------- | ----------------------------------------------------- | --------------------------------- |
| **name**        | **string** | Name of the account                                   | [optional] [default to undefined] |
| **description** | **string** | Description of the account                            | [optional] [default to undefined] |
| **alias**       | **string** | Alias of the account                                  | [optional] [default to undefined] |
| **didProof**    | **string** | JWT that proves ownership of profile DID by requester | [default to undefined]            |
| **metadata**    | **object** | Description of metadata                               | [optional] [default to undefined] |
| **accountDid**  | **string** | DID that is associated with the account number        | [default to undefined]            |

## Example

```typescript
import { UpdateAccountInput } from '@affinidi-tdk/vault-data-manager-client'

const instance: UpdateAccountInput = {
  name,
  description,
  alias,
  didProof,
  metadata,
  accountDid,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
