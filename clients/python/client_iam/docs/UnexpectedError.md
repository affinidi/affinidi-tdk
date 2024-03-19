# UnexpectedError

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
from affinidi_tdk_client_iam.models.unexpected_error import UnexpectedError

# TODO update the JSON string below
json = "{}"
# create an instance of UnexpectedError from a JSON string
unexpected_error_instance = UnexpectedError.from_json(json)
# print the JSON string representation of the object
print UnexpectedError.to_json()

# convert the object into a dict
unexpected_error_dict = unexpected_error_instance.to_dict()
# create an instance of UnexpectedError from a dict
unexpected_error_form_dict = unexpected_error.from_dict(unexpected_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
