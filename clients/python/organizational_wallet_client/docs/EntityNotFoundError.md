# EntityNotFoundError

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
from affinidi_tdk_organizational_wallet_client.models.entity_not_found_error import EntityNotFoundError

# TODO update the JSON string below
json = "{}"
# create an instance of EntityNotFoundError from a JSON string
entity_not_found_error_instance = EntityNotFoundError.from_json(json)
# print the JSON string representation of the object
print EntityNotFoundError.to_json()

# convert the object into a dict
entity_not_found_error_dict = entity_not_found_error_instance.to_dict()
# create an instance of EntityNotFoundError from a dict
entity_not_found_error_form_dict = entity_not_found_error.from_dict(entity_not_found_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
