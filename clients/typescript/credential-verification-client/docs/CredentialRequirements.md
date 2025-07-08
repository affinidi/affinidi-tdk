# CredentialRequirements

Requirements of the VC

## Properties

| Name            | Type                                                                          | Description                      | Notes                             |
| --------------- | ----------------------------------------------------------------------------- | -------------------------------- | --------------------------------- |
| **type**        | **Array&lt;string&gt;**                                                       | Type list of the VC requirements | [default to undefined]            |
| **constraints** | [**CredentialRequirementsConstraints**](CredentialRequirementsConstraints.md) |                                  | [optional] [default to undefined] |

## Example

```typescript
import { CredentialRequirements } from '@affinidi-tdk/credential-verification-client'

const instance: CredentialRequirements = {
  type,
  constraints,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
