# FlowDataStatusListsDetailsInner

## Properties

| Name                       | Type        | Description                                                         | Notes                             |
| -------------------------- | ----------- | ------------------------------------------------------------------- | --------------------------------- |
| **statusListPurpose**      | **string**  | Purpose of status list to which credential is added                 | [default to undefined]            |
| **statusListId**           | **string**  | id of status list                                                   | [default to undefined]            |
| **statusListIndex**        | **string**  | as usual it is a number, but all standards use a string             | [default to undefined]            |
| **standard**               | **string**  |                                                                     | [default to undefined]            |
| **isActive**               | **boolean** | indicates status is true or not. Default false.                     | [default to undefined]            |
| **statusActivationReason** | **string**  | text reasoning why the status is true (if true). Optional.          | [optional] [default to undefined] |
| **statusActivatedAt**      | **string**  | ISO 8601 string of the modification date/time the status. Optional. | [optional] [default to undefined] |

## Example

```typescript
import { FlowDataStatusListsDetailsInner } from '@affinidi-tdk/credential-issuance-client'

const instance: FlowDataStatusListsDetailsInner = {
  statusListPurpose,
  statusListId,
  statusListIndex,
  standard,
  isActive,
  statusActivationReason,
  statusActivatedAt,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
