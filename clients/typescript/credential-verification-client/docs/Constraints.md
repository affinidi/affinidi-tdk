# Constraints

## Properties

| Name                  | Type                                               | Description | Notes                             |
| --------------------- | -------------------------------------------------- | ----------- | --------------------------------- |
| **limit_disclosure**  | **string**                                         |             | [optional] [default to undefined] |
| **statuses**          | [**ConstraintsStatuses**](ConstraintsStatuses.md)  |             | [optional] [default to undefined] |
| **fields**            | [**Array&lt;Field&gt;**](Field.md)                 |             | [optional] [default to undefined] |
| **subject_is_issuer** | **string**                                         |             | [optional] [default to undefined] |
| **is_holder**         | [**Array&lt;HolderSubject&gt;**](HolderSubject.md) |             | [optional] [default to undefined] |
| **same_subject**      | [**Array&lt;HolderSubject&gt;**](HolderSubject.md) |             | [optional] [default to undefined] |

## Example

```typescript
import { Constraints } from '@affinidi-tdk/credential-verification-client'

const instance: Constraints = {
  limit_disclosure,
  statuses,
  fields,
  subject_is_issuer,
  is_holder,
  same_subject,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
