# PatchAccountInput

## Properties

| Name                | Type       | Description                                                                                                   | Notes                  |
| ------------------- | ---------- | ------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **didProof**        | **string** | JWT that proves ownership of profile DID by requester                                                         | [default to undefined] |
| **encryptedDekek**  | **string** | A base64 encoded data encryption key, encrypted using VFS public key, required for PATCH operation on account | [default to undefined] |
| **ownerProfileId**  | **string** | A unique identifier of profile, required for PATCH operation on account                                       | [default to undefined] |
| **ownerProfileDid** | **string** | DID that is associated with the profile, required for PATCH operation on account                              | [default to undefined] |

## Example

```typescript
import { PatchAccountInput } from '@affinidi-tdk/vault-data-manager-client'

const instance: PatchAccountInput = {
  didProof,
  encryptedDekek,
  ownerProfileId,
  ownerProfileDid,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
