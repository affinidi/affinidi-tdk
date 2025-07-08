# MoveNodeInput

## Properties

| Name                                  | Type        | Description                                                                                                                                     | Notes                         |
| ------------------------------------- | ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------- |
| **destinationNodeId**                 | **string**  | Parent to which current node should be moved                                                                                                    | [default to undefined]        |
| **resolveNameConflictsAutomatically** | **boolean** | automatically update the name of Node if target Node has children with the same name. If not provided, name won\&#39;t be updated automatically | [optional] [default to false] |

## Example

```typescript
import { MoveNodeInput } from '@affinidi-tdk/vault-data-manager-client'

const instance: MoveNodeInput = {
  destinationNodeId,
  resolveNameConflictsAutomatically,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
