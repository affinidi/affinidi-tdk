# PartialProfileNodeDto

## Properties

| Name                | Type       | Description                                                  | Notes                             |
| ------------------- | ---------- | ------------------------------------------------------------ | --------------------------------- |
| **id**              | **string** | A unique identifier of the profile node                      | [default to undefined]            |
| **name**            | **string** | display name of the profile node                             | [default to undefined]            |
| **description**     | **string** | Description of the profile node                              | [optional] [default to undefined] |
| **accountIndex**    | **number** | number that is used for profile DID derivation               | [default to undefined]            |
| **profileMetadata** | **string** | A JSON string format containing metadata of the profile node | [optional] [default to undefined] |
| **accountMetadata** | **string** | A JSON string format containing metadata of the account      | [optional] [default to undefined] |

## Example

```typescript
import { PartialProfileNodeDto } from '@affinidi-tdk/vault-data-manager-client'

const instance: PartialProfileNodeDto = {
  id,
  name,
  description,
  accountIndex,
  profileMetadata,
  accountMetadata,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
