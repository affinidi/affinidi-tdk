# ValidateJwtOutput

Response model of /validate-jwt

## Properties

| Name        | Type        | Description                  | Notes                  |
| ----------- | ----------- | ---------------------------- | ---------------------- |
| **isValid** | **boolean** | Defines if jwt is valid      | [default to undefined] |
| **payload** | **object**  | Decoded payload of the token | [default to undefined] |

## Example

```typescript
import { ValidateJwtOutput } from '@affinidi-tdk/credential-verification-client'

const instance: ValidateJwtOutput = {
  isValid,
  payload,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
