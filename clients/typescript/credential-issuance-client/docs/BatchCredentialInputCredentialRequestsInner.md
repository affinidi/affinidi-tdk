# BatchCredentialInputCredentialRequestsInner

## Properties

| Name                      | Type                                      | Description                                                                       | Notes                             |
| ------------------------- | ----------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------- |
| **credential_identifier** | **string**                                | It is a String that identifies a Credential that is being requested to be issued. | [optional] [default to undefined] |
| **proof**                 | [**CredentialProof**](CredentialProof.md) |                                                                                   | [default to undefined]            |

## Example

```typescript
import { BatchCredentialInputCredentialRequestsInner } from '@affinidi-tdk/credential-issuance-client'

const instance: BatchCredentialInputCredentialRequestsInner = {
  credential_identifier,
  proof,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
