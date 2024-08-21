# AlreadyExistsError

## Properties

| Name                 | Type                                                                                | Description | Notes      |
| -------------------- | ----------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                             |             |
| **message**          | **str**                                                                             |             |
| **http_status_code** | **float**                                                                           |             |
| **trace_id**         | **str**                                                                             |             |
| **details**          | [**List[InvalidParameterErrorDetailsInner]**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.already_exists_error import AlreadyExistsError

# TODO update the JSON string below
json = "{}"
# create an instance of AlreadyExistsError from a JSON string
already_exists_error_instance = AlreadyExistsError.from_json(json)
# print the JSON string representation of the object
print AlreadyExistsError.to_json()

# convert the object into a dict
already_exists_error_dict = already_exists_error_instance.to_dict()
# create an instance of AlreadyExistsError from a dict
already_exists_error_from_dict = AlreadyExistsError.from_dict(already_exists_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
