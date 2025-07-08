# PresentationDefinition

Presentation definition

## Properties

| Name                        | Type                                                               | Description        | Notes                             |
| --------------------------- | ------------------------------------------------------------------ | ------------------ | --------------------------------- |
| **id**                      | **string**                                                         | Definition id      | [default to undefined]            |
| **name**                    | **string**                                                         | Definition name    | [optional] [default to undefined] |
| **purpose**                 | **string**                                                         | Definition purpose | [optional] [default to undefined] |
| **format**                  | [**Format**](Format.md)                                            |                    | [optional] [default to undefined] |
| **submission_requirements** | [**Array&lt;SubmissionRequirement&gt;**](SubmissionRequirement.md) |                    | [optional] [default to undefined] |
| **input_descriptors**       | [**Array&lt;InputDescriptor&gt;**](InputDescriptor.md)             |                    | [default to undefined]            |
| **frame**                   | **{ [key: string]: any; }**                                        | Dynamic model      | [optional] [default to undefined] |

## Example

```typescript
import { PresentationDefinition } from '@affinidi-tdk/credential-verification-client'

const instance: PresentationDefinition = {
  id,
  name,
  purpose,
  format,
  submission_requirements,
  input_descriptors,
  frame,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
