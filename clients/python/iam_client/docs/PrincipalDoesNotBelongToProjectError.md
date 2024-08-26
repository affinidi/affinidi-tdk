# PrincipalDoesNotBelongToProjectError

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
from affinidi_tdk_iam_client.models.principal_does_not_belong_to_project_error import PrincipalDoesNotBelongToProjectError

# TODO update the JSON string below
json = "{}"
# create an instance of PrincipalDoesNotBelongToProjectError from a JSON string
principal_does_not_belong_to_project_error_instance = PrincipalDoesNotBelongToProjectError.from_json(json)
# print the JSON string representation of the object
print PrincipalDoesNotBelongToProjectError.to_json()

# convert the object into a dict
principal_does_not_belong_to_project_error_dict = principal_does_not_belong_to_project_error_instance.to_dict()
# create an instance of PrincipalDoesNotBelongToProjectError from a dict
principal_does_not_belong_to_project_error_from_dict = PrincipalDoesNotBelongToProjectError.from_dict(principal_does_not_belong_to_project_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
