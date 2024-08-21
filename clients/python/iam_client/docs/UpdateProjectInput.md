# UpdateProjectInput

## Properties

| Name            | Type    | Description | Notes      |
| --------------- | ------- | ----------- | ---------- |
| **name**        | **str** |             | [optional] |
| **description** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.update_project_input import UpdateProjectInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateProjectInput from a JSON string
update_project_input_instance = UpdateProjectInput.from_json(json)
# print the JSON string representation of the object
print UpdateProjectInput.to_json()

# convert the object into a dict
update_project_input_dict = update_project_input_instance.to_dict()
# create an instance of UpdateProjectInput from a dict
update_project_input_from_dict = UpdateProjectInput.from_dict(update_project_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
