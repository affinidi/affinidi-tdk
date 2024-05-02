# LoginSessionDto

## Properties

| Name                      | Type                                                                              | Description                | Notes |
| ------------------------- | --------------------------------------------------------------------------------- | -------------------------- | ----- |
| **id**                    | **str**                                                                           | Session primary identifier |
| **authorization_request** | [**LoginSessionDtoAuthorizationRequest**](LoginSessionDtoAuthorizationRequest.md) |                            |

## Example

```python
from affinidi_tdk_login_configuration_client.models.login_session_dto import LoginSessionDto

# TODO update the JSON string below
json = "{}"
# create an instance of LoginSessionDto from a JSON string
login_session_dto_instance = LoginSessionDto.from_json(json)
# print the JSON string representation of the object
print LoginSessionDto.to_json()

# convert the object into a dict
login_session_dto_dict = login_session_dto_instance.to_dict()
# create an instance of LoginSessionDto from a dict
login_session_dto_form_dict = login_session_dto.from_dict(login_session_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
