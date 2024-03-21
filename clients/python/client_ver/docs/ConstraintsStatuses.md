# ConstraintsStatuses

## Properties

| Name          | Type                        | Description | Notes      |
| ------------- | --------------------------- | ----------- | ---------- |
| **active**    | [**PdStatus**](PdStatus.md) |             | [optional] |
| **suspended** | [**PdStatus**](PdStatus.md) |             | [optional] |
| **revoked**   | [**PdStatus**](PdStatus.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_ver.models.constraints_statuses import ConstraintsStatuses

# TODO update the JSON string below
json = "{}"
# create an instance of ConstraintsStatuses from a JSON string
constraints_statuses_instance = ConstraintsStatuses.from_json(json)
# print the JSON string representation of the object
print ConstraintsStatuses.to_json()

# convert the object into a dict
constraints_statuses_dict = constraints_statuses_instance.to_dict()
# create an instance of ConstraintsStatuses from a dict
constraints_statuses_form_dict = constraints_statuses.from_dict(constraints_statuses_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
