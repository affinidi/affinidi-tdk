# RedirectResponse

Redirect Response

## Properties

| Name     | Type    | Description        | Notes |
| -------- | ------- | ------------------ | ----- |
| **type** | **str** | type               |
| **to**   | **str** | URL to redirect to |

## Example

```python
from affinidi_tdk_login_configuration_client.models.redirect_response import RedirectResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RedirectResponse from a JSON string
redirect_response_instance = RedirectResponse.from_json(json)
# print the JSON string representation of the object
print RedirectResponse.to_json()

# convert the object into a dict
redirect_response_dict = redirect_response_instance.to_dict()
# create an instance of RedirectResponse from a dict
redirect_response_form_dict = redirect_response.from_dict(redirect_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
