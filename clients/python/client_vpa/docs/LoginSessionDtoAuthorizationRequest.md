# LoginSessionDtoAuthorizationRequest

## Properties

| Name                        | Type    | Description                                                             | Notes      |
| --------------------------- | ------- | ----------------------------------------------------------------------- | ---------- |
| **state**                   | **str** | State parameter                                                         |
| **presentation_definition** | **str** | Presentation Definition to ask from the user. In JSON Stringify format. |
| **ari**                     | **str** | ARI is used for analytics proposals.                                    | [optional] |
| **client_id**               | **str** | clientId used for detect origin.                                        | [optional] |

## Example

```python
from affinidi_tdk_client_vpa.models.login_session_dto_authorization_request import LoginSessionDtoAuthorizationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LoginSessionDtoAuthorizationRequest from a JSON string
login_session_dto_authorization_request_instance = LoginSessionDtoAuthorizationRequest.from_json(json)
# print the JSON string representation of the object
print LoginSessionDtoAuthorizationRequest.to_json()

# convert the object into a dict
login_session_dto_authorization_request_dict = login_session_dto_authorization_request_instance.to_dict()
# create an instance of LoginSessionDtoAuthorizationRequest from a dict
login_session_dto_authorization_request_form_dict = login_session_dto_authorization_request.from_dict(login_session_dto_authorization_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
