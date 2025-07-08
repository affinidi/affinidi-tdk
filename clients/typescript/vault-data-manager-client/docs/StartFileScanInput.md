# StartFileScanInput

## Properties

| Name    | Type       | Description                                                                                                                                                                 | Notes                  |
| ------- | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **dek** | **string** | A base64 encoded data encryption key, encrypted using VFS public key. This is important as this is used when starting document scan and also while uploading the file to s3 | [default to undefined] |

## Example

```typescript
import { StartFileScanInput } from '@affinidi-tdk/vault-data-manager-client'

const instance: StartFileScanInput = {
  dek,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
