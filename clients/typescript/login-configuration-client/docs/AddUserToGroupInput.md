# AddUserToGroupInput

input used to add a user to a group

## Properties

| Name            | Type       | Description                   | Notes                             |
| --------------- | ---------- | ----------------------------- | --------------------------------- |
| **name**        | **string** |                               | [optional] [default to undefined] |
| **description** | **string** |                               | [optional] [default to undefined] |
| **userId**      | **string** | Unique identifier of the user | [default to undefined]            |

## Example

```typescript
import { AddUserToGroupInput } from '@affinidi-tdk/login-configuration-client'

const instance: AddUserToGroupInput = {
  name,
  description,
  userId,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
