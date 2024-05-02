# Error

Error object

## Properties

| Name              | Type                                    | Description      | Notes      |
| ----------------- | --------------------------------------- | ---------------- | ---------- |
| **error_code**    | **str**                                 | Error code       | [optional] |
| **error_message** | **str**                                 | Error message    | [optional] |
| **message**       | **str**                                 | Verbose message  | [optional] |
| **name**          | **str**                                 | Error name       | [optional] |
| **debug_id**      | **str**                                 | Debug identifier | [optional] |
| **details**       | [**List[ErrorDetail]**](ErrorDetail.md) | Error details    | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.error import Error

# TODO update the JSON string below
json = "{}"
# create an instance of Error from a JSON string
error_instance = Error.from_json(json)
# print the JSON string representation of the object
print Error.to_json()

# convert the object into a dict
error_dict = error_instance.to_dict()
# create an instance of Error from a dict
error_form_dict = error.from_dict(error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
