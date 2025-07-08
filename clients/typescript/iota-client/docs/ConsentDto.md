# ConsentDto

## Properties

| Name           | Type       | Description                                                                                                                           | Notes                  |
| -------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **projectId**  | **string** | The ID of the project.                                                                                                                | [default to undefined] |
| **id**         | **string** | Unique identifier for the record.                                                                                                     | [default to undefined] |
| **userId**     | **string** | Unique identifier for the user.                                                                                                       | [default to undefined] |
| **vcType**     | **string** | Type of the VC shared by the user. It creates a consent record for each VC type shared except for the base type VerifiableCredential. | [default to undefined] |
| **status**     | **string** | Status of the consent.                                                                                                                | [default to undefined] |
| **modifiedAt** | **string** |                                                                                                                                       | [default to undefined] |
| **modifiedBy** | **string** |                                                                                                                                       | [default to undefined] |
| **createdAt**  | **string** |                                                                                                                                       | [default to undefined] |
| **createdBy**  | **string** |                                                                                                                                       | [default to undefined] |

## Example

```typescript
import { ConsentDto } from '@affinidi-tdk/iota-client'

const instance: ConsentDto = {
  projectId,
  id,
  userId,
  vcType,
  status,
  modifiedAt,
  modifiedBy,
  createdAt,
  createdBy,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
