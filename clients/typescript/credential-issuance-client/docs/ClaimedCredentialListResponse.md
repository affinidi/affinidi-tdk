# ClaimedCredentialListResponse

List of claimed credential

## Properties

| Name                 | Type                                     | Description                                 | Notes                             |
| -------------------- | ---------------------------------------- | ------------------------------------------- | --------------------------------- |
| **credentials**      | **Array&lt;{ [key: string]: any; }&gt;** | list of credentials                         | [optional] [default to undefined] |
| **lastEvaluatedKey** | **string**                               | for pagination to fetch next set of records | [optional] [default to undefined] |

## Example

```typescript
import { ClaimedCredentialListResponse } from '@affinidi-tdk/credential-issuance-client'

const instance: ClaimedCredentialListResponse = {
  credentials,
  lastEvaluatedKey,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
