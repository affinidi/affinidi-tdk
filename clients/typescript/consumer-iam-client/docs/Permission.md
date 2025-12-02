# Permission

## Properties

| Name          | Type                                         | Description | Notes                             |
| ------------- | -------------------------------------------- | ----------- | --------------------------------- |
| **rights**    | [**Array&lt;RightsEnum&gt;**](RightsEnum.md) |             | [default to undefined]            |
| **nodeIds**   | **Array&lt;string&gt;**                      |             | [default to undefined]            |
| **expiresAt** | **string**                                   |             | [optional] [default to undefined] |

## Example

```typescript
import { Permission } from '@affinidi-tdk/consumer-iam-client'

const instance: Permission = {
  rights,
  nodeIds,
  expiresAt,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
