# EdekInfo

A base64 encoded data encryption key, encrypted with consumer DEKEK, required for node types [FILE, PROFILE]

## Properties

| Name        | Type       | Description | Notes                  |
| ----------- | ---------- | ----------- | ---------------------- |
| **edek**    | **string** |             | [default to undefined] |
| **dekekId** | **string** |             | [default to undefined] |

## Example

```typescript
import { EdekInfo } from '@affinidi-tdk/vault-data-manager-client'

const instance: EdekInfo = {
  edek,
  dekekId,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
