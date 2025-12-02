# VerifyCredentialV2Input

Request model of /v2/verify-vcs

## Properties

| Name       | Type                                     | Description            | Notes                             |
| ---------- | ---------------------------------------- | ---------------------- | --------------------------------- |
| **jwtVcs** | **Array&lt;string&gt;**                  | List of JWT VC strings | [optional] [default to undefined] |
| **ldpVcs** | **Array&lt;{ [key: string]: any; }&gt;** | List of LDP VC objects | [optional] [default to undefined] |

## Example

```typescript
import { VerifyCredentialV2Input } from '@affinidi-tdk/credential-verification-client'

const instance: VerifyCredentialV2Input = {
  jwtVcs,
  ldpVcs,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
