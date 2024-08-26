# ResourceCreationError

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
from affinidi_tdk_login_configuration_client.models.resource_creation_error import ResourceCreationError

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceCreationError from a JSON string
resource_creation_error_instance = ResourceCreationError.from_json(json)
# print the JSON string representation of the object
print ResourceCreationError.to_json()

# convert the object into a dict
resource_creation_error_dict = resource_creation_error_instance.to_dict()
# create an instance of ResourceCreationError from a dict
resource_creation_error_from_dict = ResourceCreationError.from_dict(resource_creation_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
