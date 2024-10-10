# CallbackResponseOKRedirectResponse

## Properties

| Name              | Type    | Description                                                       | Notes      |
| ----------------- | ------- | ----------------------------------------------------------------- | ---------- |
| **redirect_uri**  | **str** | the configured redirect url where vault will redirect             | [optional] |
| **response_code** | **str** | Code which will be used to retrieve data along with transactionId | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.callback_response_ok_redirect_response import CallbackResponseOKRedirectResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CallbackResponseOKRedirectResponse from a JSON string
callback_response_ok_redirect_response_instance = CallbackResponseOKRedirectResponse.from_json(json)
# print the JSON string representation of the object
print CallbackResponseOKRedirectResponse.to_json()

# convert the object into a dict
callback_response_ok_redirect_response_dict = callback_response_ok_redirect_response_instance.to_dict()
# create an instance of CallbackResponseOKRedirectResponse from a dict
callback_response_ok_redirect_response_from_dict = CallbackResponseOKRedirectResponse.from_dict(callback_response_ok_redirect_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
