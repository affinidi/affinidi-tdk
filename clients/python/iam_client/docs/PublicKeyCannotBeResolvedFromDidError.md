# PublicKeyCannotBeResolvedFromDidError

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
from affinidi_tdk_iam_client.models.public_key_cannot_be_resolved_from_did_error import PublicKeyCannotBeResolvedFromDidError

# TODO update the JSON string below
json = "{}"
# create an instance of PublicKeyCannotBeResolvedFromDidError from a JSON string
public_key_cannot_be_resolved_from_did_error_instance = PublicKeyCannotBeResolvedFromDidError.from_json(json)
# print the JSON string representation of the object
print PublicKeyCannotBeResolvedFromDidError.to_json()

# convert the object into a dict
public_key_cannot_be_resolved_from_did_error_dict = public_key_cannot_be_resolved_from_did_error_instance.to_dict()
# create an instance of PublicKeyCannotBeResolvedFromDidError from a dict
public_key_cannot_be_resolved_from_did_error_from_dict = PublicKeyCannotBeResolvedFromDidError.from_dict(public_key_cannot_be_resolved_from_did_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
