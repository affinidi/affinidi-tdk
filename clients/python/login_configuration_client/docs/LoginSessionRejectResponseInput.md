# LoginSessionRejectResponseInput

Authorization Response per OpenID for Verifiable Presentations Specification

## Properties

| Name                  | Type    | Description                                                                                                        | Notes      |
| --------------------- | ------- | ------------------------------------------------------------------------------------------------------------------ | ---------- |
| **error**             | **str** | The error should follow the OAuth2 error format (e.g. invalid_request, login_required). Defaults to request_denied | [optional] |
| **error_description** | **str** | Description of the error in a human readable format                                                                | [optional] |
| **state**             | **str** | Random state associated to the Session                                                                             |

## Example

```python
from affinidi_tdk_login_configuration_client.models.login_session_reject_response_input import LoginSessionRejectResponseInput

# TODO update the JSON string below
json = "{}"
# create an instance of LoginSessionRejectResponseInput from a JSON string
login_session_reject_response_input_instance = LoginSessionRejectResponseInput.from_json(json)
# print the JSON string representation of the object
print LoginSessionRejectResponseInput.to_json()

# convert the object into a dict
login_session_reject_response_input_dict = login_session_reject_response_input_instance.to_dict()
# create an instance of LoginSessionRejectResponseInput from a dict
login_session_reject_response_input_form_dict = login_session_reject_response_input.from_dict(login_session_reject_response_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
