# UpdateProjectInput

## Properties

| Name                            | Type        | Description                                                    | Notes                             |
| ------------------------------- | ----------- | -------------------------------------------------------------- | --------------------------------- |
| **name**                        | **string**  |                                                                | [optional] [default to undefined] |
| **description**                 | **string**  |                                                                | [optional] [default to undefined] |
| **identityVerificationEnabled** | **boolean** | flag indicates if identity verification is enabled for project | [optional] [default to undefined] |

## Example

```typescript
import { UpdateProjectInput } from '@affinidi-tdk/iam-client'

const instance: UpdateProjectInput = {
  name,
  description,
  identityVerificationEnabled,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
