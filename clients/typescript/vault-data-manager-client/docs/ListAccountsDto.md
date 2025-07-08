# ListAccountsDto

## Properties

| Name                 | Type                                         | Description | Notes                             |
| -------------------- | -------------------------------------------- | ----------- | --------------------------------- |
| **records**          | [**Array&lt;AccountDto&gt;**](AccountDto.md) |             | [default to undefined]            |
| **lastEvaluatedKey** | **string**                                   |             | [optional] [default to undefined] |

## Example

```typescript
import { ListAccountsDto } from '@affinidi-tdk/vault-data-manager-client'

const instance: ListAccountsDto = {
  records,
  lastEvaluatedKey,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
