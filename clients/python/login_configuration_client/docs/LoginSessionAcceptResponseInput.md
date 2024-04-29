# LoginSessionAcceptResponseInput

Authorization Response per OpenID for Verifiable Presentations Specification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

## Example

```python
from affinidi_tdk_login_configuration_client.models.login_session_accept_response_input import LoginSessionAcceptResponseInput

# TODO update the JSON string below
json = "{}"
# create an instance of LoginSessionAcceptResponseInput from a JSON string
login_session_accept_response_input_instance = LoginSessionAcceptResponseInput.from_json(json)
# print the JSON string representation of the object
print LoginSessionAcceptResponseInput.to_json()

# convert the object into a dict
login_session_accept_response_input_dict = login_session_accept_response_input_instance.to_dict()
# create an instance of LoginSessionAcceptResponseInput from a dict
login_session_accept_response_input_form_dict = login_session_accept_response_input.from_dict(login_session_accept_response_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
