# CreateAccountWithProfileInput

## Properties

| Name                   | Type                        | Description                                                          | Notes                             |
| ---------------------- | --------------------------- | -------------------------------------------------------------------- | --------------------------------- |
| **accountIndex**       | **number**                  | number that is used for profile DID derivation                       | [default to undefined]            |
| **accountDid**         | **string**                  | DID that is associated with the account number                       | [default to undefined]            |
| **didProof**           | **string**                  | JWT that proves ownership of profile DID by requester                | [default to undefined]            |
| **alias**              | **string**                  | Alias of account                                                     | [optional] [default to undefined] |
| **accountMetadata**    | **object**                  | Metadata of account                                                  | [optional] [default to undefined] |
| **accountDescription** | **string**                  | Description of account                                               | [optional] [default to undefined] |
| **profileName**        | **string**                  | Name of the profile node                                             | [default to undefined]            |
| **profileDescription** | **string**                  | Description of the profile node                                      | [optional] [default to undefined] |
| **profileMetadata**    | **object**                  | Metadata of the profile                                              | [optional] [default to undefined] |
| **edekInfo**           | [**EdekInfo**](EdekInfo.md) |                                                                      | [default to undefined]            |
| **dek**                | **string**                  | A base64 encoded data encryption key, encrypted using VFS public key | [default to undefined]            |

## Example

```typescript
import { CreateAccountWithProfileInput } from '@affinidi-tdk/vault-data-manager-client'

const instance: CreateAccountWithProfileInput = {
  accountIndex,
  accountDid,
  didProof,
  alias,
  accountMetadata,
  accountDescription,
  profileName,
  profileDescription,
  profileMetadata,
  edekInfo,
  dek,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
