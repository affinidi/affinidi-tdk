# CreateProjectInput

## Properties

| Name            | Type    | Description | Notes      |
| --------------- | ------- | ----------- | ---------- |
| **name**        | **str** |             |
| **description** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.create_project_input import CreateProjectInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateProjectInput from a JSON string
create_project_input_instance = CreateProjectInput.from_json(json)
# print the JSON string representation of the object
print CreateProjectInput.to_json()

# convert the object into a dict
create_project_input_dict = create_project_input_instance.to_dict()
# create an instance of CreateProjectInput from a dict
create_project_input_form_dict = create_project_input.from_dict(create_project_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
