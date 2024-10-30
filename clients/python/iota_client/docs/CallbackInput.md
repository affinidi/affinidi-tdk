# CallbackInput

## Properties

| Name                        | Type     | Description                                                                                                        | Notes      |
| --------------------------- | -------- | ------------------------------------------------------------------------------------------------------------------ | ---------- |
| **state**                   | **str**  | A string that must be a valid UUID (version 1-5).                                                                  |
| **presentation_submission** | **str**  | A string that must be a valid JSON object. The structure of presentation submission should follow OID4VP standard. | [optional] |
| **vp_token**                | **str**  | A string that must be a valid JSON object. Ensure to escape special characters properly..                          | [optional] |
| **error**                   | **str**  | The error should follow the OAuth2 error format (e.g. invalid_request, login_required). Defaults to access_denied  | [optional] |
| **error_description**       | **str**  | Description of the error in a human readable format                                                                | [optional] |
| **onboarded**               | **bool** | Specifies whether the Iota share triggered the creation of a Vault                                                 | [optional] |

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
