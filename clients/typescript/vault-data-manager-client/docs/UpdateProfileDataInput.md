# UpdateProfileDataInput

## Properties

| Name     | Type       | Description                                                                                                    | Notes                  |
| -------- | ---------- | -------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **dek**  | **string** | A base64 encoded data encryption key, encrypted using VFS public key. This is used to get profile data from s3 | [default to undefined] |
| **data** | **object** |                                                                                                                | [default to undefined] |

## Example

```typescript
import { UpdateProfileDataInput } from '@affinidi-tdk/vault-data-manager-client'

const instance: UpdateProfileDataInput = {
  dek,
  data,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
