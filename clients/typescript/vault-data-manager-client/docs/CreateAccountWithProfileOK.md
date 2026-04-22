# CreateAccountWithProfileOK

## Properties

| Name                | Type       | Description                                                | Notes                             |
| ------------------- | ---------- | ---------------------------------------------------------- | --------------------------------- |
| **accountIndex**    | **number** |                                                            | [default to undefined]            |
| **accountDid**      | **string** | number that is used for profile DID derivation             | [default to undefined]            |
| **profileId**       | **string** | A unique, randomly generated identifier of created profile | [default to undefined]            |
| **accountMetadata** | **object** | Metadata of account                                        | [optional] [default to undefined] |

## Example

```typescript
import { CreateAccountWithProfileOK } from '@affinidi-tdk/vault-data-manager-client'

const instance: CreateAccountWithProfileOK = {
  accountIndex,
  accountDid,
  profileId,
  accountMetadata,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
