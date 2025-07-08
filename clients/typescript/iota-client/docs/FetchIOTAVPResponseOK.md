# FetchIOTAVPResponseOK

## Properties

| Name                        | Type       | Description                                                                                                                                                                             | Notes                             |
| --------------------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------- |
| **correlationId**           | **string** | A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.                                                                      | [optional] [default to undefined] |
| **presentation_submission** | **string** | A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard. | [optional] [default to undefined] |
| **vp_token**                | **string** | A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.                                     | [optional] [default to undefined] |

## Example

```typescript
import { FetchIOTAVPResponseOK } from '@affinidi-tdk/iota-client'

const instance: FetchIOTAVPResponseOK = {
  correlationId,
  presentation_submission,
  vp_token,
}
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
