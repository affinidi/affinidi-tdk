# GetScannedFileInfoOK

## Properties

| Name                  | Type       | Description                                                                                                                                                    | Notes                             |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **data**              | **object** |                                                                                                                                                                | [default to undefined]            |
| **jobId**             | **string** | A unique, randomly generated idetifier                                                                                                                         | [default to undefined]            |
| **status**            | **string** | Status of the file scanning once initiated                                                                                                                     | [default to undefined]            |
| **profileId**         | **string** | A unique, randomly generated identifier                                                                                                                        | [default to undefined]            |
| **exclusiveStartKey** | **string** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to undefined] |
| **nodeId**            | **string** | A unique, randomly generated identifier                                                                                                                        | [default to undefined]            |
| **createdAt**         | **string** |                                                                                                                                                                | [default to undefined]            |
| **name**              | **string** |                                                                                                                                                                | [default to undefined]            |

## Example

```typescript
import { GetScannedFileInfoOK } from '@affinidi-tdk/vault-data-manager-client'

const instance: GetScannedFileInfoOK = {
  data,
  jobId,
  status,
  profileId,
  exclusiveStartKey,
  nodeId,
  createdAt,
  name,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
