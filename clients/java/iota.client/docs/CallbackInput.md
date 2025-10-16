# CallbackInput

## Properties

| Name                       | Type        | Description                                                                                                                                                                             | Notes      |
| -------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **state**                  | **String**  | A randomly generated string that follows a valid UUID (version 1-5) format to validate the session.                                                                                     |            |
| **presentationSubmission** | **String**  | A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard. | [optional] |
| **vpToken**                | **String**  | A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.                                     | [optional] |
| **responseCode**           | **String**  | Used only for internal system flows. This field is not applicable for external client integrations and will not produce valid results when used outside of internal contexts.           | [optional] |
| **error**                  | **String**  | A short string indicating the error code reported by the service. It follows the OAuth 2.0 error code format (e.g., invalid_request, access_denied). The default is access_denied.      | [optional] |
| **errorDescription**       | **String**  | A human-readable description that provides detailed information about the error.                                                                                                        | [optional] |
| **onboarded**              | **Boolean** | It specifies whether the data sharing flow triggered an onboarding process to the Affinidi Vault [New User].                                                                            | [optional] |
