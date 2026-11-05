# IdentityMappingError

## Properties

| Name                 | Type                                                                    | Description | Notes      |
| -------------------- | ----------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                 |             |
| **message**          | **str**                                                                 |             |
| **http_status_code** | **float**                                                               |             |
| **trace_id**         | **str**                                                                 |             |
| **details**          | [**List[UnexpectedErrorDetailsInner]**](UnexpectedErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.identity_mapping_error import IdentityMappingError

# TODO update the JSON string below
json = "{}"
# create an instance of IdentityMappingError from a JSON string
identity_mapping_error_instance = IdentityMappingError.from_json(json)
# print the JSON string representation of the object
print IdentityMappingError.to_json()

# convert the object into a dict
identity_mapping_error_dict = identity_mapping_error_instance.to_dict()
# create an instance of IdentityMappingError from a dict
identity_mapping_error_from_dict = IdentityMappingError.from_dict(identity_mapping_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
