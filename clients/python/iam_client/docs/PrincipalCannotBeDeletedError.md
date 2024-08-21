# PrincipalCannotBeDeletedError

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
from affinidi_tdk_iam_client.models.principal_cannot_be_deleted_error import PrincipalCannotBeDeletedError

# TODO update the JSON string below
json = "{}"
# create an instance of PrincipalCannotBeDeletedError from a JSON string
principal_cannot_be_deleted_error_instance = PrincipalCannotBeDeletedError.from_json(json)
# print the JSON string representation of the object
print PrincipalCannotBeDeletedError.to_json()

# convert the object into a dict
principal_cannot_be_deleted_error_dict = principal_cannot_be_deleted_error_instance.to_dict()
# create an instance of PrincipalCannotBeDeletedError from a dict
principal_cannot_be_deleted_error_from_dict = PrincipalCannotBeDeletedError.from_dict(principal_cannot_be_deleted_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
