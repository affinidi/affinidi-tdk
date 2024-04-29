# Constraints

## Properties

| Name                  | Type                                              | Description | Notes      |
| --------------------- | ------------------------------------------------- | ----------- | ---------- |
| **limit_disclosure**  | **str**                                           |             | [optional] |
| **statuses**          | [**ConstraintsStatuses**](ConstraintsStatuses.md) |             | [optional] |
| **fields**            | [**List[Field]**](Field.md)                       |             | [optional] |
| **subject_is_issuer** | **str**                                           |             | [optional] |
| **is_holder**         | [**List[HolderSubject]**](HolderSubject.md)       |             | [optional] |
| **same_subject**      | [**List[HolderSubject]**](HolderSubject.md)       |             | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.constraints import Constraints

# TODO update the JSON string below
json = "{}"
# create an instance of Constraints from a JSON string
constraints_instance = Constraints.from_json(json)
# print the JSON string representation of the object
print Constraints.to_json()

# convert the object into a dict
constraints_dict = constraints_instance.to_dict()
# create an instance of Constraints from a dict
constraints_form_dict = constraints.from_dict(constraints_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
