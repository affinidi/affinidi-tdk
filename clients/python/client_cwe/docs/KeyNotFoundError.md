# KeyNotFoundError

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ServiceErrorResponseDetailsInner]**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_cwe.models.key_not_found_error import KeyNotFoundError

# TODO update the JSON string below
json = "{}"
# create an instance of KeyNotFoundError from a JSON string
key_not_found_error_instance = KeyNotFoundError.from_json(json)
# print the JSON string representation of the object
print KeyNotFoundError.to_json()

# convert the object into a dict
key_not_found_error_dict = key_not_found_error_instance.to_dict()
# create an instance of KeyNotFoundError from a dict
key_not_found_error_form_dict = key_not_found_error.from_dict(key_not_found_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
