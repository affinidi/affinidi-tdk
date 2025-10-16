# CallbackInput

## Properties

| Name                        | Type     | Description                                                                                                                                                                             | Notes      |
| --------------------------- | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **state**                   | **str**  | A randomly generated string that follows a valid UUID (version 1-5) format to validate the session.                                                                                     |
| **presentation_submission** | **str**  | A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard. | [optional] |
| **vp_token**                | **str**  | A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.                                     | [optional] |
| **response_code**           | **str**  | Used only for internal system flows. This field is not applicable for external client integrations and will not produce valid results when used outside of internal contexts.           | [optional] |
| **error**                   | **str**  | A short string indicating the error code reported by the service. It follows the OAuth 2.0 error code format (e.g., invalid_request, access_denied). The default is access_denied.      | [optional] |
| **error_description**       | **str**  | A human-readable description that provides detailed information about the error.                                                                                                        | [optional] |
| **onboarded**               | **bool** | It specifies whether the data sharing flow triggered an onboarding process to the Affinidi Vault [New User].                                                                            | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.callback_input import CallbackInput

# TODO update the JSON string below
json = "{}"
# create an instance of CallbackInput from a JSON string
callback_input_instance = CallbackInput.from_json(json)
# print the JSON string representation of the object
print CallbackInput.to_json()

# convert the object into a dict
callback_input_dict = callback_input_instance.to_dict()
# create an instance of CallbackInput from a dict
callback_input_from_dict = CallbackInput.from_dict(callback_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
