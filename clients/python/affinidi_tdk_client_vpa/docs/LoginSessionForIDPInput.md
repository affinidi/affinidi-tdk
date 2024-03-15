# LoginSessionForIDPInput

Input for Creating a Login Session

## Properties

| Name                | Type    | Description                                       | Notes |
| ------------------- | ------- | ------------------------------------------------- | ----- |
| **login_challenge** | **str** | IDP Login Challenge to Associate the Session with |
| **client_id**       | **str** | IDP client id to Associate the Session with       |

## Example

```python
from affinidi_tdk_client_vpa.models.login_session_for_idp_input import LoginSessionForIDPInput

# TODO update the JSON string below
json = "{}"
# create an instance of LoginSessionForIDPInput from a JSON string
login_session_for_idp_input_instance = LoginSessionForIDPInput.from_json(json)
# print the JSON string representation of the object
print LoginSessionForIDPInput.to_json()

# convert the object into a dict
login_session_for_idp_input_dict = login_session_for_idp_input_instance.to_dict()
# create an instance of LoginSessionForIDPInput from a dict
login_session_for_idp_input_form_dict = login_session_for_idp_input.from_dict(login_session_for_idp_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
