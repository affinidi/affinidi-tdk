# CallbackResponseOK

## Properties

| Name                  | Type                                                                            | Description                                          | Notes      |
| --------------------- | ------------------------------------------------------------------------------- | ---------------------------------------------------- | ---------- |
| **message**           | **str**                                                                         | A message to vault that flow is updated successfully |
| **redirect_response** | [**CallbackResponseOKRedirectResponse**](CallbackResponseOKRedirectResponse.md) |                                                      | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.callback_response_ok import CallbackResponseOK

# TODO update the JSON string below
json = "{}"
# create an instance of CallbackResponseOK from a JSON string
callback_response_ok_instance = CallbackResponseOK.from_json(json)
# print the JSON string representation of the object
print CallbackResponseOK.to_json()

# convert the object into a dict
callback_response_ok_dict = callback_response_ok_instance.to_dict()
# create an instance of CallbackResponseOK from a dict
callback_response_ok_from_dict = CallbackResponseOK.from_dict(callback_response_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
