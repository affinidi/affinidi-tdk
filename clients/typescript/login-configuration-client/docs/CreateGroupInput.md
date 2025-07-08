# CreateGroupInput

## Properties

| Name            | Type       | Description                                | Notes                             |
| --------------- | ---------- | ------------------------------------------ | --------------------------------- |
| **groupName**   | **string** | name of the group for users, used as an id | [default to undefined]            |
| **name**        | **string** |                                            | [optional] [default to undefined] |
| **description** | **string** |                                            | [optional] [default to undefined] |

## Example

```typescript
import { CreateGroupInput } from '@affinidi-tdk/login-configuration-client'

const instance: CreateGroupInput = {
  groupName,
  name,
  description,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
