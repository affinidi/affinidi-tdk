# ItemAlreadyExistsError

## Properties

| Name                 | Type      | Description | Notes      |
| -------------------- | --------- | ----------- | ---------- |
| **name**             | **str**   |             | [optional] |
| **message**          | **str**   |             | [optional] |
| **http_status_code** | **float** |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.item_already_exists_error import ItemAlreadyExistsError

# TODO update the JSON string below
json = "{}"
# create an instance of ItemAlreadyExistsError from a JSON string
item_already_exists_error_instance = ItemAlreadyExistsError.from_json(json)
# print the JSON string representation of the object
print ItemAlreadyExistsError.to_json()

# convert the object into a dict
item_already_exists_error_dict = item_already_exists_error_instance.to_dict()
# create an instance of ItemAlreadyExistsError from a dict
item_already_exists_error_form_dict = item_already_exists_error.from_dict(item_already_exists_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
