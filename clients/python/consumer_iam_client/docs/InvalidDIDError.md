# InvalidDIDError

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[InvalidJwtTokenErrorDetailsInner]**](InvalidJwtTokenErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_consumer_iam_client.models.invalid_did_error import InvalidDIDError

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidDIDError from a JSON string
invalid_did_error_instance = InvalidDIDError.from_json(json)
# print the JSON string representation of the object
print InvalidDIDError.to_json()

# convert the object into a dict
invalid_did_error_dict = invalid_did_error_instance.to_dict()
# create an instance of InvalidDIDError from a dict
invalid_did_error_from_dict = InvalidDIDError.from_dict(invalid_did_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
