# ProjectDto

## Properties

| Name            | Type       | Description                                                            | Notes                             |
| --------------- | ---------- | ---------------------------------------------------------------------- | --------------------------------- |
| **id**          | **string** |                                                                        | [default to undefined]            |
| **name**        | **string** |                                                                        | [default to undefined]            |
| **ownerId**     | **string** |                                                                        | [optional] [default to undefined] |
| **description** | **string** |                                                                        | [optional] [default to undefined] |
| **createdAt**   | **string** | creation date and time in ISO-8601 format, e.g. 2023-09-20T07:12:13    | [optional] [default to undefined] |
| **updatedAt**   | **string** | last update date and time in ISO-8601 format, e.g. 2023-09-20T07:12:13 | [optional] [default to undefined] |

## Example

```typescript
import { ProjectDto } from '@affinidi-tdk/iam-client'

const instance: ProjectDto = {
  id,
  name,
  ownerId,
  description,
  createdAt,
  updatedAt,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
