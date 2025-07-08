# LoginConfigurationClientMetadataInput

login configuration client metadata

## Properties

| Name       | Type       | Description                                             | Notes                  |
| ---------- | ---------- | ------------------------------------------------------- | ---------------------- |
| **name**   | **string** | application name that will be displayed in consent page | [default to undefined] |
| **origin** | **string** | origin url that will be displayed in consent page       | [default to undefined] |
| **logo**   | **string** | logo url that will be displayed in consent page         | [default to undefined] |

## Example

```typescript
import { LoginConfigurationClientMetadataInput } from '@affinidi-tdk/login-configuration-client'

const instance: LoginConfigurationClientMetadataInput = {
  name,
  origin,
  logo,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
