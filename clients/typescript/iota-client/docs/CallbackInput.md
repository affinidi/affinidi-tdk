# CallbackInput

## Properties

| Name                        | Type        | Description                                                                                                                                                                             | Notes                             |
| --------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **state**                   | **string**  | A randomly generated string that follows a valid UUID (version 1-5) format to validate the session.                                                                                     | [default to undefined]            |
| **presentation_submission** | **string**  | A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard. | [optional] [default to undefined] |
| **vp_token**                | **string**  | A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.                                     | [optional] [default to undefined] |
| **response_code**           | **string**  | Used only for internal system flows. This field is not applicable for external client integrations and will not produce valid results when used outside of internal contexts.           | [optional] [default to undefined] |
| **error**                   | **string**  | A short string indicating the error code reported by the service. It follows the OAuth 2.0 error code format (e.g., invalid_request, access_denied). The default is access_denied.      | [optional] [default to undefined] |
| **error_description**       | **string**  | A human-readable description that provides detailed information about the error.                                                                                                        | [optional] [default to undefined] |
| **onboarded**               | **boolean** | It specifies whether the data sharing flow triggered an onboarding process to the Affinidi Vault [New User].                                                                            | [optional] [default to undefined] |

## Example

```typescript
import { CallbackInput } from '@affinidi-tdk/iota-client'

const instance: CallbackInput = {
  state,
  presentation_submission,
  vp_token,
  response_code,
  error,
  error_description,
  onboarded,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
