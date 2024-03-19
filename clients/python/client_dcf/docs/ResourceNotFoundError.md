# ResourceNotFoundError

## Properties

| Name                 | Type      | Description | Notes      |
| -------------------- | --------- | ----------- | ---------- |
| **name**             | **str**   |             | [optional] |
| **message**          | **str**   |             | [optional] |
| **http_status_code** | **float** |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.resource_not_found_error import ResourceNotFoundError

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceNotFoundError from a JSON string
resource_not_found_error_instance = ResourceNotFoundError.from_json(json)
# print the JSON string representation of the object
print ResourceNotFoundError.to_json()

# convert the object into a dict
resource_not_found_error_dict = resource_not_found_error_instance.to_dict()
# create an instance of ResourceNotFoundError from a dict
resource_not_found_error_form_dict = resource_not_found_error.from_dict(resource_not_found_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
